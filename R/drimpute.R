#' Impute using DrImpute
#'
#' @param sce the SingleCellExperiment object
#' @return matrix of imputed expression values
#' @export
impute_drimpute <- function(sce) {
    expr_processed <- DrImpute::preprocessSC(logcounts(sce))
    sce <- sce[rownames(expr_processed), colnames(expr_processed)]
    imputes_counts <- DrImpute::DrImpute(expr_processed)
    logcounts(sce) <- imputes_counts

    sce
}
