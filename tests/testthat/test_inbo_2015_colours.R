test_that("inbo_palette", {
  for (i in 1:8) {
    suppressWarnings(expect_identical(length(inbo_palette(i)), i))
  }
  expect_error(
    double <- matrix(inbo_palette(18), ncol = 2),
    "Reduce the number of factor levels"
  )
})
