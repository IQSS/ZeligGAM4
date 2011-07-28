#' Interface between the Zelig Model gam.probit and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2gam.probit <- function (formula, ..., data) {
  list(
       .function = "",
       formula = formula,
       data = data
       )
}
