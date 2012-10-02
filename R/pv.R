# This file documents all predicted-value functions for gam.zelig package

#' Compute Predicted Values for \code{logit.gam}
#'
#' @note \code{logit.pv} is not intended to be called directly.
#' @param obj a \code{zelig} object specifying a GAM fit to the x \code{setx}
#'   object
#' @param x a \code{setx} object specifying counterfactuals
#' @param inv the inverse-link function
#' @param num an integer specifying the number of simulations to produce
#' @return the predicted values for the given data and regression
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @export
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
#' @note \code{normal.pv} is not intended to be called directly.
#' @param obj a \code{zelig} object specifying a GAM fit to the x \code{setx}
#'   object
#' @param x a \code{setx} object specifying counterfactuals
#' @param inv the inverse-link function
#' @param num an integer specifying the number of simulations to produce
#' @return the predicted values for the given data and regression
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @export
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
#' @note \code{poisson.pv} is not intended to be called directly.
#' @param obj a \code{zelig} object specifying a GAM fit to the x \code{setx}
#'   object
#' @param x a \code{setx} object specifying counterfactuals
#' @param inv the inverse-link function
#' @param num an integer specifying the number of simulations to produce
#' @return the predicted values for the given data and regression
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @export
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
#' @note \code{probit.pv} is not intended to be called directly.
#' @param obj a \code{zelig} object specifying a GAM fit to the x \code{setx}
#'   object
#' @param x a \code{setx} object specifying counterfactuals
#' @param inv the inverse-link function
#' @param num an integer specifying the number of simulations to produce
#' @return the predicted values for the given data and regression
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @export
probit.pv <- logit.pv
