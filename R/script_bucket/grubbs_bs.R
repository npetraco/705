library(frequtils)
library(extraDistr)

x <- c(266, 273, 273, 274, 275, 276, 276, 276, 277, 277,
       278, 278, 278, 279, 279, 280, 281, 282, 282, 284)


x.md <- median(x)
x.s  <- mad(x)
n    <- length(x)
grubbs.parametric.bs.test(
  xdat            = x,
  rdist.func      = rlst,                                        # Data’s dist
  rdist.args.list = list(n = n, df=n-1, mu = x.md, sigma = x.s), # dist’d params
  num.B           = 2000)
