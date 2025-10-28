#' RNA to protein
#'
#' @param codons_list The list of codons
#'
#' @returns The protein sequence from given list of codons
#' @export
#'
#' @examples
#' x <- c("UUA", "AUG", "GUA")
#' RNA_to_protein(x)
RNA_to_protein <- function(codons_list){
  protein <- paste0(codons[codons_list], collapse = "")
  return(protein)
}
