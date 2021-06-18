
Instituto Tecnológico de Tijuana
Subdirección Académica Departamento de Sistemas y Computación

Semestre: Febrero-Junio 2021

Materia: Mineria de datos

Profesor: Jose Christian Romero Hernandez

Alumno: 17212923 Marquez Kevin
        17210623 Quiroz Yim 

Fecha: 17/junio/21

#EVALUATION 4 


1. #Read library(ggplot2)
library(ggplot2)
#Import the iris.csv
dataf <- iris
head(dataf)

2. #VECTORS SIE FOR ELBOW METHOD
lw = dataf[1:2]
lw2 = dataf[3:4]
lw3 = dataf[c(1,4)]

3. #ELBOW FUNCTION VECTOR
ELBOW <- function(dataset){set.seed(6)
  wcss = vector()
  for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
  plot(1:10, wcss, type = 'b',main = paste('The Elbow Method'),xlab = 'Number of clusters',ylab = 'WCSS')}

ELBOW(lw)
ELBOW(lw2)
ELBOW(lw3)

# YIM 

4. #We define a scatter diagram
ggplot(dataf, aes(Petal.Length, Petal.Wilth)) + geom_point(aes(col=Species), size=4)

5. #We define the center which is the number of groups to which we are going to group = 3
set.seed(101)
irisCluster <- kmeans(dataf[,1:4], center=3, nstart=20)
irisCluster

6. #Let's compare the groups, the old and the new
table(irisCluster$cluster, dataf$Species)

7. #Read library(cluster)
library(cluster)

8. #PLOT OF THE PROBLEM
clusplot(iris, irisCluster$cluster, color=T, shade=T, labels=0, lines=0)