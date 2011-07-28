#' Extract Model Frame from GAM-style Formula
#'
#' Produce a \code{model.frame} from a a GAM-style formula and a
#' \code{data.frame}.
#' @usage \method{model.frame}{GamFormula}(formula, data, ...)
#' @param formula a gamma-style formula with class \code{GamFormula}
#' @param data a \code{data.frame} used to create the rows of the
#'   \code{model.frame}
#' @param ... ignored parameters
#' @author Matt Owen \email{mowen@@iq.harvard.edu} and Skyler J. Cranmer
#' @S3method model.frame GamFormula
model.frame.GamFormula <- function(formula, data, ...) {
  gp <- interpret.gam(formula)
  ff <- gp$fake.formula
  model.frame.default(ff, data)
}
