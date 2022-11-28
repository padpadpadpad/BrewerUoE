# List of Color Palettes and the order in which they are printed

#' Complete list of palettes.
#'
#' Use names(uoe_palettes) to return all possible palette names. Current choices are:
#' \code{primary}, \code{secondary}, or \code{combined}.
#' Use \code{\link{uoe_brewer}} to construct palettes.
#'
#' @export
uoe_palettes <- list(
  primary = list(c(`Exeter Dark Green` = "#003c3c",
                   `Exeter Deep Green` = "#007d69",
                   `Exeter Bright Green` = "#00c896",
                   `Exeter Highlight` = "#00dca5",
                   `Exeter Night Green` = "#022020"),
                 c(1, 2, 3, 4, 5)))
