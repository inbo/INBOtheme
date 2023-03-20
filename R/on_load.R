#' @importFrom conflicted conflicts_prefer
#' @importFrom ggplot2 theme_set update_geom_defaults
.onLoad <- function(libname, pkgname) { # nolint
  # nocov start
  theme_set(theme_inbo())
  switch_colour(new_colour = inbo_steun_blauw)
  conflicts_prefer(
    INBOtheme::scale_color_discrete, INBOtheme::scale_color_gradient,
    INBOtheme::scale_color_gradient2, INBOtheme::scale_color_ordinal,
    INBOtheme::scale_color_viridis_d, INBOtheme::scale_colour_discrete,
    INBOtheme::scale_colour_gradient, INBOtheme::scale_colour_gradient2,
    INBOtheme::scale_colour_ordinal, INBOtheme::scale_colour_viridis_d,
    INBOtheme::scale_fill_discrete, INBOtheme::scale_fill_gradient,
    INBOtheme::scale_fill_gradient2, INBOtheme::scale_fill_ordinal,
    INBOtheme::scale_fill_viridis_d, .quiet = TRUE
  )
  # nocov end
}
