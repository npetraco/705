library(frequtils)
library(dixonTest)

data("shedder")

loc <- "LU"
dat <- shedder[shedder$location==loc, c(3,4,5)]

conf  <- 0.95
alpha <- 1 - conf
dinfo <- array(0, c(nrow(dat), 3))
for(i in 1:nrow(dat)) {
  
  x <- log(as.numeric(dat[i,]))
  
  tinfo      <- dixonTest(x, alternative = "two.sided", refined = T)
  outliersQ  <- (tinfo$p.value < alpha)
  dinfo[i, ] <- c(tinfo$statistic, tinfo$p.value, outliersQ)
  
}

colnames(dinfo) <- c("Q-statistic", "p-value", "Poss. Outliers?")
dinfo
dinfo[,3]

