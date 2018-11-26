context("vlaanderen_2015_colours")
for (i in 1:11) {
  suppressWarnings(expect_identical(length(vlaanderen.2015.colours(i)), i))
}
expect_identical(
  vlaanderen.2015.colours(),
  vlaanderen.2015.colours(10)
)
expect_warning(
  double <- matrix(vlaanderen.2015.colours(20), ncol = 2),
  "generated palette has duplicated colours."
)
expect_identical(double[, 1], double[, 2])
