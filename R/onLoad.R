#' Set theme_inbo2015 as default on loading the package
#' @name onLoad
#' @param libname the name of the library
#' @param pkgname the name of the package
#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname){
  # nocov start
  theme_set(theme_inbo())
  switchColour(new.colour = inbo.steun.blauw)
  # nocov end
}
