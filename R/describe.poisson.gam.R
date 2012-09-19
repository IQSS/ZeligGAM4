#' Describe the \code{poisson.gam} model to Zelig
#' This function creates the citation information for the ``poisson.gam'' model.
#' @usage \method{describe}{poisson.gam}(...)
#' @S3method describe poisson.gam
#' @param ... ignored parameters
#' @return a list of important information
#' @author Skyler J. Cranmer
describe.poisson.gam <- function(...) {
  list(
       authors = "Skyler J. Cranmer",
       text = "poisson.gam: Generalized Additive Model for Poisson Regression of Count Dependent Variables",
       year = 2011
       )
}
