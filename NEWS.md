# INBOtheme 0.6.0

* Update `inbo_palette()` with new colours.
* Change the order of colour in `vlaanderen_palette()`.
* `theme_inbo()` and `theme_vlaanderen2015()` get different colours for ordinal
  data, gradient and gradient with midpoint.
* Add `show_palette()` and improve `demo_palette()`.
* Split vignette into a vignette on the palettes and one on the themes.
* Defunct functions deprecated in the previous version.
* Deprecate functions related to NARA.

# INBOtheme 0.5.11

* Bugfix in `scale_colour_gradient2()` and `scale_fill_gradient2()`.

# INBOtheme 0.5.10

* Remove the internal fonts.
  The reasons for doing so are twofold.
  1) `showtext::showtext_auto()` rendered the fonts much too small to raster
  images.
  2) `showtext::showtext_auto()` converts the text to paths in vector formats
  instead of embedding the font and keep the text as is.
  This makes the files much heavier.
  It makes it hard to edit the files afterwards.
* Upgrade to Roxygen 7.1.2

# INBOtheme 0.5.9

* Use defaults fonts.
  `Calibri` for `theme_inbo()` and `theme_nara()`,
  `FlandersArtSans` for `theme_vlaanderen2015()`.

# INBOtheme 0.5.8

* Add `traffic_palette()`.
* Use `traffic_palette()` as default for ordinal palettes.

# INBOtheme 0.5.7

* Removed colours from the oldest theme (in use until 2014).
* Rename objects to match snake_case coding style.
* Add `theme_nara()` and `nara_palette()`.

# INBOtheme 0.5.6

* Added a `NEWS.md` file to track changes to the package.
