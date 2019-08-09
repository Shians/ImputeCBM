#' @export
all_impute_methods <- function() {
    list(
        "basics" = impute_basics,
        "drimpute" = impute_drimpute,
        "knn_smooth" = impute_knn_smooth,
        "saver" = impute_saver
    )
}
