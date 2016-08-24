#' A colour pallet according the INBO style guide version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @return a vector of n hexadecimal values defining the colours.
inbo.2015.colours <- function(n) {
  palette <- c(
    inbo.groen, inbo.grijsblauw, inbo.oranje, inbo.lichtblauw, inbo.lichtgroen,
    inbo.steun.donkerroos, inbo.hoofd, inbo.steun.geelgroen, inbo.bruinrood
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
