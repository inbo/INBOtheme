context("theme_inbo2015")
font.size <- 12
font.family <- ""
rect.fill <- "white"
legend.bg <- "white"
panel.bg <- inbo.achtergrond
panel.grid <- "white"
plot.bg <- "white"
expect_is(default <- theme_inbo2015(), "theme")
expect_is(default, "gg")
expect_identical(default$rect$fill, rect.fill)
expect_identical(default$text$family, font.family)
expect_identical(default$text$size, font.size)
expect_equal(
  as.numeric(default$"axis.text.x"$margin[1]),
  0.8 * font.size / 4
)
expect_equal(
  as.numeric(default$"axis.text.x"$margin[1]),
  0.8 * font.size / 4
)
expect_equal(
  as.numeric(default$"axis.title.x"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
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
  as.numeric(default$panel.margin),
  font.size / 2
)
expect_equal(
  as.numeric(default$"strip.text.x"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
expect_equal(
  as.numeric(default$"strip.text.y"$margin),
  font.size * c(0.5, 0, 0.5, 0)
)
