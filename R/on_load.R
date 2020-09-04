#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname) { # nolint
  # nocov start
  theme_set(theme_inbo())
  switch_colour(new_colour = inbo_steun_blauw)
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
 * We renamed the individual colors to match the INBO coding style guide which
   requires snake_case (underscore instead of dots for separation).
   `inbo.hoofd` became `inbo_hoofd`.

 If you need an older version of INBOtheme, install it using the code below

 remotes::install_github(\"inbo/INBOtheme@v0.5.6\")
"
  )
}
