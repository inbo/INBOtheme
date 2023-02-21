#' Calculate a distance matrix between colours
#'
#' @inheritParams demo_palette
#' @param method passed to `colordistance::getColorDistanceMatrix()`
#' @export
#' @importFrom grDevices col2rgb
colour_distance <- function(colours, method = "emd") {
  requireNamespace("colordistance")
  col2rgb(colours) |>
    apply(2, colour_list, simplify = FALSE) |>
    colordistance::getColorDistanceMatrix(plotting = FALSE, method = method)
}

colour_list <- function(colours) {
  t(colours) |>
    as.data.frame() |>
    cbind(Pct = 1)
}

#' Calculate a distance matrix between colours for colour blind people
#' @param deutan correct for deuteranomaly (red - green colour blindness).
#' Defaults to `TRUE`.
#' @param protan correct for protanopia (red - green colour blindness).
#' Defaults to `FALSE`.
#' @param tritan correct for tritanopia (blue - yellow colour blindness).
#' Defaults to `FALSE`.
#' @param gray correct for monochromacy (unable to distinguish colours).
#' Defaults to `FALSE`.
#' @param fun Function to aggregate different colour distance matrices
#' @inheritParams demo_palette
#' @inheritParams colour_distance
#' @export
#' @importFrom colorspace deutan protan tritan desaturate
#' @importFrom stats setNames
colour_blind_distance <- function(
  colours, deutan = TRUE, protan = FALSE, tritan = FALSE, gray = FALSE,
  fun = min, method = "emd"
) {
  colour_distance_matrix <- array(
    NA,
    dim = c(
      length(colours), length(colours), 1 + deutan + protan + tritan + gray
    )
  )
  colour_distance_matrix[, , 1] <- colour_distance(colours)
  if (deutan) {
    deutan(colours) |>
      colour_distance() -> colour_distance_matrix[, , 2]
  }
  if (protan) {
    protan(colours) |>
      colour_distance() -> colour_distance_matrix[, , 2 + deutan]
  }
  if (tritan) {
    tritan(colours) |>
      colour_distance() -> colour_distance_matrix[, , 2 + deutan + protan]
  }
  if (gray) {
    desaturate(colours) |>
      colour_distance() -> colour_distance_matrix[
        , , 2 + deutan + protan + tritan
      ]
  }
  apply(colour_distance_matrix, 1:2, fun) |>
    `colnames<-`(names(colours)) |>
    `rownames<-`(names(colours))
}

#' Order variables to maximise contrasts
#'
#' Start with variable which has the largest distance between all other
#' variables.
#' Then add the variable with the largest distance to the already selected
#' variables.
#' @param distance a square distance matrix
#' @param selected optional vector of preselected variables
#' @return a vector variable names
#' @export
#' @importFrom assertthat assert_that
optimal_order <- function(distance, selected = character(0)) {
  assert_that(inherits(distance, "matrix"))
  assert_that(ncol(distance) == nrow(distance), ncol(distance) > 0)
  assert_that(length(selected) < ncol(distance))
  if (is.null(colnames(distance))) {
    distance |>
      `colnames<-`(seq_len(ncol(distance))) |>
      `rownames<-`(seq_len(nrow(distance))) -> distance
  }
  assert_that(all.equal(colnames(distance), rownames(distance)))
  assert_that(
    all(selected %in% colnames(distance)),
    msg = "values in selected must match colnames of distance"
  )
  if (length(selected) == 0) {
    apply(distance, 1, min, na.rm = TRUE) |>
      which.max() |>
      names() -> selected
  }
  while (length(selected) < ncol(distance)) {
    distance[selected, !colnames(distance) %in% selected, drop = FALSE] |>
      apply(2, min) |>
      which.max() |>
      names() -> extra
    selected <- c(selected, extra)
  }
  selected
}
