# Function to get University of Exeter colours

#' Complete list of colours.
#'
#' Use \code{names(uoe_colours())} to return all possible colour names.
#' Use \code{\link{uoe_palettes}} to view palettes.
#'
#' @param cols character vector of colours to return.
#' @return returns the hex codes from the University of Exeter colour palettes by their name.
#'
#' @export
uoe_colours <- function(cols = NULL){

  # all the colours as a list
  uoe_cols <- c(
  `Exeter Night Green` = "#022020",
  `Exeter Dark Green` = "#003c3c",
  `Exeter Deep Green` = "#007d69",
  `Exeter Bright Green` = "#00c896",
  `Exeter Highlight Green` = "#00dca5",
  `Wood Brown` = '#93272c',
  `Tree Brown` = "#b46a55",
  `Rosa Red` = "#e60000",
  `Warm Red` = "#f9423a",
  `Pure Purple` = "#702082",
  `Low Purple` = "#9569be",
  `Coral Orange` = "#fc4c02",
  `Peach` = "#ff7f41",
  `Hay` = "#ffc72c",
  `Sun Yellow` = "#f3d54e",
  `Deep Sea` = "#250e62",
  `Morning Sky` = "#69b3e7",
  `Sunset Pink` = "#e68699",
  `Light Pink` = "#f4c3cc",
  `Heavy Black` = "#000000",
  `Stone Grey` = "#888b8d"
)

  if(is.null(cols)){return(uoe_cols)}

  return(uoe_cols[cols])
}
