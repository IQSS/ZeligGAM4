#' @S3method anova zelig
anova.zelig <- function (object, ...) {
  anova(object$result, ...)
}
