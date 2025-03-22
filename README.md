[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable-1)
[![License](https://img.shields.io/badge/license-GPL--3-blue.svg?style=flat)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Release](https://img.shields.io/github/release/qubyte/rubidium.svg)](https://github.com/inbo/inbotheme/releases)
[![R build status](https://github.com/inbo/INBOtheme/actions/workflows/check_on_main.yml/badge.svg)](https://github.com/inbo/INBOtheme/actions)
![r-universe name](https://inbo.r-universe.dev/badges/:name?color=c04384)
![r-universe package](https://inbo.r-universe.dev/badges/INBOtheme)
[![Codecov test coverage](https://codecov.io/gh/inbo/INBOtheme/branch/main/graph/badge.svg)](https://app.codecov.io/gh/inbo/INBOtheme?branch=main)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/inbo/INBOtheme.svg)
![GitHub repo size](https://img.shields.io/github/repo-size/inbo/INBOtheme.svg)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1219480.svg)](https://doi.org/10.5281/zenodo.1219480)

# INBOtheme

## Documentation

All help files and vignettes are available at https://inbo.github.io/INBOtheme

## Installation

The latest version of the package is available through the [INBO R universe](https://inbo.r-universe.dev).

```r
# Enable the INBO universe
options(
  repos = c(
    inbo = "https://inbo.r-universe.dev", CRAN = "https://cloud.r-project.org"
  )
)
# Install the package
install.packages("INBOtheme")
```

Another option is to install the package from GitHub.

```r
if (!"remotes" %in% rownames(installed.packages())) {
  install.packages("remotes")
}
# install the latest version
remotes::install_github("inbo/INBOtheme")
# install a specific release
# see https://github.com/inbo/INBOtheme/releases
remotes::install_github("inbo/INBOtheme@v0.5.8")
```

## Rationale

The [`ggplot2`](https://ggplot2.tidyverse.org) package has a nice and easy system to apply [themes](https://ggplot2.tidyverse.org/reference/index.html#section-themes).
The `INBOtheme` packages contains themes for the [Research Institute for Nature and Forest](https://www.vlaanderen.be/inbo), the [Flemish government](https://www.vlaanderen.be/en) and [Elsevier](https://www.elsevier.com/products/journals?producttype=journal) journals.

The documentation is available at https://inbo.github.io/INBOtheme.
This includes a set of [example figures](https://inbo.github.io/INBOtheme/articles/themes.html) for each available theme.

## Folder structure

The folder structure is that of a typical R packages with the mandatory `R` folder (definition of the functions) and `man` (helpfiles in Rd format).
`max-roxygen` contains some templates for the help files.
`inst` contains some auxiliary scripts are stored.
The `test` folder contains the unit tests using the infrastructure from the `testthat` package.
The `vignette` folder contains examples of the available themes.

```
INBOtheme
├── inst 
├── man 
├── man-roxygen
├── R
├─┬ tests
│ └── testthat
└── vignettes
```
