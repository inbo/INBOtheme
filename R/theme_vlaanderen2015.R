#' The theme in compliance with the Vlaanderen style guide version >= 2015.
#'
#' @inheritParams ggplot2::theme_gray
#' @inheritParams theme_inbo
#' @author Thierry Onkelinx, Nicole De Groof
#' @export
#' @importFrom assertthat assert_that is.number noNA
#' @importFrom ggplot2 theme element_line element_rect element_text
#' element_blank rel margin
#' @importFrom grid unit
#' @family theme
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.vl <- p + theme_vlaanderen2015()
theme_vlaanderen2015 <- function(
    base_size = 12, base_family = "", transparent = FALSE
) {
  assert_that(is.number(base_size), noNA(base_size))
  if (is.logical(transparent)) {
    if (transparent) {
      rect_bg <- "transparent"
      legend_bg <- "transparent"
      panel_bg <- "transparent"
      panel_grid <- vl_grey1
      plot_bg <- "transparent"
    } else {
      rect_bg <- "white"
      legend_bg <- "white"
      panel_bg <- vl_grey1
      panel_grid <- "white"
      plot_bg <- "white"
    }
  } else {
    rect_bg <- "transparent"
    if ("legend" %in% transparent) {
      legend_bg <- "transparent"
    } else {
      legend_bg <- "white"
    }
    if ("panel" %in% transparent) {
      panel_bg <- "transparent"
      panel_grid <- vl_grey1
    } else {
      panel_bg <- vl_grey1
      panel_grid <- "white"
    }
    if ("plot" %in% transparent) {
      plot_bg <- "transparent"
    } else {
      plot_bg <- "white"
    }
  }
  attr(plot_bg, "inbotheme") <- "vlaanderen"
  half_line <- base_size / 2
  theme(
    line = element_line(
      colour = vl_black, size = 0.5, linetype = 1, lineend = "butt"
    ),
    rect = element_rect(
      fill = rect_bg, colour = vl_black, size = 0.5, linetype = 1
    ),
    text = element_text(
      family = base_family, face = "plain", colour = vl_black, size = base_size,
      hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9, margin = margin(),
      debug = FALSE
    ),

    axis.line = element_blank(),
    axis.line.x = element_blank(),
    axis.line.y = element_blank(),
    axis.text = element_text(size = rel(0.8), colour = vl_black),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2), vjust = 1, colour = vl_black
    ),
    axis.text.x.top = NULL,
    axis.text.y = element_text(
      margin = margin(r = 0.8 * half_line / 2), hjust = 1, colour = vl_black
    ),
    axis.text.y.right = NULL,
    axis.ticks = element_line(colour = vl_black),
    axis.ticks.length = unit(0.15, "cm"),
    axis.ticks.length.x = NULL,
    axis.ticks.length.x.top = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y = NULL,
    axis.ticks.length.y.left = NULL,
    axis.ticks.length.y.right = NULL,
    axis.title.x = element_text(
      margin = margin(t = 0.8 * half_line, b = 0.8 * half_line / 2),
      colour = vl_black
    ),
    axis.title.x.top = NULL,
    axis.title.y = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),
      angle = 90, colour = vl_black
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
    legend.position = "right",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,
    legend.box.margin = margin(half_line, half_line, half_line, half_line),
    legend.box.background = element_rect(colour = NA, fill = legend_bg),
    legend.box.spacing = unit(0.2, "cm"),

    panel.background = element_rect(fill = panel_bg, colour = NA),
    panel.border = element_blank(),
    panel.grid = element_line(colour = "white"),
    panel.grid.major = element_line(colour = panel_grid),
    panel.grid.minor = element_line(colour = panel_grid, size = 0.25),
    panel.spacing = unit(half_line, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,
    panel.ontop = FALSE,

    strip.background = element_rect(fill = vl_grey5, colour = NA),
    strip.text = element_text(size = rel(0.8), colour = "white"),
    strip.text.x = element_text(margin = margin(t = half_line, b = half_line)),
    strip.text.y = element_text(
      margin = margin(r = half_line, l = half_line),
      angle = -90
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),
    strip.placement = "outside",

    plot.background = element_rect(colour = NA, fill = plot_bg),
    plot.title = element_text(size = rel(1.2)),
    plot.subtitle = element_text(
      size = rel(1), margin = margin(0, 0, half_line, 0)
    ),
    plot.caption = element_text(
      size = rel(0.6), margin = margin(0, 0, half_line, 0)
    ),
    plot.margin = margin(half_line, half_line, half_line, half_line),
    plot.tag = element_text(size = rel(1.2), hjust = 0.5, vjust = 0.5),
    plot.tag.position = "topleft",
    complete = TRUE)
}
