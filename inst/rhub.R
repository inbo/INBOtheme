rhub::check_on_linux()
rhub::check_on_windows()
rhub::check_on_macos()
download_path <- "~/Documenten"
x <- read.dcf("DESCRIPTION")
package <- x[, "Package"]
version <- x[, "Version"]
base <- sprintf("%s/%s_%s", download_path, package, version)
drat::insertPackage(
  file = paste0(base, ".tar.gz"),
  repodir = "../drat/",
  commit = TRUE
)
drat::insertPackage(
  file = paste0(base, ".zip"),
  repodir = "../drat/",
  commit = TRUE
)
drat::insertPackage(
  file = paste0(base, ".tgz"),
  repodir = "../drat/",
  commit = TRUE
)
