#EVALUATION 4 


#YIM QUIROZ 17210623
#KEVIN MARQUEZ 17212923


#Read library(ggplot2)
library(ggplot2)
#Import the iris.csv
dataf <- iris
head(dataf)

lw = dataf[1:2]
lw2 = dataf[3:4]
lw3 = dataf[c(1,4)]

ELBOW <- function(dataset){set.seed(6)
  wcss = vector()
  for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
  plot(1:10, wcss, type = 'b',main = paste('The Elbow Method'),xlab = 'Number of clusters',ylab = 'WCSS')}

ELBOW(lw)
ELBOW(lw2)
ELBOW(lw3)

#We define a scatter diagram
ggplot(dataf, aes(Petal.Length, Petal.Wilth)) + geom_point(aes(col=Species), size=4)

#We define the center which is the number of groups to which we are going to group = 3
set.seed(101)
irisCluster <- kmeans(dataf[,1:4], center=3, nstart=20)
irisCluster

#Let's compare the groups, the old and the new
table(irisCluster$cluster, dataf$Species)

#Read library(cluster)
library(cluster)

#PLOT OF THE PROBLEM
clusplot(iris, irisCluster$cluster, color=T, shade=T, labels=0, lines=0)