library(frequtils)

data(gas)
x <- gas$C4.alkylbenzene.unid.5
hist(x)

# Standardize the data
z <- (x-mean(x))/sd(x)

# QQ-plot wrt/ standard normal distribution:
qqnorm(z, xlim=c(-3,3), ylim=c(-3,3))
qqline(z)

# A more general way to make a QQ-plot:
ref.samp <- rnorm(length(x), mean = 0, sd = 1)                    # Get a sample from a reference distribution.
qqplot(ref.samp, z, main="QQ-Plot", xlim=c(-3,3), ylim=c(-3,3))   # qqplot() orders and plots both the reference and the empirical sample against each other
qqline(z, distribution = function(p){qnorm(p, mean = 0, sd = 1)})

# This version gives the same result as qqnorm() followed by qqline()
z.norm <- qnorm( ppoints(z), mean = 0, sd = 1)
qqplot(z.norm, z, main="QQ-Plot", xlim=c(-3,3), ylim=c(-3,3))   # qqplot() orders and plots both the reference and the empirical sample against each other
qqline(z, distribution = function(p){qnorm(p, mean = 0, sd = 1)})

# This is a QQ-plot between two arbitrary samples
plot(sort(ref.samp), sort(z))
