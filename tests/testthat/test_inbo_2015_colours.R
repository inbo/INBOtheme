context("inbo_2015_colours")
for (i in 1:10) {
  suppressWarnings(expect_identical(length(inbo.2015.colours(i)), i))
}
expect_identical(
  inbo.2015.colours(9),
  inbo.2015.colours()
)
expect_warning(
  double <- matrix(inbo.2015.colours(18), ncol = 2),
  "generated palette has duplicated colours."
)
expect_identical(double[, 1], double[, 2])
