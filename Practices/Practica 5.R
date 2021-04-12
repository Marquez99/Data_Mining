#Practice 5 
#MARQUEZ KEVIN
#YIM QUIROZ

#1. Importing Data into R
#2. Exploring Datasets: head(), tail(), summary(), str()
#3. Using the $ sing
#4. Basic operations with Data Frames
#5. Filtering a Data Frame
#6. Introduction to qplot
#7. Visualizing with qplot: Part I
#8. Buildign Data Frames: data.frame()
#9. Marging Data Frames: marge()
#10. Visualizing with qplot: Part 

#BEGINING OF PRACTICES

#This part of code is for select our file with csv extension
stats <- read.csv(file.choose())
stats

#Filter countries by Low income
head(stats)
filter <- stats$Income.Group == "Low income" #TRUE
filter
stats[filter,]



#Filter countries by Lower middle income
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]


#Filter countries by Upper middle income
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]


#Filter by country Malta
head(stats)
filter <- stats$Country.Name == "Malta" #TRUE
filter
stats[filter,]


#Filter by country Qatar
head(stats)
filter <- stats$Country.Name == "Qatar" #TRUE
filter
stats[filter,]

#Filter by country Netherlands
head(stats)
filter <- stats$Country.Name == "Netherlands" #TRUE
filter
stats[filter,]

#Filter by country Norway
head(stats)
filter <- stats$Country.Name == "Norway" #TRUE
filter
stats[filter,]