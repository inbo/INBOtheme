#' A colour pallet according the INBO style guide version <= 2014.
#'
#' @export
#' @param n The number of colours
#' @return a vector of n hexadecimal values defining the colours.
#' @family colours
INBO.colours <- function(n) {
  palette <- c(
    INBOdarkgreen, INBOdarkblue, INBOred, INBOgreen, INBOreddishbrown, INBOblue,
    INBOextra, INBObrown
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
