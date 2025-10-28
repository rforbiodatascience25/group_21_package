test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("codons are extracted", {
  expect_equal(extract_codons('CCUACACGU'),
  c("CCU","ACA","CGU"))
})
