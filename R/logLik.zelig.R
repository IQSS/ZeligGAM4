#' @S3method logLik zelig
logLik.zelig <- function (object, ...) {
  logLik(object$result, ...)
}
