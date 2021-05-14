#Practice 1
#MARQUEZ ENRIQUEZ KEVIN EDWIN 17212923
#QUIROZ YIM 17210623

#Choose the File for the practice
fifa <- read.csv(file.choose())

head(fifa)
tail(fifa)
str(fifa)
summary(fifa)

#This is the library to draw the graphics
library(ggplot2)

#Point scatter plot
v <- ggplot(fifa, aes(x=Ball.possession.., y=Game, color=Team))
v + geom_point() + xlab("Ball possession") + ylab("Game")


#FACET PLOT
k <- ggplot(fifa, aes(x=Ball.possession..))
k + geom_histogram(binwidth = 10, aes(fill=Team),
                   color="Black") + facet_grid(Team~., scales = "free") 


#Histograms and Density Plots
u <- ggplot(fifa, aes(x=Ball.possession..))

f <- u + geom_density(aes(fill=Team), position = "stack")

f <- u + geom_histogram(binwidth = 10, aes(fill=Team), color="Black")

f + xlab("Possession") + ylab("Passes") + ggtitle("Passes by Game") + 
  theme(axis.title.x=element_text(color = "DarkBlue", size=25),
        axis.title.y = element_text(color="DarkRed", size=25),
        axis.text.x = element_text(size = 15),
        axis.text.y = element_text(size= 15),
        legend.title = element_text (size=20),
        legend.text = element_text (size = 15),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text (color = "Black", size = 30))
