# This file documents all expected-value functions for gam.zelig package

#' Simulate Expected Values for GAM Models
#' @note \code{compute.ev} is not intended to be called directly.
#' @param obj a \code{zelig} object specifying a GAM fit to the x \code{setx}
#'   object
#' @param x a \code{setx} object specifying counterfactuals
#' @param inv the inverse-link function
#' @param num an integer specifying the number of simulations to produce
#' @return the predicted values for the given data and regression
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
compute.ev <- function (obj, x, inv, num) {
  # return NA for bad setx objects
  if (is.null(x))
    return(NA)

  # get actual fitted model object
  obj <- GetObject(obj)

  # get appropriate data.frame
  x <- repeat.data(obj, x)

  #
  predictions <- predict(obj, x, se.fit=TRUE, type="link")
  evfit <- predictions$fit
  evse <- predictions$se.fit

  rnorm(num, mean=inv(evfit), sd=evse)
}
