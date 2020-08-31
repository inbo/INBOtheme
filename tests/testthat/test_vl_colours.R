context("vlaanderen_2015_colours")
for (i in 1:11) {
  suppressWarnings(expect_identical(length(vlaanderen_palette(i)), i))
}
expect_identical(
  vlaanderen_palette(),
  vlaanderen_palette(10)
)
expect_warning(
  double <- matrix(vlaanderen_palette(20), ncol = 2),
  "generated palette has duplicated colours."
)
expect_identical(double[, 1], double[, 2])
