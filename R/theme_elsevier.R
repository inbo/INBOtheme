#' Theme in compliance with the style guide of Elsevier journals
#'
#' This theme is based on http://cdn.elsevier.com/assets/pdf_file/0010/109963/Artwork.pdf
#'
#' @param base_size base fontsize
#' @param base_family base fonttype
#' @export
#' @importFrom ggplot2 theme element_line element_rect element_text element_blank rel
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.elsevier <- p + theme_elsevier()

theme_elsevier <- function(base_size = 7, base_family = "") {
  half_line <- base_size / 2
  theme(
    line = element_line(
      colour = "black",
      size = 0.5,
      linetype = 1,
      lineend = "butt"
    ),
    rect = element_rect(
      fill = "white",
      colour = "black",
      size = 0.5,
      linetype = 1
    ),
    text = element_text(
      family = base_family,
      face = "plain",
      colour = "black",
      size = base_size,
      hjust = 0.5,
      vjust = 0.5,
      angle = 0,
      lineheight = 0.9,
      margin = margin(),
      debug = FALSE
    ),

    axis.line = element_blank(),
    axis.text =  element_text(size = rel(0.8), colour = "black"),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2),
      vjust = 1
    ),
    axis.text.y = element_text(
      margin = margin(r = 0.8 * half_line / 2),
      hjust = 1
    ),
    axis.ticks = element_line(colour = "black"),
    axis.ticks.length = unit(0.15, "cm"),
    axis.title.x = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      colour = "black"
    ),
    axis.title.y = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      angle = 90,
      colour = "black"
    ),

    legend.background = element_rect(colour = NA),
    legend.box = NULL,
    legend.direction = NULL,
    legend.justification = "center",
    legend.key = element_rect(colour = "grey80"),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.margin = unit(-5, "mm"),
    legend.position = "right",
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(
      size = rel(0.8),
      face = "bold",
      hjust = 0,
      colour = "black"
    ),
    legend.title.align = NULL,

    panel.background = element_rect(fill = "white", colour = NA),
    panel.border = element_rect(fill = NA, colour = "grey50"),
    panel.grid.major = element_line(colour = "grey90", size = 0.2),
    panel.grid.minor = element_line(colour = "grey98", size = 0.5),
    panel.margin = unit(half_line, "pt"),
    panel.margin.x = NULL,
    panel.margin.y = NULL,
    panel.ontop = FALSE,

    plot.background = element_rect(colour = "white"),
    plot.margin = margin(half_line, half_line, half_line, half_line),
    plot.title = element_text(size = rel(1.2)),

    strip.background = element_rect(fill = "grey80", colour = "grey50"),
    strip.text = element_text(size = rel(0.8), colour = "black"),
    strip.text.x = element_text(
      margin = margin(t = half_line, b = half_line),
      colour = "black"
    ),
    strip.text.y = element_text(
      margin = margin(l = half_line, r = half_line),
      angle = -90, colour = "black"
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),

    complete = TRUE)
}
