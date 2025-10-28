#' aa_barplot
#'
#' @param sequence a sequence of aa's
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @returns aa_plot
#'
#' @export

# Plot amino-acid counts as a bar chart
aa_barplot <- function(sequence){

  # Split sequence into individual characters and get unique residues
  unique_aa <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each amino acid in the sequence
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = sequence, pattern = amino_acid)) |>
    as.data.frame()

  # Name the count column and save amino-acid labels
  colnames(counts) <- c("Counts")
  counts[["AminoAcid"]] <- rownames(counts)

  # Create bar plot of counts (no legend needed)
  aa_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AminoAcid, y = Counts, fill = AminoAcid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the plot
  return(aa_plot)
}
