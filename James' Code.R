# Initial place for coding by James

Peak <- read.csv("PeakData.csv", header = T)
Peak_1 <- Peak[-1,]
View(Peak_1)

NonPeak <- read.csv("NonPeakData.csv", header = T)
NonPeak_1 <- NonPeak[-1,]
View(NonPeak_1)

#useful functions
upper.tri()
rowSums()
