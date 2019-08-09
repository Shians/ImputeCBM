#' Impute using knn smooth
#'
#' @param sce the SingleCellExperiment object
#' @param k the number of nearest neighbours to use for smoothing
#' @return matrix of imputed expression values
#' @export
impute_knn_smooth <- function(sce, k = ceiling(ncol(sce) / 20)) {
    source("https://raw.githubusercontent.com/yanailab/knn-smoothing/master/knn_smooth.R")
    logcounts(sce) <- knn_smoothing(mat = logcounts(sce), k = k)

    sce
}
