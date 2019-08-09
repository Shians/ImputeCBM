test_that(
    "Imputation methods work on SingleCellExperiments", {
    data("sample_sce_data")

    impute_knn_smooth(counts(sample_sce_data))
})