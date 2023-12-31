#' PCs from transcripts
#'
#'  This function returns the pcs from the obtained RangedSummarizedExperiment object of selected transcripts
#'
#'
#' @param rse_tx Ranged Summarizeed Experiment with only trancsripts selected for qsva
#' @param assayname character string specifying the name of the assay desired in rse_tx
#'
#' @return prcomp object generated by taking the pcs of degraded transcripts
#' @export
#' @importFrom stats prcomp
#' @import SummarizedExperiment
#' @examples
#' getPCs(covComb_tx_deg, "tpm")
getPCs <- function(rse_tx, assayname = "tpm") {
    stopifnot(assayname %in% assayNames(rse_tx))
    qsvPCs <- prcomp(t(log2(assays(rse_tx)[[assayname]] + 1)))
}
