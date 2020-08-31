#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname) { # nolint
  # nocov start
  theme_set(theme_inbo())
  switchColour(new_colour = inbo.steun.blauw)
  # nocov end
}

.onAttach <- function(libname, pkgname) { # nolint
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
