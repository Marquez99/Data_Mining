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

training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

install.packages(e1071)
#USE LIBRRY E1071
library(e1071)
classifier = naiveBayes(x = training_set[-3],y = training_set$Purchased)

#PREDICT TEST SET RESULTS
y_pred = predict(classifier, newdata = test_set[-3])
y_pred

cm = table(test_set[, 3], y_pred)
cm

#TRAINING SET CODING
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'Naive Bayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

#TEST SET CODING IN PARTS AND USE THE VECTOR
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Naive Bayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

