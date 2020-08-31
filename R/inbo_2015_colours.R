#' A colour pallet according the INBO style guide version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
inbo_palette <- function(n) {
  palette <- c(
    inbo_groen, inbo_grijsblauw, inbo_oranje, inbo_lichtblauw, inbo_lichtgroen,
    inbo_steun_donkerroos, inbo_hoofd, inbo_steun_geelgroen, inbo_bruinrood
  )
  if (missing(n)) {
    n <- length(palette)
  }
  if (n > length(palette)) {
    warning(
      "generated palette has duplicated colours. The palette has only ",
      length(palette),
      " unique colours."
    )
  }
  rep(palette, length.out = n)
}
