#' The theme for NARA reports.
#'
#' Deprecated.
#' Use `theme_inbo()` instead.
#' @inheritParams ggplot2::theme_gray
#' @export
#' @family theme
#' @importFrom assertthat assert_that is.number noNA
#' @importFrom ggplot2 theme element_line element_rect element_text
#' element_blank rel margin
#' @importFrom grid unit
theme_nara <- function(base_size = 12, base_family = "") {
  .Deprecated("theme_inbo")
  theme_inbo(base_size = base_size, base_family = base_family)
}
