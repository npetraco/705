# Normal distribution example
x <- seq(-4,4,length.out=1000)
y <- dnorm(x, mean = 0, sd=1)
plot(x,y, typ="l", ylab="p(x)", main="Normal PDF")


# Student-t distribution
x <- seq(-4,4,length.out=1000)
y <- dt(x, df = 5)
plot(x,y, typ="l", ylab="p(x)", main="Student-T PDF")


# Uniform distribution example
x <- seq(-4,4,length.out=1000)
y <- dunif(x, min = -4, max = 4)
plot(x,y, typ="l", ylab="p(x)", main="Uniform PDF")


# F distribution example
x <- seq(0,5,length.out=1000)
y <- df(x, df1 = 5, df2 = 3)
plot(x,y, typ="l", ylab="p(x)", main="F PDF")


# Chi-square distribution example
x <- seq(0,20,length.out=1000)
y <- dchisq(x, df = 5)
plot(x,y, typ="l", ylab="p(x)", main="Chi-Sq PDF")


# Log Normal distribution example
x <- seq(0,4,length.out=1000)
y <- dlnorm(x, mean = 0, sd=1)
plot(x,y, typ="l", ylab="p(x)", main="Log-Normal PDF")


# Cauchy distribution examle
x <- seq(-4,4,length.out=1000)
y <- dcauchy(x, location = 0, scale = 1)
plot(x,y, typ="l", ylab="p(x)", main="Cauchy PDF")


# Gamma distribution example
x <- seq(0,4,length.out=1000)
y <- dgamma(x, shape = 3, rate = 4)
plot(x,y, typ="l", ylab="p(x)", main="Gamma PDF")


# Exponential distribution example
x <- seq(0,4,length.out=1000)
y <- dexp(x, rate = 3)
plot(x,y, typ="l", ylab="p(x)", main="Exponential PDF")


# Weibull distribution example
x <- seq(0,15,length.out=1000)
y <- dweibull(x, shape = 2, scale = 3) # Standard parameterization for Weibull
plot(x,y, typ="l", ylab="p(x)", main="Weibull PDF")
alp <- 2
sig <- 3
lam <- sig^(-alp)
f   <- function(y,v,l){v*l*y^(v-1) * exp(-l*y^v)} # Another common parameterization for Weibull
plot(x,f(x, v=alp, l=lam), typ="l", ylab="p(x)", main="Weibull PDF")


# Beta distribution example
x <- seq(0,1,length.out=1000)
y <- dbeta(x, shape1 = 5, shape2 = 2)
plot(x,y, typ="l", ylab="p(x)", main="Beta PDF")


# Binomial distribution example
x <- seq(0,10)
y <- dbinom(x, size = 10, prob = 0.4)
plot(x,y, typ="h", ylab="p(x)", main="Binomial PMF")


# Bernoulli distribution example
x <- seq(0,1)
y <- dbinom(x, size = 1, prob = 0.4)
plot(x,y, typ="h", ylab="p(x)", ylim=c(0,1), xaxt="n", lwd=4, main="Bernoulli PMF")
axis(1, at = c(0,1), labels = c("fail", "success"))


# Poisson distribution example
x <- seq(0,15)
y <- dpois(x, lambda = 6)
plot(x,y, typ="h", ylab="p(x)", main="Poisson PMF")
