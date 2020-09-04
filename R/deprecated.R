#' Deprecated functions
#'
#' These functions will be removed from `INBOtheme` in the future.
#' @inheritParams inbo_palette
#' @export
#' @rdname deprecated
inbo.2015.colours <- function(n) { # nolint
  .Deprecated("inbo_palette")
  inbo_palette(n)
}

#' @inheritParams switch_colour
#' @export
#' @rdname deprecated
switchColour <- function(new_colour = inbo_steun_blauw) { # nolint
  .Deprecated("switch_colour")
  switch_colour(new_colour = new_colour)
}

#' @inheritParams vlaanderen_palette
#' @export
#' @rdname deprecated
vlaanderen.2015.colours <- function(n) { # nolint
  .Deprecated("vlaanderen_palette")
  vlaanderen_palette(n)
}
