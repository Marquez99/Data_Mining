# Data_Mining

### Tecnológico   Nacional   de   México
### Instituto Tecnológico de Tijuana

#### Subdirección Académica

#### Departamento de Sistemas y Computación



#### SEMESTRE:
Febrero - Julio 2021

#### MATERIA
TIF-1003 TI8A Minería de Datos


#### NOMBRE Y NÚMERO DE CONTROL DEL ALUMNO:
Márquez Enríquez Kevin Edwin		17212923
Quiroz Montes Yim Yetzhael          17210623

#### NOMBRE DEL DOCENTE:
Jose Christian Romero Hernandez


Tijuana, Baja California				
</p>



#PRACTICA 1 UNIDAD 3

#YIM QUIROZ 17212906
#KEVIN MARQUEZ 17212923
1. #IMPORT THE CSV
dataset <- read.csv(file.choose())
dataset <- dataset[, 3:5]

2. #READ LIBRARY(caTools)
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
3. # GET SCALE OUT OF TRAINING_SET AND TEST_SET
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])

classifier = glm(formula = Purchased ~ .,
                 family = binomial,
                 data = training_set)
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
4. #PREDICT TEST SET RESULTS
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred


cm = table(test_set[, 3], y_pred)
cm

#1
5. #READ LIBRARY ggplo2
library(ggplot2)
#DECLARING THE GGPLOT WE ARE GOING TO USE

6. #training_set
ggplot(training_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + stat_smooth(method="glm", 
                                                                                       method.args=list(family="binomial"), se=FALSE)

#2
ggplot(training_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

7. #test_set
#3
ggplot(test_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

#4
ggplot(test_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

#5 
8. #READ LIBRARY(ElemStatLearn)
install.package('ElemStatLearn')
#READ LIBRARY "ElemStatLearn"
library(ElemStatLearn)

9. #TRAINING SET CODING IN PARTS AND USE THE VECTOR
set = training_set

X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

10. #TEST SET CODING IN PARTS AND USE THE VECTOR
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))