#Clean the Environment
rm(list = ls(all.names = TRUE))
#Install the required library
install.packages("readr")
install.packages("dplyr")
install.packages("tidyverse")

#Load the library
library(readr)
library(dplyr)
library(tidyverse)

#load the data set
Terrosim<-read.csv("D:\\INTERNSHIP\\dTerrosim\\Global Terrorism data\\globalterrorismdb_0718dist.csv")
View(Terrosim)

#Finding the Stracture and  statical value of the data
str(Terrosim)
summary(Terrosim)

#Finding the null value
sum(is.na(Terrosim))

# Romoved the Blank RoW or Row without Data
New_Terrosim_Data<-Terrosim[-c(5:7,17:19,24:26,28,31:34,43:58,60:69,73:81,86:97,109,111:125,135:137)]
View(Terrosim_Data)

#Finding the null value ni new data set
sum(is.na(New_Terrosim_Data))

# Replaced the value with "0"
New_Terrosim_Data[is.na(New_Terrosim_Data)]=0
Terrosim_Data<-New_Terrosim_Data

write.csv(New_Terrosim_Data,"D:\\INTERNSHIP\\dTerrosim\\Global Terrorism data\\Terrosim_Data.csv")