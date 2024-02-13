mu.log    <- 5.5
sigma.log <- 32

# Pr(-7 < log(X) < 6): (cf. log-amounts in cv_rsd.R)
plnorm(6, meanlog=mu.log, sdlog=sigma.log) - plnorm(-7, meanlog=mu.log, sdlog=sigma.log)

# How many ng is the range?:
exp(6)
exp(-7)


# Extra: What does the distribution with these parameters look like?
xx <- seq(from=0, to=10, length.out=1000)
yy <- dlnorm(xx, meanlog=mu.log, sdlog=sigma.log)
plot(xx,yy, typ="l")


samp <- rlnorm(10000, meanlog=mu.log, sdlog=sigma.log)
hist(log(samp))

