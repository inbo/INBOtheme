#' redefine scale_colour_discrete
#' @template scales-temp
#' @inheritParams ggplot2::scale_colour_discrete
#' @export
#' @importFrom ggplot2 discrete_scale theme_get
#' @importFrom scales hue_pal
#' @family scales
scale_colour_discrete <- function(
  ...,
  h = c(0, 360) + 15,
  c = 100,
  l = 65,
  h.start = 0,
  direction = 1,
  na.value = "grey50",
  aesthetics = "colour"
){
  if (theme_get()$text$colour == inbo.steun.donkerroos) {
    discrete_scale(
      aesthetics = aesthetics,
      scale_name = "manual",
      palette = inbo.2015.colours,
      na.value = na.value,
      ...
    )
  } else if (theme_get()$text$colour == vl.black) {
    discrete_scale(
      aesthetics = aesthetics,
      scale_name = "manual",
      palette = vlaanderen.2015.colours,
      na.value = na.value,
      ...
    )
  } else {
    discrete_scale(
      aesthetics,
      "hue",
      hue_pal(h, c, l, h.start, direction),
      na.value = na.value,
      ...
    )
  }
}

#' redefine scale_fill_discrete
#'
#' @template scales-temp
#' @inheritParams ggplot2::scale_fill_discrete
#' @export
#' @importFrom ggplot2 discrete_scale theme_get
#' @importFrom scales hue_pal
#' @family scales
scale_fill_discrete <- function(
  ...,
  h = c(0, 360) + 15,
  c = 100,
  l = 65,
  h.start = 0,
  direction = 1,
  na.value = "grey50",
  aesthetics = "fill"
){
  if (theme_get()$text$colour == inbo.steun.donkerroos) {
    discrete_scale(
      aesthetics = aesthetics,
      scale_name = "manual",
      palette = inbo.2015.colours,
      na.value = na.value,
      ...
    )
  } else if (theme_get()$text$colour == vl.black) {
    discrete_scale(
      aesthetics = aesthetics,
      scale_name = "manual",
      palette = vlaanderen.2015.colours,
      na.value = na.value,
      ...
    )
  } else {
    discrete_scale(
      aesthetics,
      "hue",
      hue_pal(h, c, l, h.start, direction),
      na.value = na.value,
      ...
    )
  }
}

#' redefine scale_colour_gradient
#'
#' @template scales-temp
#' @param low Colour for the low end of the gradient
#' @param high Colour for the high end of the gradient
#' @inheritParams ggplot2::scale_colour_gradient
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
#' @family scales
scale_colour_gradient <- function(
  ...,
  low = INBOblue,
  high = INBOred,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "colour"
){
  if (low == INBOblue & high == INBOred) {
    if (theme_get()$text$colour == inbo.steun.donkerroos) {
      low <- inbo.lichtblauw
      high <- inbo.rood
    } else if (theme_get()$text$colour == vl.black) {
      low <- vl.lightblue
      high <- vl.lightred
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale(
    aesthetics,
    "gradient",
    seq_gradient_pal(low, high, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' redefine scale_fill_gradient
#'
#' @template scales-temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_gradient
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
#' @family scales
scale_fill_gradient <- function(
  ...,
  low = INBOblue,
  high = INBOred,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "fill"
){
  if (low == INBOblue & high == INBOred) {
    if (theme_get()$text$colour == inbo.steun.donkerroos) {
      low <- inbo.lichtblauw
      high <- inbo.rood
    } else if (theme_get()$text$colour == vl.black) {
      low <- vl.lightblue
      high <- vl.lightred
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale(
    aesthetics,
    "gradient",
    seq_gradient_pal(low, high, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' redefine scale_colour_gradient2
#'
#' @template scales-temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_colour_gradient2
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales div_gradient_pal
#' @family scales
scale_colour_gradient2 <- function(
  ...,
  low = INBOblue,
  high = INBOred,
  mid = "white",
  midpoint = 0,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "colour"
){
  if (low == INBOblue & high == INBOred) {
    if (theme_get()$text$colour == inbo.steun.donkerroos) {
      low <- inbo.rood
      high <- inbo.steun.blauw
      mid <- inbo.lichtgrijs
    } else if (theme_get()$text$colour == vl.black) {
      low <- vl.lightred
      high <- vl.lightblue
      mid <- vl.grey1
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale(
    aesthetics,
    "gradient",
    div_gradient_pal(low, mid, high, space),
    na.value = na.value,
    guide = guide,
    ...,
    rescaler = mid_rescaler(mid = midpoint)
  )
}

#' redefine scale_fill_gradient2
#'
#' @template scales-temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_gradient2
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales div_gradient_pal
#' @family scales
scale_fill_gradient2 <- function(
  ...,
  low = INBOblue,
  high = INBOred,
  mid = "white",
  midpoint = 0,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "fill"
){
  if (low == INBOblue & high == INBOred) {
    if (theme_get()$text$colour == inbo.steun.donkerroos) {
      low <- inbo.rood
      high <- inbo.steun.blauw
      mid <- inbo.lichtgrijs
    } else if (theme_get()$text$colour == vl.black) {
      low <- vl.lightred
      high <- vl.lightblue
      mid <- vl.grey1
    } else {
      low <- "#132B43"
      high <- "#56B1F7"
    }
  }
  continuous_scale(
    aesthetics,
    "gradient",
    div_gradient_pal(low, mid, high, space),
    na.value = na.value,
    guide = guide,
    ...,
    rescaler = mid_rescaler(mid = midpoint)
  )
}

#' @importFrom scales rescale_mid
mid_rescaler <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    rescale_mid(x, to, from, mid)
  }
}
