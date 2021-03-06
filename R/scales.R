#' redefine scale_colour_discrete
#' @template scales_temp
#' @inheritParams ggplot2::scale_colour_discrete
#' @param type Ignored argument.
#' Only present to match the arguments of ggplot2::scale_fill_discrete
#' @export
#' @importFrom ggplot2 discrete_scale scale_colour_hue
#' @importFrom scales hue_pal
#' @family scales
scale_colour_discrete <- function(..., type) {
  palette <- switch(
    get_current_theme(),
    inbo = inbo_palette,
    vlaanderen = vlaanderen_palette,
    nara = nara_palette,
    NULL
  )
  if (is.null(palette)) {
    return(scale_colour_hue(...))
  }
  discrete_scale(
    aesthetics = "colour", scale_name = "qualitative", palette = palette, ...
  )
}

#' @export
#' @rdname scale_colour_discrete
scale_color_discrete <- scale_colour_discrete

#' redefine scale_fill_discrete
#'
#' @template scales_temp
#' @inheritParams ggplot2::scale_fill_discrete
#' @inheritParams scale_colour_discrete
#' @export
#' @importFrom ggplot2 discrete_scale scale_fill_hue
#' @importFrom scales hue_pal
#' @family scales
scale_fill_discrete <- function(..., type) {
  palette <- switch(
    get_current_theme(),
    inbo = inbo_palette,
    vlaanderen = vlaanderen_palette,
    nara = nara_palette,
    NULL
  )
  if (is.null(palette)) {
    return(scale_fill_hue(...))
  }
  discrete_scale(
    aesthetics = "fill", scale_name = "qualitative", palette = palette, ...
  )
}

