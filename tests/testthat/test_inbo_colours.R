context("INBOcolours")
for (i in 1:13) {
  expect_identical(length(INBO.colours(i)), i)
}
expect_warning(
  INBO.colours(14),
  "generated palette has duplicated colours."
)
double <- matrix(INBO.colours(26), ncol = 2)
expect_identical(double[, 1], double[, 2])
