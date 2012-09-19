#' Describe the \code{probit.gam} model to Zelig
#' This function creates the citation information for the ``probit.gam'' model.
#' @usage \method{describe}{probit.gam}(...)
#' @S3method describe probit.gam
#' @param ... ignored parameters
#' @return a list of important information
#' @author Skyler J. Cranmer
describe.probit.gam <- function(...) {
  list(
       authors = "Skyler J. Cranmer",
       text = "probit.gam: Generalized Additive Model for Probit Regression of Dichotomous Dependent Variables",
       year = 2011
       )
}
