# Data:
x <- c(18.438, 18.440, 18.468, 18.437)
n <- length(x)

# a. Sample average:
mu.hat <- mean(x)
mu.hat

# b. Sample SD:
sdx.hat <- sd(x)
sdx.hat

# c. SE of sample average:
se.mu.hat <- sd(x)/sqrt(n)
se.mu.hat

# d. %Relative SD:
rel.sdx <- sdx.hat/mu.hat * 100
rel.sdx

# e. Approximate sampling distribution for the mean:
mu.hat.axis <- seq(from=18.42, to=18.47, length.out=1000)
lik         <- dnorm(mu.hat.axis, mean = mu.hat, sd = sdx.hat/sqrt(n))
plot(mu.hat.axis, lik, typ="l")             # Approximate sampling distribution for the mean
points(mu.hat, 0, pch=16)                   # Show the sample mean
points(mu.hat + se.mu.hat, 0, pch=4, lwd=2) # Show the sample se
