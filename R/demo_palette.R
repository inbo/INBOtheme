#' Demonstrate colours in a palette
#'
#' Create an image with a number of rectangles coloured along the input vector.
#' @export
#' @param colours a vector of colours
#' @importFrom assertthat assert_that
#' @importFrom graphics image par text
#' @importFrom utils combn head
#' @family colours
demo_palette <- function(colours) {
  assert_that(is.character(colours), length(colours) > 1)
  length(colours) |>
    combn(2) |>
    t() |>
    data.frame() -> target
  cols <- ceiling(sqrt(pmax(nrow(target), 2)))
  rows <- ceiling(pmax(nrow(target), 2) / cols)
  colmat <- colmat_sim(
    n = length(colours), cols = cols, rows = rows, target = target
  )
  while (is.null(colmat)) {
    if (cols == rows) {
      cols <- cols + 1
    } else {
      rows <- rows + 1
    }
    colmat <- colmat_sim(
      n = length(colours), cols = cols, rows = rows, target = target
    )
  }
  old_par <- par(no.readonly = TRUE)
  par(mar = rep(0, 4))
  image(colmat, col = colours, axes = FALSE)
  text(
    rep(seq(0, 1, length = nrow(colmat)), ncol(colmat)),
    rep(seq(0, 1, length = ncol(colmat)), each = nrow(colmat)),
    labels = as.vector(colmat)
  )
  par(old_par)
}

#' @importFrom utils head
colmat_sim <- function(n, cols, rows, target) {
  colmats <- replicate(100, {
    seq_len(n) |>
      rep(ceiling(cols * rows / n)) |>
      head(cols * rows) |>
      sample() |>
      matrix(nrow = rows, ncol = cols) -> colmat
    list(
      colmat = colmat, score = colmat_score(colmat = colmat, target = target)
    )
  })
  scores <- unlist(colmats["score", ])
  if (all(scores < 0)) {
    return(NULL)
  }
  colmats <- colmats[1, scores >= 0]
  scores <- scores[scores >= 0]
  colmats[[sample(which(scores == min(scores)), 1)]]
}

#' @importFrom stats aggregate sd
colmat_score <- function(colmat, target) {
  data.frame(
    x = c(
      as.vector(colmat[, -ncol(colmat)]), as.vector(colmat[-nrow(colmat), ])
    ),
    y = c(as.vector(colmat[, -1]), as.vector(colmat[-1, ]))
  ) |>
    apply(1, range) -> pairs
  pairs[, order(pairs[1, ], pairs[2, ])] |>
    t() |>
    data.frame() |>
    cbind(n = 1) |>
    aggregate(x = n ~ X1 + X2, FUN = sum) |>
    merge(target, by = c("X1", "X2"), all = TRUE) -> combs
  self <- combs$X1 == combs$X2
  combs$n[self] <- 100 * combs$n[self]
  ifelse(
    any(is.na(combs$n)), -sum(is.na(combs$n)),
    ifelse(nrow(combs) > 1, sd(combs$n), 0)
  )
}

#' Show a palette on a single row
#'
#' @inheritParams demo_palette
#' @export
#' @importFrom graphics image par text
#' @family colours
show_palette <- function(colours) {
  seq_along(colours) |>
    matrix(ncol = 1) -> colmat
  old_par <- par(no.readonly = TRUE)
  par(mar = rep(0, 4))
  image(colmat, col = colours, axes = FALSE)
  text(
    rep(seq(0, 1, length = nrow(colmat)), ncol(colmat)),
    rep(seq(0, 1, length = ncol(colmat)), each = nrow(colmat)),
    labels = as.vector(colmat)
  )
  par(old_par)
}
