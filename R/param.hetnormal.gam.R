#' Simulate Parameters for the ``hetnormal.gam'' Model
#' This method is used internally by Zelig to simulate parameters.
#' @note This method is used as part of the Zelig 4 API. This should not be
#' called explicitly.
#' @usage \method{param}{hetnormal.gam}(obj, num=1000, ...)
#' @S3method param hetnormal.gam
#' @param obj a zelig object
#' @param num an integer specifying the number of simulations to compute
#' @param ... additional parameters
#' @return a list specifying link, link-inverse, random samples, and ancillary
#' parameters
param.hetnormal.gam <- function(obj, num=1000, ...) {
    #   print(names(obj))
    print("Got Here 1")
    #print(.fitted)
    #print(names(.fitted))
    #print("Got Here 2")
    #coef(tfit3$scale.fit)
    
    mybetahat<-coef(obj$result$scale.fit)
    myvcvhat<-summary.tlm(obj$result)$loc.summary[["cov.unscaled"]]
    #summary.tlm(tfit3)$loc.summary[["cov.unscaled"]]
    
    coef <- mvrnorm(num, mu=mybetahat, Sigma=myvcvhat)

  list(
  simulations = coef,
  family = gaussian()
       )
}
