context("theme_INBO")
font.size <- 12
font.family <- ""
expect_is(default <- theme_INBO(), "theme")
expect_is(default, "gg")
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
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
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
  font.size * c(0, 0.5, 0, 0.5)
)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)

font.size <- 1
font.family <- "Helvetica"
expect_is(
  default <- theme_INBO(base_size = font.size, base_family = font.family),
  "theme"
)
expect_is(default, "gg")
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
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
expect_equal(
  as.numeric(default$"axis.title.y"$margin),
  0.8 * font.size * c(0, 0.5, 0, 0.25)
)
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
  font.size * c(0, 0.5, 0, 0.5)
)
expect_equal(
  as.numeric(default$plot.margin),
  font.size * rep(0.5, 4)
)
