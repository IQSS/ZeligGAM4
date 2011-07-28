#' Interface between the Zelig Model logit.gam and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2logit.gam <- function (formula, ..., data) {
  class(formula) <- c('GammaFormula', 'formula')
  list(
       .function = "gam",
       formula = formula,
       data = data,
       family = binomial(),
       ...
       )
}
