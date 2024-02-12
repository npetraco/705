library(frequtils)

# CV% ethylbenzene in gasoline
data(gas)
?gas # Read about it

hist(gas$Ethylbenzene)
mean(gas$Ethylbenzene)
sd(gas$Ethylbenzene)
cv <- sd(gas$Ethylbenzene)/mean(gas$Ethylbenzene)*100
cv


# Shedder data:
data("shedder")
?shedder # Read about it

row.idxs <- which(shedder$location=="LU")
dat      <- shedder[row.idxs, ]

# CV%:
cvp <- sd(dat$DNA.amt1)/mean(dat$DNA.amt1) * 100

mean(dat$DNA.amt1)
sd(dat$DNA.amt1)
cvp

#CV% separated out by donor:
donor.means <- apply(dat[,c(3:5)], MARGIN = 1, mean)
donor.sds   <- apply(dat[,c(3:5)], MARGIN = 1, sd)

hist(donor.sds/donor.means * 100, bre=20)
