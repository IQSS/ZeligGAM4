#' Simulate Parameters for the ``poisson.gam'' Model
#' This method is used internally by Zelig to simulate parameters.
#' @note This method is used as part of the Zelig 4 API. This should not be
#' called explicitly.
#' @usage \method{param}{poisson.gam}(obj, num=1000, ...)
#' @S3method param poisson.gam
#' @param obj a zelig object
#' @param num an integer specifying the number of simulations to compute
#' @param ... additional parameters
#' @return a list specifying link, link-inverse, random samples, and ancillary
#' parameters
param.poisson.gam <- param.logit.gam
