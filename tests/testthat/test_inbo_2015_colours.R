context("inbo_palette")
for (i in 1:10) {
  suppressWarnings(expect_identical(length(inbo_palette(i)), i))
}
expect_identical(
  inbo_palette(9),
  inbo_palette()
)
expect_warning(
  double <- matrix(inbo_palette(18), ncol = 2),
  "generated palette has duplicated colours."
)
expect_identical(double[, 1], double[, 2])
