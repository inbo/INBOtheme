context("scales")
ggplot2::theme_set(theme_inbo2015())
expect_identical(
  scale_colour_discrete()$palette(9),
  inbo.2015.colours(9)
)
expect_identical(
  scale_fill_discrete()$palette(9),
  inbo.2015.colours(9)
)
expect_identical(
  scale_colour_gradient()$palette(seq(0, 1, length = 2)),
  c(inbo.bruinrood, inbo.lichtblauw)
)
ggplot2::theme_set(theme_INBO())
expect_identical(
  scale_colour_discrete()$palette(13),
  INBO.colours(13)
)
expect_identical(
  scale_fill_discrete()$palette(13),
  INBO.colours(13)
)
expect_identical(
  scale_colour_gradient()$palette(seq(0, 1, length = 2)),
  c(INBOblue, INBOred)
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
ggplot2::theme_set(theme_inbo2015())
