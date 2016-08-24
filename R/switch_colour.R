#' Switch the default colour of all geoms
#'
#' @param new.colour the new default colour
#' @importFrom ggplot2 update_geom_defaults
#' @export
#' @examples
#'   switchColour("black")

switchColour <- function(new.colour = inbo.steun.blauw){
  update_geom_defaults("abline", list(colour = new.colour))
  update_geom_defaults("area", list(fill = new.colour))
  update_geom_defaults("bar", list(fill = new.colour))
  update_geom_defaults(
    "boxplot",
    list(colour = new.colour)
  )
  update_geom_defaults("contour", list(colour = new.colour))
  update_geom_defaults("crossbar", list(colour = new.colour))
  update_geom_defaults("density", list(colour = new.colour))
  update_geom_defaults("density2d", list(colour = new.colour))
  update_geom_defaults("dotplot", list(colour = new.colour))
  update_geom_defaults("errorbar", list(colour = new.colour))
  update_geom_defaults("errorbarh", list(colour = new.colour))
  update_geom_defaults("hex", list(colour = new.colour))
  update_geom_defaults("hline", list(colour = new.colour))
  update_geom_defaults("line", list(colour = new.colour))
  update_geom_defaults("linerange", list(colour = new.colour))
  update_geom_defaults("map", list(colour = new.colour))
  update_geom_defaults("path", list(colour = new.colour))
  update_geom_defaults("point", list(colour = new.colour))
  update_geom_defaults("pointrange", list(colour = new.colour))
  update_geom_defaults("polygon", list(colour = new.colour))
  update_geom_defaults("quantile", list(colour = new.colour))
  update_geom_defaults("raster", list(fill = new.colour))
  update_geom_defaults("rect", list(fill = new.colour))
  update_geom_defaults("ribbon", list(fill = new.colour))
  update_geom_defaults("rug", list(colour = new.colour))
  update_geom_defaults("segment", list(colour = new.colour))
  update_geom_defaults(
    "smooth",
    list(colour = new.colour, fill = new.colour, alpha = 0.1)
  )
  update_geom_defaults("step", list(colour = new.colour))
  update_geom_defaults("text", list(colour = new.colour))
  update_geom_defaults("tile", list(fill = new.colour))
  update_geom_defaults(
    "violin",
    list(outlier.colour = new.colour, colour = new.colour)
  )
  update_geom_defaults("vline", list(colour = new.colour))
}
