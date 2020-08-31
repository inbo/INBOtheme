#' Switch the default colour of all geoms
#'
#' @param new_colour The new default colour.
#' @importFrom ggplot2 update_geom_defaults
#' @export
#' @family theme
#' @examples
#'   switchColour("black")

switchColour <- function(new_colour = inbo.steun.blauw) {
  update_geom_defaults("abline", list(colour = new_colour))
  update_geom_defaults("area", list(fill = new_colour))
  update_geom_defaults("bar", list(fill = new_colour))
  update_geom_defaults(
    "boxplot",
    list(colour = new_colour)
  )
  update_geom_defaults("contour", list(colour = new_colour))
  update_geom_defaults("crossbar", list(colour = new_colour))
  update_geom_defaults("density", list(colour = new_colour))
  update_geom_defaults("density2d", list(colour = new_colour))
  update_geom_defaults("dotplot", list(colour = new_colour))
  update_geom_defaults("errorbar", list(colour = new_colour))
  update_geom_defaults("errorbarh", list(colour = new_colour))
  update_geom_defaults("hex", list(colour = new_colour))
  update_geom_defaults("hline", list(colour = new_colour))
  update_geom_defaults("label", list(colour = new_colour))
  update_geom_defaults("line", list(colour = new_colour))
  update_geom_defaults("linerange", list(colour = new_colour))
  update_geom_defaults("map", list(colour = new_colour))
  update_geom_defaults("path", list(colour = new_colour))
  update_geom_defaults("point", list(colour = new_colour))
  update_geom_defaults("pointrange", list(colour = new_colour))
  update_geom_defaults("polygon", list(colour = new_colour))
  update_geom_defaults("quantile", list(colour = new_colour))
  update_geom_defaults("raster", list(fill = new_colour))
  update_geom_defaults("rect", list(fill = new_colour))
  update_geom_defaults("ribbon", list(fill = new_colour))
  update_geom_defaults("rug", list(colour = new_colour))
  update_geom_defaults("segment", list(colour = new_colour))
  update_geom_defaults(
    "smooth",
    list(colour = new_colour, fill = new_colour, alpha = 0.1)
  )
  update_geom_defaults("step", list(colour = new_colour))
  update_geom_defaults("text", list(colour = new_colour))
  update_geom_defaults("tile", list(fill = new_colour))
  update_geom_defaults(
    "violin",
    list(outlier.colour = new_colour, colour = new_colour)
  )
  update_geom_defaults("vline", list(colour = new_colour))
}
