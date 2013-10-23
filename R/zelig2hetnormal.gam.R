#' Interface between the Zelig Model hetnormal.gam and
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param sformula a formula for variance
#' @param k the number of knot points to add to basis spline
#' @param ... additional parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2hetnormal.gam <- function (formula, sform, k=5, ..., data) {
    
  zbs<-zeligBuildSpline(formula, k, data)
  zbsformula<-zbs$formula
  zbsdata<-zbs$data
  print(zbsformula)
  print(dim(zbsdata))

  z(
       .function=tlm,
       #formula=list(lform=zbsformula),
       lform = zbsformula,
       sform = as.formula(sform),            # This should be standardized to zelig notation.  See parse.formula()
       #method = "tlm",
       data = zbsdata,
       start = list(dof = 30),
       estDof = FALSE
       )
}
