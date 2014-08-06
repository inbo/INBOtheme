#' redefine scale_colour_discrete
#' 
#' Selects the colour from the INBO style guide when the default text colour is INBObrown.
#' 
#' @param ... other arguments passed to discrete_scale
#' @param h range of hues to use, in [0, 360]
#' @param c  chroma (intensity of colour), maximum value varies depending on
#' @param l	luminance (lightness), in [0, 100]
#' @param h.start	hue to start at
#' @param direction	 direction to travel around the colour wheel, 1 = clockwise, -1 = counter-clockwise
#' @param na.value colour for missing values
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @export
#' @importFrom ggplot2 discrete_scale theme_get
#' @importFrom scales hue_pal
scale_colour_discrete <- function(..., h = c(0, 360) + 15, c = 100, l = 65, h.start = 0, direction = 1, na.value = "grey50"){
  if(theme_get()$text$colour == INBObrown){
    discrete_scale(aesthetics = "colour", scale_name = "manual", palette = INBO.colours, na.value = na.value, ...)
  } else if(theme_get()$text$colour == inbo.steun.donkerroos){
    discrete_scale(aesthetics = "colour", scale_name = "manual", palette = inbo.2014.colours, na.value = na.value, ...)
  } else {
    discrete_scale("colour", "hue", hue_pal(h, c, l, h.start, direction), na.value = na.value, ...)
  }
}

#' redefine scale_cfill_discrete
#' 
#' Selects the colour from the INBO style guide when the default text colour is INBObrown.
#' @param ... other arguments passed to discrete_scale
#' @param h range of hues to use, in [0, 360]
#' @param c	chroma (intensity of colour), maximum value varies depending on
#' @param l	luminance (lightness), in [0, 100]
#' @param h.start	hue to start at
#' @param direction	 direction to travel around the colour wheel, 1 = clockwise, -1 = counter-clockwise
#' @param na.value colour for missing values
#' @export
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @importFrom ggplot2 discrete_scale theme_get
#' @importFrom scales hue_pal
scale_fill_discrete <- function(..., h = c(0, 360) + 15, c = 100, l = 65, h.start = 0, direction = 1, na.value = "grey50"){
  if(theme_get()$text$colour == INBObrown){
    discrete_scale(aesthetics = "fill", scale_name = "manual", palette = INBO.colours, na.value = na.value, ...)
  } else if(theme_get()$text$colour == inbo.steun.donkerroos){
    discrete_scale(aesthetics = "fill", scale_name = "manual", palette = inbo.2014.colours, na.value = na.value, ...)
  } else {
    discrete_scale("fill", "hue", hue_pal(h, c, l, h.start, direction), na.value = na.value, ...)
  }
}

#' redefine scale_colour_gradient
#' 
#' Selects the colours from the INBO style guide when the default text colour is INBObrown.
#' @param ... other arguments passed to continuous_scale
#' @param low colour for lowest value
#' @param high colour for highest value
#' @param space method to change the colour gradually
#' @param na.value colour for missing values
#' @param guide type of legend
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
scale_colour_gradient <- function(..., low = INBOblue, high = INBOred, space = "Lab", na.value = "grey50", guide = "colourbar"){
  if(low == INBOblue & high == INBOred){
    if(theme_get()$text$colour == INBObrown){
    } else if(theme_get()$text$colour == inbo.steun.donkerroos){
      low <- inbo.rood
      high <- inbo.lichtblauw
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale("colour", "gradient", seq_gradient_pal(low, high, space), na.value = na.value, guide = guide, ...)
}
#' redefine scale_fill_gradient
#' 
#' Selects the colours from the INBO style guide when the default text colour is INBObrown.
#' @param ... other arguments passed to continuous_scale
#' @param low colour for lowest value
#' @param high colour for highest value
#' @param space method to change the colour gradually
#' @param na.value colour for missing values
#' @param guide type of legend
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
scale_fill_gradient <- function (..., low = INBOblue, high = INBOred, space = "Lab", na.value = "grey50", guide = "colourbar"){
  if(low == INBOblue & high == INBOred){
    if(theme_get()$text$colour == INBObrown){
    } else if(theme_get()$text$colour == inbo.steun.donkerroos){
      low <- inbo.oranje
      high <- inbo.lichtgroen
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale("fill", "gradient", seq_gradient_pal(low, high, space), na.value = na.value, guide = guide, ...)
}
