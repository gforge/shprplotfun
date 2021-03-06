#' Filter variable for existing data
#'
#' Filter variable where there are existing data in other variable.
#' @param x Variable to be filtered.
#' @param y Condition variable.
#' @return Filtered variable.
#' @examples
#' df <- data.frame(
#'   cars = 1:3,
#'   cars_model = 4:6,
#'   cars_speed = 7:9,
#'   condition = c(NA, 1, 2)
#' )
#' dplyr::mutate_at(
#'   df,
#'   dplyr::vars(dplyr::starts_with("cars")),
#'   filter_cens, y = df$condition
#' )
#' @export
filter_cens <- function(x, y){
  dplyr::case_when(!is.na(y) ~ x)
}
