#' Describe the \code{logit.gam} model to Zelig
#' This function creates the citation information for the ``logit.gam'' model.
#' @usage \method{describe}{logit.gam}(...)
#' @S3method describe logit.gam
#' @param ... ignored parameters
#' @return a list of important information
#' @author Skyler J. Cranmer
describe.logit.gam <- function(...) {
  list(
       authors = "Skyler J. Cranmer",
       text = "logit.gam: Generalized Additive Model for Logistic Regression of Dichotomous Dependent Variables",
       year = 2011
       )
}
