context("theme_inbo")
font_size <- 12
font_family <- ""
rect_bg <- "white"
legend_bg <- "white"
panel_bg <- inbo_achtergrond
panel_grid <- "white"
plot_bg <- "white"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(default <- theme_inbo(), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 20
font_family <- "Helvetica"
rect_bg <- "transparent"
legend_bg <- "transparent"
panel_bg <- "transparent"
panel_grid <- inbo_achtergrond
plot_bg <- "transparent"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(
  default <- theme_inbo(
    base_size = font_size,
    base_family = font_family,
    transparent = TRUE
  ),
  "theme"
)
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 12
font_family <- ""
rect_bg <- "transparent"
legend_bg <- "transparent"
panel_bg <- inbo_achtergrond
panel_grid <- "white"
plot_bg <- "white"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(default <- theme_inbo(transparent = "legend"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 12
font_family <- ""
rect_bg <- "transparent"
legend_bg <- "white"
panel_bg <- "transparent"
panel_grid <- inbo_achtergrond
plot_bg <- "white"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(default <- theme_inbo(transparent = "panel"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 12
font_family <- ""
rect_bg <- "transparent"
legend_bg <- "white"
panel_bg <- inbo_achtergrond
panel_grid <- "white"
plot_bg <- "transparent"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(default <- theme_inbo(transparent = "plot"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 12
font_family <- ""
rect_bg <- "transparent"
legend_bg <- "transparent"
panel_bg <- inbo_achtergrond
panel_grid <- "white"
plot_bg <- "transparent"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(default <- theme_inbo(transparent = c("plot", "legend")), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)

font_size <- 12
font_family <- ""
rect_bg <- "transparent"
legend_bg <- "transparent"
panel_bg <- "transparent"
panel_grid <- inbo_achtergrond
plot_bg <- "transparent"
attr(plot_bg, "INBOtheme") <- "inbo"
expect_is(
  default <- theme_inbo(transparent = c("plot", "legend", "panel")),
  "theme"
)
expect_is(default, "gg")
expect_identical(default$rect$fill, rect_bg)
expect_identical(default$text$family, font_family)
expect_identical(default$text$size, font_size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font_size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font_size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font_size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font_size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend_bg)
expect_identical(default$legend.key$fill, panel_bg)
expect_identical(default$panel.background$fill, panel_bg)
expect_identical(default$"panel.grid"$colour, panel_grid)
expect_identical(default$"panel.grid.minor"$colour, panel_grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font_size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font_size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font_size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot_bg)
expect_equal(
  as.numeric(default$plot.margin),
  font_size * rep(0.5, 4)
)
