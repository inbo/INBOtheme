#' The theme for NARA reports.
#'
#' @param base_size Base fontsize
#' @export
#' @family theme
#' @importFrom ggplot2 theme element_line element_rect element_text
#' element_blank rel margin
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.inbo <- p + theme_nara()
theme_nara <- function(base_size = 12) {
  rect_bg <- "transparent"
  legend_bg <- "transparent"
  panel_bg <- "transparent"
  panel_grid <- inbo_lichtgrijs
  plot_bg <- "transparent"
  attr(plot_bg, "INBOtheme") <- "nara"
  half_line <- base_size / 2
  theme(
    line = element_line(
      colour = vl_black,
      size = 0.5,
      linetype = 1,
      lineend = "butt"
    ),
    rect = element_rect(
      fill = rect_bg,
      colour = vl_black,
      size = 0.5,
      linetype = 1
    ),
    text = element_text(
      family = "FlandersArtSans",
      face = "plain",
      colour = vl_black,
      size = base_size,
      hjust = 0.5,
      vjust = 0.5,
      angle = 0,
      lineheight = 0.9,
      margin = margin(),
      debug = FALSE
    ),

    axis.line = element_line(colour = vl_black),
    axis.line.x = element_line(),
    axis.line.y = element_line(),
    axis.text = element_text(size = rel(0.8)),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2),
      vjust = 1
    ),
    axis.text.x.top = NULL,
    axis.text.y = element_text(
      margin = margin(r = 0.8 * half_line / 2),
      hjust = 1
    ),
    axis.text.y.right = NULL,
    axis.ticks = element_line(),
    axis.ticks.length = unit(0.15, "cm"),
    axis.ticks.length.x = unit(0.15, "cm"),
    axis.ticks.length.y = unit(0.15, "cm"),
    axis.ticks.length.x.top = unit(0.15, "cm"),
    axis.ticks.length.x.bottom = unit(0.15, "cm"),
    axis.ticks.length.y.left = unit(0.15, "cm"),
    axis.ticks.length.y.right = unit(0.15, "cm"),
    axis.title = element_text(colour = vl_black),
    axis.title.x = element_text(
      margin = margin(t = 0.8 * half_line, b = 0.8 * half_line / 2)
    ),
    axis.title.x.top = NULL,
    axis.title.y = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      angle = 90
    ),
    axis.title.y.right = NULL,

    legend.background = element_rect(colour = NA, fill = legend_bg),
    legend.key = element_rect(fill = panel_bg, colour = NA),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.margin = NULL,
    legend.spacing = unit(0.2, "cm"),
    legend.spacing.x = NULL,
    legend.spacing.y = NULL,
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(
      size = rel(0.8), face = "bold", hjust = 0, colour = vl_black
    ),
    legend.title.align = NULL,
    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.justification = "center",
    legend.box = NULL,
    legend.box.margin = margin(half_line, half_line, half_line, half_line),
    legend.box.background = element_rect(colour = NA, fill = legend_bg),
    legend.box.spacing = unit(0.2, "cm"),

    panel.background = element_rect(fill = panel_bg, colour = NA),
    panel.border = element_blank(),
    panel.grid = element_line(colour = panel_grid, linetype = "dotted"),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.spacing = unit(half_line, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,
    panel.ontop = FALSE,

    strip.background = element_rect(fill = panel_bg, colour = NA),
    strip.text = element_text(size = rel(0.8), colour = vl_black),
    strip.text.x = element_text(margin = margin(t = half_line, b = half_line)),
    strip.text.y = element_text(
      margin = margin(r = half_line, l = half_line),
      angle = -90
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),
    strip.placement = "outside",

    plot.background = element_rect(colour = NA, fill = plot_bg),
    plot.title = element_text(
      size = rel(1.2),
      margin = margin(0, 0, half_line, 0),
      hjust = 0
    ),
    plot.subtitle = element_text(
      size = rel(1),
      hjust = 0,
      margin = margin(0, 0, half_line, 0)
    ),
    plot.caption = element_text(
      size = rel(0.6),
      margin = margin(0, 0, half_line, 0)
    ),
    plot.margin = margin(half_line, half_line, half_line, half_line),
    plot.tag = element_text(size = rel(1.2), hjust = 0.5, vjust = 0.5),
    plot.tag.position = "topleft",
    complete = TRUE
  )
}
