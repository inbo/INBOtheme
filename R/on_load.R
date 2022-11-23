#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname) { # nolint
  # nocov start
  theme_set(theme_inbo())
  switch_colour(new_colour = inbo_steun_blauw)
  # nocov end
}
