test_that("returns sequence of correct length", {
  sequence <- generate_dna(10)
  expect_type(sequence, "character")
  expect_equal(nchar(seq), 10)
})

test_that("produces random sequences, different each time", {
  seq1 <- generate_dna(20)
  seq2 <- generate_dna(20)
  expect_false(identical(seq1, seq2))
})
