#' Set theme_INBO as default on loading the package
#' @name onLoad
#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname){
  theme_set(theme_inbo2014())
  switchColour(new.colour = inbo.steun.geelgroen)
}
