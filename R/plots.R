#' Plot Simualted Quantities of Interest for GAM Zelig Models
#' @usage \method{plot}{sim.logit.gam}(x, ...)
#' @param x a simulated GEE object containing simulations of quantities of
#'   interest
#' @param ... ignored parameters
#' @S3method plot sim.logit.gam
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
plot.sim.logit.gam <- normal.plot <- function (x, ...) {

  # store device settings
  original.par <- par(no.readonly=TRUE)

  if (is.null(x$x))
    return()

  panels <- if (is.null(x$x1)) {
    palette <- rep("black", 3)
    matrix(1:2, nrow=2, ncol=1)
    # How the layout window will look:
    # +---+
    # | 1 |
    # +---+
    # | 2 |
    # +---+
  }

  else {
    palette <- c('red', 'navy', 'black')
    matrix(c(1, 2, 3, 4, 5, 5), nrow=3, ncol=2, byrow=TRUE)
    # How the layout window will look:
    # +-------+
    # | 1 | 2 |
    # +-------+
    # | 3 | 4 |
    # +-------+
    # |   5   |
    # +-------+
  }

  layout(panels)

  # extract quantities of interest
  ev1 <- x$qi$ev1
  pv1 <- x$qi$pv1
  ev2 <- x$qi$ev2
  pv2 <- x$qi$pv2
  fd <- x$qi$fd

  GAMplot(ev1, "Expected Value (for X): E(Y|X)", palette[1])
  GAMplot(pv1, "Predicted Value (for X): Y|X", palette[1])

  if (!is.null(x$x1)) {
    GAMplot(ev2, "Expected Value (for X1): E(Y|X1)", palette[2])
    GAMplot(pv2, "Predicted Value (for X1): Y|X1", palette[2])
    GAMplot(fd, "First Difference: E(Y|X1) - E(Y|X)", palette[3])
  }
    
  # return plotting device
  par(original.par)
}

#' Plot Simualted Quantities of Interest for GAM Zelig Models
#' @usage \method{plot}{sim.normal.gam}(x, ...)
#' @param x a simulated GEE object containing simulations of quantities of
#'   interest
#' @param ... ignored parameters
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @S3method plot sim.normal.gam
plot.sim.normal.gam <- normal.plot

#' Plot Simualted Quantities of Interest for GAM Zelig Models
#' @usage \method{plot}{sim.poisson.gam}(x, ...)
#' @param x a simulated GEE object containing simulations of quantities of
#'   interest
#' @param ... ignored parameters
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @S3method plot sim.poisson.gam
plot.sim.poisson.gam <- normal.plot

#' Plot Simualted Quantities of Interest for GAM Zelig Models
#' @usage \method{plot}{sim.probit.gam}(x, ...)
#' @param x a simulated GEE object containing simulations of quantities of
#'   interest
#' @param ... ignored parameters
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
#' @S3method plot sim.probit.gam
plot.sim.probit.gam <- normal.plot



#' Plot Either Bar or Density Plot
#' @param x a vector containing quantities of interest
#' @param main the main title of the plot
#' @param col the color of the line-plot
#' @return NULL (invisibly)
GAMplot <- function (x, main, col) {
  if (is.factor(x))
    plotfactor(x, main, col)
  else
    plotdensity(x, main, col)

  invisible(NULL)
}


#' Plot Density Graphs for GEE Quantities of Interest
#' @param x a vector containing quantities of interest
#' @param main the main title of the plot
#' @param col the color of the line-plot
plotdensity <- function (x, main, col) {
  if (all(is.na(x)))
    return()
  else if (any(is.na(x)))
    warning("\"", main, "\" contains missin values. Omitting")

  density <- density(x, na.rm=TRUE)
  plot(density(x), main = main, col = col)
}


#' Plot Density Graphs for GEE Quantities of Interest
#' @param x a vector containing quantities of interest
#' @param main the main title of the plot
#' @param col the color of the line-plot
plotfactor <- function (x, main, col) {
  if (all(is.na(x)))
    return()
  else if (any(is.na(x)))
    warning("\"", main, "\" contains missin values. Omitting")

  barplot(table(x), main=main, col=col)
}
