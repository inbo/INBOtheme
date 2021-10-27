test_that("scales", {
  ggplot2::theme_set(theme_inbo())
  expect_identical(
    scale_colour_discrete()$palette(9),
    inbo_palette(9)
  )
  expect_identical(
    scale_fill_discrete()$palette(9),
    inbo_palette(9)
  )
  expect_identical(
    scale_colour_gradient()$palette(seq(0, 1, length = 2)),
    c(inbo_rood, inbo_lichtblauw)
  )
  expect_identical(
    scale_fill_gradient()$palette(seq(0, 1, length = 2)),
    c(inbo_rood, inbo_lichtblauw)
  )
  expect_identical(
    scale_colour_gradient2()$palette(seq(0, 1, length = 3)),
    c(inbo_rood, inbo_lichtgrijs, inbo_steun_blauw)
  )
  expect_identical(
    scale_fill_gradient2()$palette(seq(0, 1, length = 3)),
    c(inbo_rood, inbo_lichtgrijs, inbo_steun_blauw)
  )
  ggplot2::theme_set(theme_vlaanderen2015())
  expect_identical(
    scale_colour_discrete()$palette(9),
    vlaanderen_palette(9)
  )
  expect_identical(
    scale_fill_discrete()$palette(9),
    vlaanderen_palette(9)
  )
  expect_identical(
    scale_colour_gradient()$palette(seq(0, 1, length = 2)),
    c(vl_lightred, vl_lightblue)
  )
  expect_identical(
    scale_fill_gradient()$palette(seq(0, 1, length = 2)),
    c(vl_lightred, vl_lightblue)
  )
  expect_identical(
    scale_colour_gradient2()$palette(seq(0, 1, length = 3)),
    c(vl_lightred, vl_grey1, vl_lightblue)
  )
  expect_identical(
    scale_fill_gradient2()$palette(seq(0, 1, length = 3)),
    c(vl_lightred, vl_grey1, vl_lightblue)
  )
  ggplot2::theme_set(ggplot2::theme_grey())
  expect_equal(
    scale_colour_discrete(),
    ggplot2::scale_colour_discrete()
  )
  expect_equal(
    scale_fill_discrete(),
    ggplot2::scale_fill_discrete()
  )
  expect_identical(
    scale_colour_gradient()$palette(seq(0, 1, length = 2)),
    c("#132B43", "#56B1F7")
  )
  expect_identical(
    scale_fill_gradient()$palette(seq(0, 1, length = 2)),
    c("#132B43", "#56B1F7")
  )
  expect_identical(
    scale_colour_gradient2()$palette(seq(0, 1, length = 3)),
    c("#132B43", "#FFFFFF", "#56B1F7")
  )
  expect_identical(
    scale_fill_gradient2()$palette(seq(0, 1, length = 3)),
    c("#132B43", "#FFFFFF", "#56B1F7")
  )
  ggplot2::theme_set(theme_inbo())
})
