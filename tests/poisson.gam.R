library(ZeligGAM)
library(mgcv)

set.seed(0) 
n<-400
sig<-2
x0 <- runif(n, 0, 1)
x1 <- runif(n, 0, 1)
x2 <- runif(n, 0, 1)
x3 <- runif(n, 0, 1)
f0 <- function(x) 2 * sin(pi * x)
f1 <- function(x) exp(2 * x)
f2 <- function(x) 0.2*x^11*(10*(1-x))^6+10*(10*x)^3*(1-x)^10
f3 <- function(x) 0*x
f <- f0(x0) + f1(x1) + f2(x2)
g<-exp(f/4)
y<-rpois(rep(1,n),g)
my.data <- as.data.frame(cbind(y, x0, x1, x2, x3))

z.out <- zelig(y~s(x0)+s(x1)+s(x2)+s(x3), model="poisson.gam", data=my.data)
summary(z.out)
plot(z.out,pages=1)

# Set explanatory variables to their default (mean/mode) values, with
# high (80th percentile) and low (20th percentile) values:
x.high <- setx(z.out,  x3= quantile(my.data$x3, 0.8))
x.low <- setx(z.out, x3 = quantile(my.data$x3, 0.2))

# Generate first differences for the effect of high versus low x3 on y:
s.out <- sim(z.out, x=x.high, x1=x.low)
summary(s.out)

# Generate a second set of fitted values and a plot:
plot(s.out)

