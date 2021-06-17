#EVALUATION 4 


#YIM QUIROZ 17210623
#KEVIN MARQUEZ 17212923


#Read library(ggplot2)
library(ggplot2)
#Import the iris.csv
dataf <- iris
head(dataf)
#We define a scatter diagram
ggplot(dataf, aes(Petal.Length, Petal.Width)) + geom_point(aes(col=Species), size=4)
#We define the center which is the number of groups to which we are going to group = 3
set.seed(101)
irisCluster <- kmeans(dataf[,1:4], center=3, nstart=20)
irisCluster
#Let's compare the groups, the old and the new
table(irisCluster$cluster, dataf$Species)
#Read library(cluster)
library(cluster)
clusplot(iris, irisCluster$cluster, color=T, shade=T, labels=0, lines=0)