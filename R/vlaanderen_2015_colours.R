#' A colour pallet according the Vlaanderen style guide version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx
#' @return a vector of n hexadecimal values defining the colours.
#' @references http://webstijlgids.vlaanderen.be/element/kleurgebruik
vlaanderen.2015.colours <- function(n) {
  palette <- c(
    vl.black, vl.grey4, vl.lightgreen, vl.lightbrown, vl.lightblue, vl.lightred,
    vl.darkgreen, vl.darkbrown, vl.darkblue, vl.darkred
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
