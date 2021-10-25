test_that("defunct", {
  expect_error(
    theme_set(theme_INBO()),
    class = c("defunctError", "error", "condition")
  )
  expect_warning(theme_set(theme_inbo2015()), "Use 'theme_inbo()' instead")
})
