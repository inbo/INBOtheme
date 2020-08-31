#' Set theme_inbo2015 as default on loading the package
#' @name onLoad
#' @param libname the name of the library
#' @param pkgname the name of the package
#' @importFrom ggplot2 theme_set update_geom_defaults
#' @family utils
.onLoad <- function(libname, pkgname){
  # nocov start
  theme_set(theme_inbo())
  switchColour(new.colour = inbo.steun.blauw)
  # nocov end
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "
################################################################################
#                                                                              #
#          WARNING: important changes in INBOtheme version 0.5.7.              #
#                                                                              #
################################################################################

 * We removed items relating to the oldest style. These items contained
   `INBO` in their name.

 If you need an older version of INBOtheme, install it using the code below

 remotes::install_github(\"inbo/INBOtheme@v0.5.6\")
"
  )
}
