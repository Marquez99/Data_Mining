#EVALUATION 3 UNIT 3


#YIM QUIROZ 17212906
#KEVIN MARQUEZ 17212923

#LOCATION ON THE ACTUAL DICTORY
getwd()

#SET THE NEW DIRECTORY
setwd("C:/Users/kedwi/Documents/R/DataMining1/MachineLearning/LogisticRegression")
getwd()

#SET DATASET AND PUT THE VEXTOR SIZE
dataset <- read.csv('Social_Network_Ads.csv')
dataset <- dataset[, 3:5]


dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

library(caTools)

#SPLIT THE TRAINING AND TEST SET
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
