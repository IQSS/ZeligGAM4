#' Extract Model Frame from Gamma-style Formula
#' @param formula
#' @param data
#' @param ...
#' @export
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
model.frame.GammaFormula <- function(formula, data, ...) {
  gp <- interpret.gam(formula)
  ff<- gp$fake.formula
  model.frame.default(ff, data)
}
