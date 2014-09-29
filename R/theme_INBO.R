#' The theme in compliance with the INBO style guide, version <= 2014.
#' 
#' @param base_size Base fontsize
#' @param base_family Base fonttype
#' @export
#' @importFrom ggplot2 theme element_line element_rect element_text element_blank rel
#' @importFrom grid unit
#' @examples
#'   library(ggplot2)
#'   p <- ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
#'   p.inbo <- p + theme_INBO() 
theme_INBO <- function (base_size = 12, base_family = "") {
  theme(
    line = element_line(colour = "black", size = 0.5, linetype = 1, lineend = "butt"),  
    rect = element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1), 
    text = element_text(family = base_family, face = "plain", colour = INBObrown, size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9), 
    axis.text = element_text(size = rel(0.8), colour = INBOreddishbrown), 
    strip.text = element_text(size = rel(0.8), colour = INBObrown), 
    axis.line = element_blank(), 
    axis.text.x = element_text(vjust = 1, colour = INBOreddishbrown), 
    axis.text.y = element_text(hjust = 1, colour = INBOreddishbrown), 
    axis.ticks = element_line(colour = INBOreddishbrown), 
    axis.title.x = element_text(colour = INBObrown), 
    axis.title.y = element_text(angle = 90, colour = INBObrown), 
    axis.ticks.length = unit(0.15, "cm"), 
    axis.ticks.margin = unit(0.1, "cm"), 
    legend.background = element_rect(colour = NA), 
    legend.margin = unit(0.2, "cm"), 
    legend.key = element_rect(fill = percentcolor(INBOgreen, .85), colour = "white"), 
    legend.key.size = unit(1.2, "lines"), 
    legend.key.height = NULL, 
    legend.key.width = NULL, 
    legend.text = element_text(size = rel(0.8)), 
    legend.text.align = NULL, 
    legend.title = element_text(size = rel(0.8), face = "bold", hjust = 0, colour = INBObrown), 
    legend.title.align = NULL, 
    legend.position = "right", 
    legend.direction = NULL, 
    legend.justification = "center", 
    legend.box = NULL, 
    panel.background = element_rect(fill = percentcolor(INBOgreen, .70), colour = NA), 
    panel.border = element_blank(), 
    panel.grid.major = element_line(colour = "white"), 
    panel.grid.minor = element_line(colour = percentcolor(INBOgreen, .80), size = 0.25), 
    panel.margin = unit(0.25, "lines"),
    panel.margin.x = NULL, 
    panel.margin.y = NULL,
    strip.background = element_rect(fill = INBOgreen, colour = NA), 
    strip.text.x = element_text(colour = INBObrown), 
    strip.text.y = element_text(angle = -90, colour = INBObrown), 
    plot.background = element_rect(colour = "white"), 
    plot.title = element_text(size = rel(1.2)), 
    plot.margin = unit(c(1, 1, 0.5, 0.5), "lines"), 
    complete = TRUE)
}
