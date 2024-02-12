library(frequtils)

# Slice out the data of interest:
row.idxs <- which(linton$Condition == "GEN" &
                    linton$Segment   == 1)

dat      <- linton[row.idxs, ]
head(dat)

vel <- dat$AverageAbsoluteVelocity

# Histogram, sample mean and median:
hist(vel)
mean(vel)
median(vel)
