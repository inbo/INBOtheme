#' The theme in compliance with the INBO style guide, version <= 2014.
#'
#' @param base_size Base fontsize
#' @param base_family Base fonttype
#' @export
#' @importFrom ggplot2 theme element_line element_rect element_text element_blank rel margin
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.inbo <- p + theme_INBO()
theme_INBO <- function(base_size = 12, base_family = "") {
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
      colour = INBObrown,
      size = base_size,
      hjust = 0.5,
      vjust = 0.5,
      angle = 0,
      lineheight = 0.9,
      margin = margin(),
      debug = FALSE
    ),

    axis.line = element_blank(),
    axis.text = element_text(size = rel(0.8), colour = INBOreddishbrown),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2),
      vjust = 1,
      colour = INBOreddishbrown
    ),
    axis.text.y = element_text(
      margin = margin(t = 0.8 * half_line / 2),
      hjust = 1,
      colour = INBOreddishbrown
    ),
    axis.ticks = element_line(colour = INBOreddishbrown),
    axis.ticks.length = unit(0.15, "cm"),
    axis.title.x = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      colour = INBObrown
    ),
    axis.title.y = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      angle = 90,
      colour = INBObrown
    ),

    legend.background = element_rect(colour = NA),
    legend.box = NULL,
    legend.direction = NULL,
    legend.justification = "center",
    legend.key = element_rect(
      fill = percentcolor(INBOgreen, .85),
      colour = "white"
    ),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.margin = unit(0.2, "cm"),
    legend.position = "right",
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(
      size = rel(0.8),
      face = "bold",
      hjust = 0,
      colour = INBObrown
    ),
    legend.title.align = NULL,

    panel.background = element_rect(
      fill = percentcolor(INBOgreen, .70),
      colour = NA
    ),
    panel.border = element_blank(),
    panel.grid.major = element_line(colour = "white"),
    panel.grid.minor = element_line(
      colour = percentcolor(INBOgreen, .80),
      size = 0.25
    ),
    panel.margin = unit(half_line, "pt"),
    panel.margin.x = NULL,
    panel.margin.y = NULL,
    panel.ontop = FALSE,

    strip.background = element_rect(fill = INBOgreen, colour = NA),
    strip.text = element_text(size = rel(0.8), colour = INBObrown),
    strip.text.x = element_text(
      margin = margin(t = half_line, b = half_line),
      colour = INBObrown
    ),
    strip.text.y = element_text(
      margin = margin(r = half_line, l = half_line),
      angle = -90,
      colour = INBObrown
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),

    plot.background = element_rect(colour = "white"),
    plot.title = element_text(size = rel(1.2)),
    plot.margin = margin(half_line, half_line, half_line, half_line),

    complete = TRUE)
}
