# Data for some of Mr. Mayhew's seizure:
x <- c(49.9996,49.9994,49.9993,49.9996,49.9995,
       49.9995,49.9995,49.9994,49.9995,49.9994)
n <- length(x)

# a. **One-sided lower bound. The assumed "upper limit" is Infinity
# Estimate of the mean:
mu.hat <- mean(x)

# Standard deviation of the data:
sdx.hat <- sd(x)

# Standard error of the mean estimate:
se.hat <- sd(x)/sqrt(n)

# Compute tc for given sample size and chosen confidence level
conf  <- 0.95
alpha <- 1-conf
tc    <- qt(1 - alpha, df = n-1) # **This is the big change. 
# Now we don't split the alpha between the tails.
# For the lower bound we put all the alpha on 
# the lower tail. Therefore -tc!

# Put the One-sided lower bound CI together:
mu.hat.lo <- mu.hat - tc*se.hat
c(mu.hat.lo, Inf)


# b. **One-sided upper bound. The assumed "lower limit" is -Infinity
# Everything is the same except now we put all the alpha in the upper tail.
mu.hat.hi <- mu.hat + tc*se.hat
c(-Inf, mu.hat.hi)
