#EVALUATION UNIT 2
#MARQUEZ KEVIN 17212923
#QUIROZ YIM 17210623

#Library to do the Graphic representation of the results
library(ggplot2)

#Get the directory of the Actual Working Space
getwd()

#Change working directory 
setwd("C:/Users/kedwi/Documents/R/Data_Mining/Datasets")

#Get the working directory 
getwd()

#Import the dataframe
df <- read.csv("Project-Data.csv")

head(df)

#Delete useless data

filter_df <- (df$Genre=="action" | df$Genre=="adventure" | df$Genre=="animation" | df$Genre=="comedy" | df$Genre=="drama") & (df$Studio=="Buena Vista Studios" | df$Studio=="Fox" | df$Studio=="Paramount Pictures" | df$Studio=="Sony" | df$Studio=="Universal" | df$Studio=="WB")

# Show the first rows data of the file to use
head(df)

# Show the lat rows of the file
tail(df)

#Summary of the movies
summary(df)


#Show the new filter
head(filter_df)

# Rename the columns 
colnames(df) <- c("Day_Week","Director","Genre","Title","Release_Date","Studio","Adjusted Gross","Budget","Gross","IMDb_Rating","MovieLens_Rating","Overseas","Overseas%","Profit","Profit%","Runtime","US","GrossPor")

# Filter the data to eliminate unnecessary data
filter_movies <- (df$Genre=="action" | df$Genre=="adventure" | df$Genre=="animation" | df$Genre=="comedy" | df$Genre=="drama") & (df$Studio=="Buena Vista Studios" | df$Studio=="Fox" | df$Studio=="Paramount Pictures" | df$Studio=="Sony" | df$Studio=="Universal" | df$Studio=="WB")

# Shows the previously made filter, each data shows it as true or false
filter_movies 

# Compares the data that was loaded with the array 
df <- df[filter_movies,]
head(df)

# Declaration of the input data and set values to "x" and "y"
gg <- ggplot(df, aes(x=Genre, y=GrossPor, color=Studio,Size=Budget))

#geom_jitter = paint the dots with a small offset

#geom_boxplot Make a box diagram, which allows you to see through the quartiles, what the distribution is like, its degree of asymmetry, extreme values, the position of the median, etc.
gg + geom_jitter(aes(color=Studio,size=Budget)) + geom_boxplot(alpha=0.5) + xlab("Genre")+ ylab("Gross%U")+ggtitle("Domestic Gross % Genre")

#The Graphic that was Lost and be coding again
gg + geom_jitter(aes(color=Studio,size=Budget)) + geom_boxplot(aes(color=Budget,alpha=0.5)) + xlab("Genre")+ ylab("Gross%U")+ ggtitle("Domestic Gross % Genre")

LINK VIDEO:https://www.youtube.com/watch?v=naMUxKNFSus
