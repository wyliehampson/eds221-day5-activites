#' Predict Runoff
#' 
#' This function predicts the volume of storm water runoff given a watershed's area and fraction of area that is considered impervious.
#'
#' @param frac_impervious The fraction of impervious area in the watershed (0 - 1)
#' @param area The area of the watershed (acres)
#'
#' @return
#' @export
#'
#' @examples predict_runoff(0.6, 182)
predict_runoff <- function(frac_impervious, area) {
  volume <- 3630 * 1 * (0.05 + 0.9 * frac_impervious) * area
  return(volume)
}
