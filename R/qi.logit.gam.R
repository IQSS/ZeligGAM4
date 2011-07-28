#' Compute Quantities of Interest for the Zelig Model logit.gam
#' @param obj a zelig object
#' @param x a setx object
#' @param x1 an optional setx object
#' @param y ...
#' @param num an integer specifying the number of simulations to compute
#' @param param a parameters object
#' @return a list of key-value pairs specifying pairing titles of quantities of interest
#'         with their simulations
#' @export
qi.logit.gam <- function(obj, x=NULL, x1=NULL, y=NULL, num=1000, param=NULL) {
  inv <- linkinv(param)

  ev1 <- compute.ev(obj, x, inv, num)
  pv1 <- logit.pv(obj, x, inv, num)

  ev2 <- compute.ev(obj, x1, inv, num)
  pv2 <- logit.pv(obj, x1, inv, num)

  list(
       "Expected Value: E(Y|X)" = ev1,
       "Predicted Value: Y|X" = pv1,
       "Expected Value: E(Y|X1)" = ev2,
       "Predicted Value: Y|X1" = pv2,
       "First Differences: E(Y|X1) - E(Y|X)" = ev2-ev1
       )
}
