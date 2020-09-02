context("vlaanderen_2015_colours")
for (i in 1:10) {
  suppressWarnings(expect_identical(length(vlaanderen_palette(i)), i))
}
expect_error(
  vlaanderen_palette(20),
  "Reduce the number of factor levels"
)
