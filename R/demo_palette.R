#' Demonstrate colours in a palette
#' @export
#' @param colours a vector of colours
#' @importFrom graphics image par
demo_palette <- function(colours){
  n <- length(colours)
  shift <- seq_len(ceiling(n / 2)) - 1
  shift <- matrix(cumsum(shift), ncol = n, nrow = ceiling(n / 2))
  current <- shift +
    matrix(seq_len(n), ncol = n, nrow = ceiling(n / 2), byrow = TRUE)
  current <- current %% n
  current[current == 0] <- n
  old.par <- par(no.readonly = TRUE)
  par(mar = rep(0, 4))
  image(current, col = colours, axes = FALSE)
  par(old.par)
}
