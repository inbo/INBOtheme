test_that("theme_elsevier", {
  font_size <- 7
  font_family <- ""
  expect_is(default <- theme_elsevier(), "theme")
  expect_is(default, "gg")
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
  expect_equal(
    as.numeric(default$plot.margin),
    font_size * rep(0.5, 4)
  )

  font_size <- 1
  font_family <- "Helvetica"
  expect_is(
    default <- theme_elsevier(base_size = font_size, base_family = font_family),
    "theme"
  )
  expect_is(default, "gg")
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
  expect_equal(
    as.numeric(default$plot.margin),
    font_size * rep(0.5, 4)
  )
})
