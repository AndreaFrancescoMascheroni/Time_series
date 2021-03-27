library(haven)
#read.table("/Users/mascheroni/Documents/Angrist1990/cwhsb.dta", header=TRUE, skip=3,sep="\");
Dataset1 <- read_dta("/Users/mascheroni/Documents/Angrist1990/cwhsb.dta")
View(Dataset1)

Dataset2 <- read_dta("/Users/mascheroni/Documents/Angrist1990/cpi_angrist1990.dta")
View(Dataset2)

Dataset3 <- read_dta("/Users/mascheroni/Documents/Angrist1990/cwhsa.dta")
View(Dataset3)

Dataset4 <- read_dta("/Users/mascheroni/Documents/Angrist1990/dmdcdat.dta")
View(Dataset4)

Dataset5 <- read_dta("./Angrist1990/cwhsc_new.dta")
View(Dataset5)

Dataset6 <- read_dta("/Users/mascheroni/Documents/Angrist1990/sipp2.dta")
View(Dataset6)

#Draft_Lottery_Numbers.xls
