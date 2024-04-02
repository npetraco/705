library(outliers)

x <- c(266, 273, 273, 274, 275, 276, 276, 276, 277, 277,
       278, 278, 278, 279, 279, 280, 281, 282, 282, 284)

# Check data's normality visually:
hist(x)
qqnorm(x)
qqline(x)

# Standardize scale
zx <- (x-mean(x))/sd(x)
qqnorm(zx,  xlim = c(-3,3), ylim = c(-3,3))
qqline(zx)

# Perform Shapiro-Wilk test for normality of data
shapiro.test(x)

# Grubbs test(s): Clunky.....
?grubbs.test
grubbs.test(x, type = 10)
grubbs.test(x, type = 10, opposite = T)
grubbs.test(x, type = 11)
grubbs.test(x, type = 20)
