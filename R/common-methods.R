# This file is a quick-hack to fix a mistake placed in Zelig Core on Oct. 1st.
# The issue in Zelig should be fixed by November `12. :(

#' @S3method coef zelig
coef.zelig <- function (obj, ...)
  coef(obj, ...)

#' @S3method vcov zelig
vcov.zelig <- function (obj, ...)
  vcov(obj, ...)

#' @S3method plot zelig
plot.zelig <- function (obj, ...)
  plot(obj, ...)
