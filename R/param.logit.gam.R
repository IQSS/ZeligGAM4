#' Simulate Parameters for the ``logit.gam'' Model
#' This method is used internally by Zelig to simulate parameters.
#' @note This method is used as part of the Zelig 4 API. This should not be
#' called explicitly.
#' @usage \method{param}{logit.gam}(obj, num=1000, ...)
#' @S3method param logit.gam
#' @param obj a zelig object
#' @param num an integer specifying the number of simulations to compute
#' @param ... additional parameters
#' @return a list specifying link, link-inverse, random samples, and ancillary
#' parameters
param.logit.gam <- function(obj, num=1000, ...) {
  coef <- mvrnorm(num, mu=coef(.fitted), Sigma=vcov(.fitted))
  list(
       simulations = coef,
       family = binomial()
       )
}
