#' ZeligGAM
#' 
#' \tabular{ll}{
#'   Package: \tab ZeligGAM\cr
#'   Version: \tab 0.7-0\cr
#'   Date: \tab 2012-10-16\cr
#'   Depends: Zelig (>= 4.0-11), gam, mgcv\cr
#'   License: \tab GPL version 2 or newer\cr
#' }
#'
#' General Additive Models extend GLM's to support the application of smoothing
#' functions to the predictor terms.
#'
#' @name ZeligGAM-package
#' @aliases ZeligGAM
#' @docType package
#' @author Matt Owen \email{mowen@@iq.harvard.edu}, Kosuke Imai, Olivia Lau,
#' and Gary King 
#' @importFrom Zelig describe param qi
#' @author Skyler Cranmer
#' @keywords package, GAM, Generalized Additive Models, Zelig
NULL

# Block missing variable notification
.fitted <- NULL
