#' Example input dataset for module: CHM_T in vigilante.knights.
#'
#' An example input dataset for module: CHM_T in vigilante.knights (the main package), containing the information on 24 transcripts.
#'
#' @format A dataframe with 3 columns:
#' \describe{
#'   \item{ENST}{character, ENSEMBL transcript ID}
#'   \item{ENSG}{character, ENSEMBL gene ID}
#'   \item{Gene}{character, gene name}
#' }
#' @source \url{http://www.ensembl.org/}
"transcript_selection"

#' Example input dataset for module: CHM_T in vigilante.knights.
#'
#' An example input dataset for module: CHM_T in vigilante.knights (the main package), containing the information on 24 transcripts.
#'
#' @format A dataframe with 2 columns:
#' \describe{
#'   \item{Transcript}{character, transcript name}
#'   \item{Common_Name}{character, more commonly used or known name of the corresponding transcript, may contain non-ASCII characters (already converted to UTF-8 encoding)}
#' }
#' @source \url{http://www.ensembl.org/} + manually curated
"transcript_commonName"
