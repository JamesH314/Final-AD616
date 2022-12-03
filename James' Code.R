# Initial place for coding by James

Peak <- read.csv("PeakData.csv", header = T)
Peak_1 <- Peak[-1,-1]
View(Peak_1)

NonPeak <- read.csv("NonPeakData.csv", header = T)
NonPeak_1 <- NonPeak[-1,]
View(NonPeak_1)

#useful functions
upper.tri()
rowSums()

#coding

p_1 <- unlist(as.list(t(Peak_1)))
p_1

PeakSim <- c(rep(0,441))
for (i in 1:441) {
  PeakSim[i] <- mean(rnorm(10000, mean = p_1[i], sd = p_1[i]/5))
}

PS_1 <- matrix(data = PeakSim, nrow = 21, ncol = 21)
PS_1[upper.tri(PS_1, diag = F)]/4


