#' The theme in compliance with the INBO style guide version >= 2015.
#'
#' @inheritParams ggplot2::theme_gray
#' @param transparent Make backgrounds transparent.
#' `FALSE`: all backgrounds are white, `TRUE`: all backgrounds are transparent.
#' You can pass a vector to transparent.
#' In that case, it will check whether the values `"plot"`, `"panel"` and/or
#' `"legend"` are present.
#' The according items will be transparent.
#' Transparent panel will use grey instead of white grid lines.
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @export
#' @family theme
#' @importFrom assertthat assert_that is.number noNA
#' @importFrom ggplot2 theme element_line element_rect element_text
#' element_blank rel margin
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.inbo <- p + theme_inbo()
theme_inbo <- function(base_size = 12, base_family = "", transparent = FALSE) {
  assert_that(is.number(base_size), noNA(base_size))
  if (is.logical(transparent)) {
    if (transparent) {
      rect_bg <- "transparent"
      legend_bg <- "transparent"
      panel_bg <- "transparent"
      panel_grid <- inbo_achtergrond
      plot_bg <- "transparent"
    } else {
      rect_bg <- "white"
      legend_bg <- "white"
      panel_bg <- inbo_achtergrond
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
      panel_grid <- inbo_achtergrond
    } else {
      panel_bg <- inbo_achtergrond
      panel_grid <- "white"
    }
    if ("plot" %in% transparent) {
      plot_bg <- "transparent"
    } else {
      plot_bg <- "white"
    }
  }
  attr(plot_bg, "inbotheme") <- "inbo"
  half_line <- base_size / 2
  theme(
    line = element_line(
      colour = "black", linewidth = 0.5, linetype = 1, lineend = "butt"
    ),
    rect = element_rect(
      fill = rect_bg, colour = "black", linewidth = 0.5, linetype = 1
    ),
    text = element_text(
      family = base_family, face = "plain", colour = "black",
      size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9,
      margin = margin(), debug = FALSE
    ),

    axis.line = element_blank(),
    axis.line.x = element_blank(),
    axis.line.y = element_blank(),
    axis.text = element_text(size = rel(0.8)),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2), vjust = 1
    ),
    axis.text.x.top = NULL,
    axis.text.y = element_text(
      margin = margin(r = 0.8 * half_line / 2), hjust = 1
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
    axis.title = element_text(colour = "black"),
    axis.title.x = element_text(
      margin = margin(t = 0.8 * half_line, b = 0.8 * half_line / 2)
    ),
    axis.title.x.top = NULL,
    axis.title.y = element_text(
      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2), angle = 90
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
      size = rel(0.8), face = "bold", hjust = 0, colour = "black"
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
    panel.grid = element_line(colour = panel_grid),
    panel.grid.minor = element_line(colour = panel_grid, linewidth = 0.25),
    panel.spacing = unit(half_line, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,
    panel.ontop = FALSE,

    strip.background = element_rect(fill = inbo_grijs, colour = NA),
    strip.text = element_text(size = rel(0.8), colour = inbo_achtergrond),
    strip.text.x = element_text(margin = margin(t = half_line, b = half_line)),
    strip.text.y = element_text(
      margin = margin(r = half_line, l = half_line), angle = -90
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),
    strip.placement = "outside",

    plot.background = element_rect(colour = NA, fill = plot_bg),
    plot.title = element_text(
      size = rel(1.2), margin = margin(0, 0, half_line, 0)
    ),
    plot.subtitle = element_text(
      size = rel(1), margin = margin(0, 0, half_line, 0)
    ),
    plot.caption = element_text(
      size = rel(0.6), margin = margin(0, 0, half_line, 0)
    ),
    plot.margin = margin(half_line, half_line, half_line, half_line),
    plot.tag = element_text(size = rel(1.2), hjust = 0.5, vjust = 0.5),
    plot.tag.position = "topleft",
    complete = TRUE
  )
}

#' @export
#' @rdname theme_inbo
theme_inbo2015 <- function(
  base_size = 12, base_family, transparent = FALSE
) {
  .Defunct("theme_inbo")
}

#' @importFrom ggplot2 margin
#' @inheritParams ggplot2::margin
#' @export
#' @name margin
ggplot2::margin
