#' Demonstrate colours in a palette
#' @export
#' @param colours a vector of colours
#' @importFrom graphics image par text
#' @family colours
demo_palette <- function(colours){
  n <- length(colours)
  shift <- seq_len(ceiling(n / 2)) - 1
  shift <- matrix(cumsum(shift), ncol = n, nrow = ceiling(n / 2))
  current <- shift +
    matrix(rev(seq_len(n)), ncol = n, nrow = ceiling(n / 2), byrow = TRUE)
  current <- current %% n
  current[current == 0] <- n
  old.par <- par(no.readonly = TRUE)
  par(mar = rep(0, 4))
  image(current, col = colours, axes = FALSE)
  text(
    rep(seq(0, 1, length = nrow(current)), ncol(current)),
    rep(seq(0, 1, length = ncol(current)), each = nrow(current)),
    labels = as.vector(current)
  )
  par(old.par)
}
