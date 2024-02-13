# The "measurands" (parameters):
mu    <- 50
sigma <- 10

# Pr(30 < X < 70):
pnorm(70, mean=mu, sd=sigma) - pnorm(30, mean=mu, sd=sigma)

# Extra: What would the code look like if we wanted Pr(X > 70ng/mL)?:
1 - pnorm(70, mean=mu, sd=sigma)


# Quantile for the 90th percentile:
qnorm(0.9, mean=mu, sd=sigma)
