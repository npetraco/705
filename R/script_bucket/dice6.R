# Sample from 1 through 6, 1000 times:
n    <- 1000
samp <- sample(c(1,2,3,4,5,6), size=n, replace=T)
samp

sum(samp==3)/n # Frequency of rolling a 3 in 1000 rolls
