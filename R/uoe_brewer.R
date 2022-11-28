# Function for generating palettes

#' University of Exeter palette generator
#'
#' Color palettes for the University of Exeter 2022 branding. Code taken from MetBrewer.
#'
#' @param palette Name of Palette.
#' @param n Number of desired colours. If number of requested colours is beyond the scope of the palette, colours are automatically interpolated. If n is not provided, the length of the palette is used.
#' @param type Either "continuous" or "discrete". Use continuous if you want to automatically interpolate between colours.
#' @param direction Sets order of colours. Default palette is 1. If direction is -1, palette colour order is reversed
#' @param override_order Colours are picked from palette to maximise readability and aesthetics. This means that colours are not always selected in sequential order from the full palette. If override.order is set to TRUE, colours are selected in sequential order from the full palette instead. Default is FALSE.
#' @return A vector of colours.
#' @export
uoe_brewer <- function(palette_name, n, type = c("discrete", "continuous"), direction = c(1, -1), override_order=FALSE) {

  `%notin%` <- Negate(`%in%`)

  palette <- uoe_palettes[[palette_name]]

  if (is.null(palette)|is.numeric(palette_name)){
    stop("Palette does not exist.")
  }

  if (missing(n)) {
    n <- length(palette[[1]])
  }

  if (missing(direction)) {
    direction <- 1
  }

  if (direction %notin% c(1, -1)){
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (missing(type)) {
    if(n > length(palette[[1]])){type <- "continuous"}
    else{type <- "discrete"}
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(palette[[1]])) {
    stop("Number of requested colors greater than what discrete palette can offer, \n use continuous instead.")
  }

  continuous <-  if(direction==1){grDevices::colorRampPalette(palette[[1]])(n)
  }else{
    grDevices::colorRampPalette(rev(palette[[1]]))(n)}

  discrete <- if(direction==1 & override_order==FALSE){
    palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)]
  }else if(direction==-1 & override_order==FALSE){
    rev(palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)])
  } else if(direction==1 & override_order==TRUE){
    palette[[1]][1:n]
  } else{
    rev(palette[[1]])[1:n]
  }

  out <- switch(type,
                continuous = continuous,
                discrete = discrete
  )
  structure(out, class = "palette", name = palette_name)

}