#' redefine scale_colour_gradient
#'
#' @template scales_temp
#' @param low Colour for the low end of the gradient
#' @param high Colour for the high end of the gradient
#' @inheritParams ggplot2::scale_colour_gradient
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
#' @family scales
scale_colour_gradient <- function(
  ...,
  low = inbo_rood,
  high = inbo_lichtblauw,
  space = "Lab",
  na.value = "grey50", # nolint
  guide = "colourbar",
  aesthetics = "colour"
) {
  if (low == inbo_rood && high == inbo_lichtblauw) {
    low <- pick_colour(
      c(
        inbo = inbo_rood,
        vlaanderen = vl_lightred,
        nara = inbo_rood,
        unknown = "#132B43"
      )
    )
    high <- pick_colour(
      c(
        inbo = inbo_lichtblauw,
        vlaanderen = vl_lightblue,
        nara = inbo_lichtblauw,
        unknown = "#56B1F7"
      )
    )
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

#' @export
#' @rdname scale_colour_gradient
scale_color_gradient <- scale_colour_gradient

#' redefine scale_fill_gradient
#'
#' @template scales_temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_gradient
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales seq_gradient_pal
#' @family scales
scale_fill_gradient <- function(
  ...,
  low = inbo_rood,
  high = inbo_lichtblauw,
  space = "Lab",
  na.value = "grey50", # nolint
  guide = "colourbar",
  aesthetics = "fill"
) {
  assert_that(is.string(low), is.string(high))
  if (low == inbo_rood && high == inbo_lichtblauw) {
    low <- pick_colour(
      c(
        inbo = inbo_rood,
        vlaanderen = vl_lightred,
        nara = inbo_rood,
        unknown = "#132B43"
      )
    )
    high <- pick_colour(
      c(
        inbo = inbo_lichtblauw,
        vlaanderen = vl_lightblue,
        nara = inbo_lichtblauw,
        unknown = "#56B1F7")
    )
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
#' @template scales_temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_colour_gradient2
#' @export
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales div_gradient_pal
#' @family scales
scale_colour_gradient2 <- function(
  ...,
  low = inbo_rood,
  high = inbo_steun_blauw,
  mid = inbo_lichtgrijs,
  midpoint = 0,
  space = "Lab",
  na.value = "grey50", # nolint
  guide = "colourbar",
  aesthetics = "colour"
) {
  assert_that(is.string(low), is.string(high))
  if (low == inbo_rood && high == inbo_steun_blauw) {
    low <- pick_colour(
      c(
        inbo = inbo_rood,
        vlaanderen = vl_lightred,
        nara = inbo_rood,
        unknown = "#132B43"
      )
    )
    high <- pick_colour(
      c(
        inbo = inbo_steun_blauw,
        vlaanderen = vl_lightblue,
        nara = inbo_steun_blauw,
        unknown = "#56B1F7"
      )
    )
    mid <- pick_colour(
      c(
        inbo = inbo_lichtgrijs,
        vlaanderen = vl_grey1,
        nara = inbo_lichtgrijs,
        unknown = "#FFFFFF"
      )
    )
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

#' @export
#' @rdname scale_colour_gradient2
scale_color_gradient2 <- scale_colour_gradient2

#' redefine scale_fill_gradient2
#'
#' @template scales_temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_gradient2
#' @export
#' @importFrom assertthat assert_that is.string
#' @importFrom ggplot2 continuous_scale theme_get
#' @importFrom scales div_gradient_pal
#' @family scales
scale_fill_gradient2 <- function(
  ...,
  low = inbo_rood,
  high = inbo_steun_blauw,
  mid = inbo_lichtgrijs,
  midpoint = 0,
  space = "Lab",
  na.value = "grey50", # nolint
  guide = "colourbar",
  aesthetics = "fill"
) {
  assert_that(is.string(low), is.string(high))
  if (low == inbo_rood && high == inbo_steun_blauw) {
    low <- pick_colour(
      c(
        inbo = inbo_rood,
        vlaanderen = vl_lightred,
        nara = inbo_rood,
        unknown = "#132B43"
      )
    )
    high <- pick_colour(
      c(
        inbo = inbo_steun_blauw,
        vlaanderen = vl_lightblue,
        nara = inbo_steun_blauw,
        unknown = "#56B1F7"
      )
    )
    mid <- pick_colour(
      c(
        inbo = inbo_lichtgrijs,
        vlaanderen = vl_grey1,
        nara = inbo_lichtgrijs,
        unknown = "#FFFFFF"
      )
    )
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

#' redefine scale_colour_viridis_d
#'
#' @template scales_temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_viridis_d
#' @export
#' @importFrom ggplot2 discrete_scale
#' @family scales
#' @rdname scale_viridis
scale_colour_viridis_d <- function(
  ..., alpha = 1, begin = 0, end = 1, direction = 1, option = "D",
  aesthetics = "colour"
) {
  discrete_scale(
    aesthetics, scale_name = "traffic", palette = traffic_palette, ...
  )
}

#' @export
#' @rdname scale_viridis
#' @usage NULL
scale_color_viridis_d <- scale_colour_viridis_d

#' @export
#' @rdname scale_viridis
#' @usage NULL
scale_colour_ordinal <- scale_colour_viridis_d

#' @export
#' @rdname scale_viridis
#' @usage NULL
scale_color_ordinal <- scale_colour_ordinal

#' redefine scale_fill_viridis_d
#'
#' @template scales_temp
#' @inheritParams scale_colour_gradient
#' @inheritParams ggplot2::scale_fill_viridis_d
#' @rdname scale_viridis
#' @export
#' @importFrom ggplot2 discrete_scale
#' @family scales
scale_fill_viridis_d <- function(
  ..., alpha = 1, begin = 0, end = 1, direction = 1, option = "D",
  aesthetics = "fill"
) {
  discrete_scale(
    aesthetics, scale_name = "traffic", palette = traffic_palette, ...
  )
}

#' @export
#' @rdname scale_viridis
#' @usage NULL
scale_fill_ordinal <- scale_fill_viridis_d

#' @importFrom scales rescale_mid
mid_rescaler <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    rescale_mid(x, to, from, mid)
  }
}

#' @importFrom ggplot2 theme_get
get_current_theme <- function() {
  current_theme <- attr(theme_get()[["plot.background"]][["fill"]], "INBOtheme")
  ifelse(is.null(current_theme), "unknown", current_theme)
}

pick_colour <- function(colours) {
  colours[get_current_theme()]
}
