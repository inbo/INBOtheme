context("theme_vlaanderen2015")
font.size <- 12
font.family <- ""
rect.bg <- "white"
legend.bg <- "white"
panel.bg <- vl.grey1
panel.grid <- "white"
plot.bg <- "white"
expect_is(default <- theme_vlaanderen2015(), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 20
font.family <- "Helvetica"
rect.bg <- "transparent"
legend.bg <- "transparent"
panel.bg <- "transparent"
panel.grid <- vl.grey1
plot.bg <- "transparent"
expect_is(
  default <- theme_vlaanderen2015(
    base_size = font.size,
    base_family = font.family,
    transparent = TRUE
  ),
  "theme"
)
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 12
font.family <- ""
rect.bg <- "transparent"
legend.bg <- "transparent"
panel.bg <- vl.grey1
panel.grid <- "white"
plot.bg <- "white"
expect_is(default <- theme_vlaanderen2015(transparent = "legend"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 12
font.family <- ""
rect.bg <- "transparent"
legend.bg <- "white"
panel.bg <- "transparent"
panel.grid <- vl.grey1
plot.bg <- "white"
expect_is(default <- theme_vlaanderen2015(transparent = "panel"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 12
font.family <- ""
rect.bg <- "transparent"
legend.bg <- "white"
panel.bg <- vl.grey1
panel.grid <- "white"
plot.bg <- "transparent"
expect_is(default <- theme_vlaanderen2015(transparent = "plot"), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 12
font.family <- ""
rect.bg <- "transparent"
legend.bg <- "transparent"
panel.bg <- vl.grey1
panel.grid <- "white"
plot.bg <- "transparent"
expect_is(
  default <- theme_vlaanderen2015(transparent = c("plot", "legend")),
  "theme"
)
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 12
font.family <- ""
rect.bg <- "transparent"
legend.bg <- "transparent"
panel.bg <- "transparent"
panel.grid <- vl.grey1
plot.bg <- "transparent"
expect_is(
  default <- theme_vlaanderen2015(transparent = c("plot", "legend", "panel")),
  "theme"
)
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.bg)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin),
  0.8 * font.size  * c(0.25, 0, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.text.y"$margin),
  0.8 * font.size * c(0, 0.25, 0, 0)
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0.5, 0, 0.25, 0)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_identical(default$legend.background$fill, legend.bg)
expect_identical(default$legend.key$fill, panel.bg)
expect_identical(default$panel.background$fill, panel.bg)
expect_identical(default$"panel.grid.major"$colour, panel.grid)
expect_identical(default$"panel.grid.minor"$colour, panel.grid)
expect_equal(
  as.numeric(default$panel.spacing),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0, 0.5, 0, 0.5)
)
expect_identical(default$plot.background$fill, plot.bg)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)
