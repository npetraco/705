# Bootstrap fail:
x <- c(1.891304, 2.909405, 1.417487, 1.386373, 1.070313, 1.031299, 2.010315,   
       2.537558, 1.424424, 2.286100, 1.385528, 1.608154, 1.102906, 2.753568,    
       1.010469)

B <- 2000
n <- length(x)

boot.samp.max <- sapply(1:B, function(i){max(sample(x, size = n, replace = T))})
hist(boot.samp.max)
