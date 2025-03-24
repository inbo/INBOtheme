#' A Colour Palette According the INBO Style Guide Version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
#' @importFrom assertthat assert_that is.count noNA
inbo_palette <- function(n) {
  palette <- c(
    inbo_donkerblauw, inbo_oranje, inbo_felrood, inbo_groen, inbo_steun_blauw,
    inbo_geel, inbo_steun_donkerroos, inbo_donkergroen, inbo_steun_geelgroen
  )
  if (missing(n)) {
    n <- length(palette)
  }
  assert_that(is.count(n), noNA(n))
  assert_that(
    n <= length(palette),
    msg = sprintf(
      "`inbo_palette()` has only %i colours, you requested %i.
Reduce the number of factor levels.",
      length(palette), n
    )
  )
  if (interactive() && n > 4) {
    message("using more than 4 colours might make the plot hard to read")
  }
  palette[seq_len(n)]
}

#' A Colour Palette for NARA reports.
#'
#' Deprecated.
#' Use `inbo_palette()` instead.
#' @export
#' @inheritParams inbo_palette
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
#' @importFrom assertthat assert_that is.count noNA
nara_palette <- function(n) {
  .Deprecated("inbo_palette")
  inbo_palette(n)
}

#' A Colour Palette Ranging From a Dark Red over Medium Orange to Light Green.
#'
#' @export
#' @inheritParams inbo_palette
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
#' @importFrom assertthat assert_that is.count noNA
#' @importFrom grDevices hcl
traffic_palette <- function(n) {
  if (missing(n)) {
    n <- 3
  }
  assert_that(is.count(n), noNA(n), n >= 3)
  dark_red <- c(12, 75, 20)
  mid_orange <- c(31, 80, 50)
  light_green <- c(127, 93, 80)
  light_range <- seq(dark_red[3], light_green[3], length = n)
  red_orange <- light_range <= mid_orange[3]
  prop_red <- (mid_orange[3] - light_range[red_orange]) /
    (mid_orange[3] - dark_red[3])
  prop_green <- (light_range[!red_orange] - mid_orange[3]) /
    (light_green[3] - mid_orange[3])
  palette <- cbind(
    outer(dark_red, prop_red) + outer(mid_orange, 1 - prop_red),
    outer(light_green, prop_green) + outer(mid_orange, 1 - prop_green)
  )
  hcl(palette[1, ], palette[2, ], palette[3, ])
}

#' Palette for ordinal variables
#'
#' The colour ramps depends on the active `ggplot2` theme.
#' @inheritParams inbo_palette
#' @export
#' @importFrom assertthat assert_that
ordinal_palette <- function(n) {
  if (missing(n)) {
    n <- 3
  }
  assert_that(is.count(n), noNA(n), n >= 2)
  dark <- switch(
    get_current_theme(), inbo = c(250, 52, 40), vlaanderen = c(231, 26, 28),
    elsevier = c(294, 37, 15), c(294, 37, 15)
  )
  light <- switch(
    get_current_theme(), inbo = c(176, 17, 86), vlaanderen = c(233, 72, 68),
    elsevier = c(77, 98, 91), c(77, 98, 91)
  )
  hcl(
    h = seq(dark[1], light[1], length = n),
    c = seq(dark[2], light[2], length = n),
    l = seq(dark[3], light[3], length = n)
  )
}
