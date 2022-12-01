#' A colour pallet according the Flanders style guide version >= 2015.
#'
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx
#' @return a vector of n hexadecimal values defining the colours.
#' @references http://webstijlgids.vlaanderen.be/element/kleurgebruik
#' @family colours
#' @importFrom assertthat assert_that is.count noNA
vlaanderen_palette <- function(n) {
  palette <- c(
    vl_lightblue, vl_lightgreen, vl_darkblue, vl_darkbrown, vl_grey4,
    vl_lightbrown, vl_lightred, vl_black, vl_darkred, vl_darkgreen
  )
  if (missing(n)) {
    n <- length(palette)
  }
  assert_that(is.count(n), noNA(n))
  assert_that(
    n <= length(palette),
    msg = sprintf(
      "`vlaanderen_palette()` has only %i colours, you requested %i.
Reduce the number of factor levels.",
      length(palette), n
    )
  )
  palette[seq_len(n)]
}
