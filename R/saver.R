#' Impute using SAVER
#'
#' @param sce the SingleCellExperiment object
#' @return matrix of imputed expression values
#' @export
impute_saver <- function(sce) {
    logcounts(sce) <- SAVER::saver(
        logcounts(sce),
        ncores = 1,
        size.factor = 1,
        estimates.only = TRUE
    )

    sce
}