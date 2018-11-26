context("defunct")
expect_error(
  theme_set(theme_INBO()),
  "'theme_INBO' is defunct."
)
expect_warning(theme_set(theme_inbo2015()), "Use 'theme_inbo()' instead")
