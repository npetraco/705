# a. Pr(-1.96 < Z < 1.96):
pnorm(1.96) - pnorm(-1.96)

# b. Pr(-2.4 < Z < 3.5):
pnorm(3.5) - pnorm(-2.4)

# c. Pr(Z > 0.5) = 1 – Pr(Z < 0.5):
1 - pnorm(0.5)

# Extra question answer: For a uniform distribution, the code would change to:
# Pr(-1.96 < Z < 1.96):
punif(1.96, min = -3, max = 3) - punif(-1.96, min = -3, max = 3)

# b. Pr(-2.4 < Z < 3.5):
punif(3.5, min = -3, max = 3) - punif(-2.4, min = -3, max = 3)

# c. Pr(Z > 0.5) = 1 – Pr(Z < 0.5):
1 - punif(0.5, min = -3, max = 3)

