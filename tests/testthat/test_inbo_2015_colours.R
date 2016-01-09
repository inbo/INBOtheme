context("inbo_2015_colours")
for (i in 1:10) {
  expect_identical(length(inbo.2015.colours(i)), i)
}
expect_warning(
  inbo.2015.colours(10),
  "generated palette has duplicated colours."
)
double <- matrix(inbo.2015.colours(18), ncol = 2)
expect_identical(double[, 1], double[, 2])
