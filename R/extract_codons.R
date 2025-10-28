#' Codon Extractor
#'
#' @param seq_string The dna or rna sequence for which you want to extract codons
#' @param start the position from which the reading frame should begin
#'
#' @returns returns a vector of codons for the given sequence and reading frame
#' @export
#'
extract_codons <- function(seq_string, start = 1){
  seq_length <- seq_string (name_me2)
  codons <- substring(seq_string,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
