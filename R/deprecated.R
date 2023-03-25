#' Deprecated functions
#'
#' These functions will be removed from `INBOtheme` in the future.
#' @inheritParams inbo_palette
#' @export
#' @rdname deprecated
inbo.2015.colours <- function(n) { # nolint
  .Defunct("inbo_palette")
}

#' @inheritParams switch_colour
#' @export
#' @rdname deprecated
switchColour <- function(new_colour = inbo_steun_blauw) { # nolint
  .Defunct("switch_colour")
}

#' @inheritParams vlaanderen_palette
#' @export
#' @rdname deprecated
vlaanderen.2015.colours <- function(n) { # nolint
  .Defunct("vlaanderen_palette")
}
