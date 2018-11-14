context("INBOcolours")
for (i in 1:14) {
  suppressWarnings(expect_identical(length(INBO.colours(i)), i))
}
expect_warning(
  double <- matrix(INBO.colours(26), ncol = 2),
  "generated palette has duplicated colours."
)
expect_identical(double[, 1], double[, 2])
