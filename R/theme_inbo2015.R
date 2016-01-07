#' The theme in compliance with the INBO style guide version >= 2015.
#'
#' @param base_size Base fontsize
#' @param base_family Base fonttype
#' @param transparent Make backgrounds transparent. FALSE: all backgrounds are white, TRUE: all backgrounds are transparent. You can pass a vector to transparent. In that case, it will check weither the values "plot", "panel" and/or "legend" are present. The according items will be transparent. Transparent panel will use grey instead of white gridlines.
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @export
#' @importFrom ggplot2 theme element_line element_rect element_text element_blank rel margin
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.inbo <- p + theme_inbo2015()
theme_inbo2015 <- function (base_size = 12, base_family = "", transparent = FALSE) {
  if(is.logical(transparent)){
    if(transparent){
      rect.bg <- "magenta"
      legend.bg <- "transparent"
      panel.bg <- "transparent"
      panel.grid <- inbo.achtergrond
      plot.bg <- "transparent"
    } else {
      rect.bg = "white"
      legend.bg <- "white"
      panel.bg <- inbo.achtergrond
      panel.grid <- "white"
      plot.bg <- "white"
    }
  } else {
    rect.bg <- "transparent"
    if("legend" %in% transparent){
      legend.bg <- "transparent"
    } else {
      legend.bg <- "white"
    }
    if("panel" %in% transparent){
      panel.bg <- "transparent"
      panel.grid <- inbo.achtergrond
    } else {
      panel.bg <- inbo.achtergrond
      panel.grid <- "white"
    }
    if("plot" %in% transparent){
      plot.bg <- "transparent"
    } else {
      plot.bg <- "white"
    }
  }
	half_line <- base_size / 2
  theme(
    line = element_line(colour = "black", size = 0.5, linetype = 1, lineend = "butt"),
    rect = element_rect(fill = rect.bg, colour = "black", size = 0.5, linetype = 1),
    text = element_text(
      family = base_family, face = "plain", colour = inbo.steun.donkerroos, size = base_size,
      hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9, margin = margin(), debug = FALSE
    ),

	  axis.line = element_blank(),
    axis.text = element_text(size = rel(0.8), colour = inbo.steun.donkerroos),
    axis.text.x = element_text(margin = margin(t = 0.8 * half_line / 2), vjust = 1, colour = inbo.steun.donkerroos),
    axis.text.y = element_text(margin = margin(t = 0.8 * half_line / 2), hjust = 1, colour = inbo.steun.donkerroos),
    axis.ticks = element_line(colour = inbo.steun.donkerroos),
    axis.ticks.length = unit(0.15, "cm"),
    axis.title.x = element_text(margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),colour = inbo.hoofd),
    axis.title.y = element_text(margin = margin(r = 0.8 * half_line, l = 0.8 * half_line / 2),angle = 90, colour = inbo.hoofd),

    legend.background = element_rect(colour = NA, fill = legend.bg),
    legend.key = element_rect(fill = panel.bg, colour = NA),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.margin = unit(0.2, "cm"),
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(
      size = rel(0.8), face = "bold", hjust = 0, colour = inbo.hoofd
    ),
    legend.title.align = NULL,
    legend.position = "right",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,

    panel.background = element_rect(fill = panel.bg, colour = NA),
    panel.border = element_blank(),
    panel.grid.major = element_line(colour = panel.grid),
    panel.grid.minor = element_line(colour = panel.grid, size = 0.25),
    panel.margin = unit(half_line, "pt"),
    panel.margin.x = NULL,
    panel.margin.y = NULL,
  	panel.ontop = FALSE,

    strip.background = element_rect(fill = inbo.grijs, colour = NA),
    strip.text = element_text(size = rel(0.8), colour = inbo.achtergrond),
    strip.text.x = element_text(margin = margin(t = half_line, b = half_line)),
    strip.text.y = element_text(margin = margin(t = half_line, b = half_line), angle = -90),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),

    plot.background = element_rect(colour = NA, fill = plot.bg),
    plot.title = element_text(size = rel(1.2)),
    plot.margin = margin(half_line, half_line, half_line, half_line),
    complete = TRUE)
}

#' @importFrom ggplot2 margin
#' @export
ggplot2::margin
