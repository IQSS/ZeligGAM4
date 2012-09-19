#' Describe the \code{normal.gam} model to Zelig
#' This function creates the citation information for the ``logit.gam'' model.
#' @usage \method{describe}{normal.gam}(...)
#' @S3method describe normal.gam
#' @param ... ignored parameters
#' @return a list of important information
#' @author Skyler J. Cranmer
describe.normal.gam <- function(...) {
  list(
       authors = "Skyler J. Cranmer",
       text = "normal.gam: Generalized Additive Model for Normal Regression of Continuous Dependent Variables",
       year = 2011
       )
}
