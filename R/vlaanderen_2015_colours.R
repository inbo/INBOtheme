#' A colour pallet according the Vlaanderen style guide version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx
#' @return a vector of n hexadecimal values defining the colours.
#' @references http://webstijlgids.vlaanderen.be/element/kleurgebruik
#' @family colours
vlaanderen_palette <- function(n) {
  palette <- c(
    vl_black, vl_grey4, vl_lightgreen, vl_lightbrown, vl_lightblue, vl_lightred,
    vl_darkgreen, vl_darkbrown, vl_darkblue, vl_darkred
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
