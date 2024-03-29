# Data
x <- c(1.52005,1.52003,1.52001,1.52004,1.52000,1.52001,1.52008,1.52011,1.52008,
       1.52008,1.52008)
n <- length(x)

# Estimate of mean:
mu.hat <- mean(x)

# Standard deviation of the data
sdx.hat <- sd(x)

# Standard error of the mean estimate
se.hat <- sd(x)/sqrt(n)

# Compute tc for given sample size and chosen confidence level
conf  <- 0.99
alpha <- 1-conf
tc    <- qt(1 - alpha/2, df = n-1)

# Put the CI together:
mu.hat.lo <- mu.hat - tc*se.hat
mu.hat.hi <- mu.hat + tc*se.hat
c(mu.hat.lo, mu.hat.hi)
