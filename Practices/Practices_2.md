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



# 1.Import the Social_Network_Ads csv
dataset = read.csv('Social_Network_Ads.csv')
#Read the data set
dataset = dataset[3:5]

# 2.Declare the factor = of the data set and read it
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

# 3. Declare the factor = of the data set and read it
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# 4. Get scale out of training_set and test_set
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

# 5.Fitting K-NN to the Training set and Predicting the Test set results
library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5,
             prob = TRUE)

# 6.Making the Confusion Matrix cm
cm = table(test_set[, 3], y_pred)

# 7.We read the ElemStatLearn library
library(ElemStatLearn)
#View training_set results x1, x2
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

# 8.We read the ElemStatLearn library
library(ElemStatLearn)
#View test_set results x1, x2
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))