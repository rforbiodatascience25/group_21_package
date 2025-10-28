#' Generate DNA sequence
#'
#' Generates a sequence of given length of bases A,T,G,C
#'
#' @param length integer, corresponds to the desired length of the sequence
#'
#' @returns string representing DNA sequence
#'
#' @examples
#' generate_dna(10)
#' generate_dna(50)
#'
#' @export
generate_dna <- function(length){
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(bases, collapse = "")
  return(sequence)
}
