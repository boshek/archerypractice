#' add ratio col
#'
#' add ratio col
#'
#' @param .data some data
#' @export
add_ratio_col <- function(.data) {
  UseMethod("add_ratio_col")
}

#' @export
add_ratio_col.arrow_dplyr_query <- function(.data) {
  dplyr::mutate(.data, mpg_over_wt = mpg/wt)
}

add_ratio_col.Dataset <- add_ratio_col.ArrowTabular <- add_ratio_col.arrow_dplyr_query
