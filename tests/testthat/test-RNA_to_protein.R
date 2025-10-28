test_that("Codons are correctly translated", {
  expect_equal(RNA_to_protein(c("UUA", "AUG", "GUA")), "LMV")
})
