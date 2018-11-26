#' a ggplot2 theme which removes labels, ticks and titles from both axes.
#'
#'@export
#' @family theme
#'@importFrom ggplot2 theme element_blank
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.map <- p + theme_map()

theme_map <- function() {
  theme(
    axis.text = element_blank(),
    axis.line = element_blank(),
    axis.line.x = element_blank(),
    axis.line.y = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    complete = FALSE)
}
