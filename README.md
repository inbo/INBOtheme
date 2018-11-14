[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![License](http://img.shields.io/badge/license-GPL--3-blue.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html)
[![Release](https://img.shields.io/github/release/qubyte/rubidium.svg)](https://github.com/inbo/inbotheme/releases)
[![wercker status](https://app.wercker.com/status/31867a7555c3d4bb6a8ba6c7c9994b27/s/master "wercker status")](https://app.wercker.com/project/byKey/31867a7555c3d4bb6a8ba6c7c9994b27)
[![codecov](https://codecov.io/gh/inbo/INBOtheme/branch/master/graph/badge.svg)](https://codecov.io/gh/inbo/INBOtheme)

# INBOtheme

## Documentation

All helpfiles and vignettes are available at https://inbo.github.io/inbotheme

## Installation

Stable versions are available on the `inbo` drat repo. Use `drat::addRepo("inbo")` and then `install.packages("INBOtheme")`. Pro tip: add `drat::addRepo("inbo")` to your [`Rprofile`](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Customizing-the-environment).

Use `devtools::install_github("inbo/INBOtheme")` to install the latest version of the package.

## Rationale

The [`ggplot2`](http://ggplot2.tidyverse.org) package has a nice and easy system to apply [themes](http://ggplot2.tidyverse.org/reference/index.html#section-themes). The `INBOtheme` packages contains themes for the [Research Institute for Nature and Forest](https://www.inbo.be), the [Flemish government](https://www.vlaanderen.be/en) and [Elsevier](https://www.elsevier.com/catalog?producttype=journal) journals.

The documentation is available at https://inbo.github.io/INBOtheme. This includes a set of [example figures](https://inbo.github.io/INBOtheme/articles/themes.html) for each available theme.

## Folder structure

The folder structure is that of a typical R packages with the mandatory `R` folder (definition of the functions) and `man` (helpfiles in Rd format). `inst` is an optional folder in which some auxiliary scripts are stored. The optional `test` folder contains the unit tests using the infrastructure from the `testthat` package. The optional `vignette` folder contains examples of the available themes.

```
INBOtheme
├── inst 
├── man 
├── R
├─┬ tests
│ └── testthat
└── vignettes
```
