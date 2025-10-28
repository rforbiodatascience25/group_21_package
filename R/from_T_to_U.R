#' from T to U
#'
#' @param getting_T This is where we get T nucleotide in DNA sequence.
#'
#' @returns From here we give U nucleotide in RNA sequence.
#' @export
#'
#' @examples
#' from_T_to_U("ATCGGCATTCGAATCG")
#'
from_T_to_U <- function(getting_T){
  giving_U <- gsub("T", "U", getting_T)
  return(giving_U)
}
