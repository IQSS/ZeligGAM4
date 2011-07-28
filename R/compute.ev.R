# This file documents all expected-value functions for gam.zelig package

#' Simulate Expected Values for GAM Models
#'
compute.ev <- function (obj, x, inv, num) {
  # return NA for bad setx objects
  if (is.null(x))
    return(NA)

  # get actual fitted model object
  obj <- obj$result

  # get appropriate data.frame
  x <- repeat.data(obj, x)

  #
  predictions <- predict(obj, x, se.fit=TRUE, type="link")
  evfit <- predictions$fit
  evse <- predictions$se.fit

  rnorm(num, mean=inv(evfit), sd=evse)
}
