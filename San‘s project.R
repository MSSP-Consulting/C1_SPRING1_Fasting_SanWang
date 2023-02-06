library(readxl)
library(tidyverse)
data <- read_excel("data.xlsx")

#newdata <- data %>% select(FatMass,data$)

colnames(data)
data <- data %>% rename(Cholesterol36HFast = Cholesterol26HFast)

cols12 <- grep("12",names(data))
cols36 <- grep("36",names(data))

newdata12 <- data %>% select((1:16),cols12)
newdata36 <- data %>% select((1:16),cols36)
newdata12 <- as.data.frame(newdata12)


newdata12 <- as.data.frame(lapply(newdata12,as.numeric))
newdata36 <- as.data.frame(lapply(newdata36,as.numeric))
newdata12_cor <- newdata12 %>% select(-"Name")
newdata36_cor <- newdata36 %>% select(-"Name")
cor(newdata12_cor)

#need to change name first
#rbind(newdata12,newdata36)
#data[110] is data$Cholesterol26HFast

