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
    inbo_groen, inbo_grijsblauw, inbo_oranje, inbo_lichtblauw, inbo_lichtgroen,
    inbo_steun_donkerroos, inbo_hoofd, inbo_steun_geelgroen, inbo_bruinrood
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
