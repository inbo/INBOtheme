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
    inbo_steun_donkerroos, inbo_steun_blauw, inbo_steun_geelgroen, "#EF972C",
    "#FFCD34", "#C63526", "#019966", "#006635", "#282A72"
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
  palette[seq_len(n)]
}

#' A Colour Palette for NARA reports.
#'
#' @export
#' @inheritParams inbo_palette
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
#' @importFrom assertthat assert_that is.count noNA
nara_palette <- function(n) {
  palette <- c(
    inbo_hoofd, inbo_steun_geelgroen, inbo_steun_blauw, inbo_oranje,
    inbo_steun_donkerroos, inbo_groen, inbo_grijsblauw
  )
  if (missing(n)) {
    n <- length(palette)
  }
  assert_that(is.count(n), noNA(n))
  assert_that(
    n <= length(palette),
    msg = sprintf(
      "`nara_palette()` has only %i colours, you requested %i.
Reduce the number of factor levels.",
      length(palette), n
    )
  )
  palette[seq_len(n)]
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
