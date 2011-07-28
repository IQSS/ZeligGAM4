# This file documents all predicted-value functions for gam.zelig package

#' Compute Predicted Values for \code{logit.gam}
#'
logit.pv <- function (obj, x, inv, num) {
  # return NA for bad setx objects
  if (is.null(x))
    return(NA)

  # get actual fitted model object
  obj <- obj$result

  # get appropriate data.frame
  x <- repeat.data(obj, x)

  #
  prfit <- predict.gam(obj, x, se.fit=TRUE, type="response")$fit
  as.factor(rbinom(num, 1, prfit))
}



#' Compute Predicted Values for \code{normal.gam}
#'
normal.pv <- function (obj, x, inv, num) {
  # return NA for bad setx objects
  if (is.null(x))
    return(NA)

  # get actual fitted model object
  obj <- obj$result

  # get appropriate data.frame
  x <- repeat.data(obj, x)

  #
  predictions <- predict.gam(obj, x, se.fit=TRUE, type="response")
  prfit <- predictions$fit
  prse <- predictions$se.fit

  #
  rnorm(num, prfit, prse)
}



#' Compute Predicted Values for \code{normal.gam}
#'
poisson.pv <- function (obj, x, inv, num) {
  # return NA for bad setx objects
  if (is.null(x))
    return(NA)

  # get actual fitted model object
  obj <- obj$result

  # get appropriate data.frame
  x <- repeat.data(obj, x)

  #
  prfit <- predict.gam(obj, x, se.fit=TRUE, type="response")$fit

  #
  rpois(num, prfit)
}



#' Compute Predicted Values for \code{logit.gam}
#'
probit.pv <- logit.pv
