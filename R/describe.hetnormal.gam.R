#' Describe the \code{hetnormal.gam} model to Zelig
#' This function creates the citation information for the ``hetnormal.gam'' model.
#' @usage \method{describe}{hetnormal.gam}(...)
#' @S3method describe hetnormal.gam
#' @param ... ignored parameters
#' @return a list of important information
#' @author James Honaker
describe.hetnormal.gam <- function(...) {
  list(
       authors = "James Honaker",
       text = "hetnormal.gam: Heteroskedastic Regression with Spline Defined by  Knot Points",
       year = 2013
       )
}
