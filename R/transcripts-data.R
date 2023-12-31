#' Transcripts for Degradation Models
#'
#' An object storing three lists of transcripts each corresponding to a model used in the degradation experiment.
#' These were determined by Joshua M. Stolz et al, 2022. Here the names "cell_component", "top1500", and "standard" refer to models that were determined to be effective in removing degradation effects.
#' The "standard" model involves taking the union of the top 1000 transcripts associated with degradation from the interaction model and the main effect model.
#' The "top1500" model is the same as the "standard" model except the union of the top 1500 genes associated with degradation is selected.
#' The most effective of our models, "cell_component", involved deconvolution of the degradation matrix to determine the proportion of cell types within our studied tissue.
#' These proportions were then added to our `model.matrix()` and the union of the top 1000 transcripts in the interaction model, the main effect model, and the cell proportions model were used to generate this model of qSVs.
#' @name transcripts
#' @docType data
#' @format A `list()` with character strings containing the transcripts selected by each model.
#' Each string is a GENCODE transcript IDs.
#' @keywords datasets
#' @seealso [select_transcripts]
"transcripts"
