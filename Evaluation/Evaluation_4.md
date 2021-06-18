

<p align="center">Instituto Tecnológico de Tijuana</p>
<p align="center">Subdirección Académica Departamento de Sistemas y Computación</p>

<p align="center">Semestre: Febrero-Junio 2021</p>

<p align="center">Materia: Mineria de datos</p>

<p align="center">Profesor: Jose Christian Romero Hernandez</p>

<p align="center">Alumno: 17212923 Marquez Kevin</p>
        <p align="center">17210623 Quiroz Yim </p>

<p align="center">Fecha: 17/junio/21</p>

#EVALUATION 4 


1. #Read library(ggplot2)
~~~
library(ggplot2)
~~~
#Import the iris.csv
~~~
dataf <- iris
head(dataf)
~~~
2. Vectors sie for elbow method
~~~
lw = dataf[1:2]
lw2 = dataf[3:4]
lw3 = dataf[c(1,4)]
~~~
3. Elbow function vector
~~~
ELBOW <- function(dataset){set.seed(6)
  wcss = vector()
  for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
  plot(1:10, wcss, type = 'b',main = paste('The Elbow Method'),xlab = 'Number of clusters',ylab = 'WCSS')}

ELBOW(lw)
ELBOW(lw2)
ELBOW(lw3)
~~~
 
4. #We define a scatter diagram
~~~
ggplot(dataf, aes(Petal.Length, Petal.Wilth)) + geom_point(aes(col=Species), size=4)
~~~
5. #We define the center which is the number of groups to which we are going to group = 3
~~~
set.seed(101)
irisCluster <- kmeans(dataf[,1:4], center=3, nstart=20)
irisCluster
~~~
6. #Let's compare the groups, the old and the new
~~~
table(irisCluster$cluster, dataf$Species)
~~~
7. #Read library(cluster)
~~~
library(cluster)
~~~
8. #Plot the problem
~~~
clusplot(iris, irisCluster$cluster, color=T, shade=T, labels=0, lines=0)
~~~