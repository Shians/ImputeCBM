#' Impute using DrImpute
#'
#' @param sce the SingleCellExperiment object
#' @return matrix of imputed expression values
#' @export
impute_drimpute <- function(sce) {
    expr_processed <- DrImpute::preprocessSC(logcounts(sce))
    logcounts(sce) <- DrImpute::DrImpute(expr_processed)

    sce
}
