test_that("from_T_to_U replaces T with U", {
  expect_equal(from_T_to_U("ATCGGCATTCGAATCG"), "AUCGGCAUUCGAAUCG")
})
