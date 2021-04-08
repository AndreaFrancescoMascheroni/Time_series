library(haven)
library(RStata)
chooseStataBin()
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
install.packages('RStata')

if (!require(RStata)) install.packages("RStata"); 
library(RStata) # this will install RStata if not already installed
chooseStataBin()

#stata("Angrist1990_Fig3.do", 
#      stata.path = "/var/folders/f5/r5r171jd2g77lyj9vkrrql600000gq/T//RtmpuXBTQy/downloaded_packages/RStata", # yours probably differs: use the chooseStataBin() command on windows or linux machines; on Macs, right click on the Stata app, select "Show Package Contents", then see what's in the Contents/MacOS/ directory
#      stata.version = 13)  # again, specify what _you_ have

stata_src <- '
version 10
set more off
sysuse auto
reg mpg weight
'
stata(stata_src)
stata("/Users/mascheroni/Documents/master/secondo/Time_series/dataverse_files/Angrist1990_Fig3.do")
stata(stata_src)
stata("Angrist1990_Fig3.do")
