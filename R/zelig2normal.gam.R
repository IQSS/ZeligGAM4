#' Interface between the Zelig Model normal.gam and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2normal.gam <- function (formula, ..., data) {
  class(formula) <- c('GamFormula', 'formula')
  list(
       .function = "gam",
       formula = formula,
       data = data,
       family = gaussian(),
       ...
       )
}
