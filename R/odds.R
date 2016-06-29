#' Convert fractional odds to decimal odds
#' @param fractional A character vector of fractional odds.
#' @return A numeric vector of decimal odds
#' @examples
#' to.decimal("1/2")
#' @export
to.decimal <- function (fractional) {
  if(class(fractional) != "character"){
    stop("Fractional must be a string!")
  }
  eval(parse(text = fractional)) + 1
}
to.decimal("1/2")

#'Convert decimal odds to fractional odds
#'@param decimal A numeric vector of decimal odds
#'@return A character vector of numeric odds
#'@examples
#'to.fractional(1.5)
#'@export
to.fractional <- function(decimal){
  as.character(MASS::fractions(decimal - 1))
}
to.fractional(1.5)
