#Export the library ggplot2
#Library to do the Graphic representaion of the results

library(ggplot2)

#Import the dataframe
dtframe <- read.csv(file.choose())
head(dtframe)

#Rename columns name
colnames(dtframe) <- c("Day_Week","Director","Genre","Title","Release_Date","Studio","Adjusted_Gross","Budget","Gross","IMDb_Rating","MovieLens_Rating","Overseas","Overseas%","Profit","Profit%","Runtime","US_dlls","GrossPor")

#Delete useles data

filter <- (dtframe$Genre=="action" | dtframe$Genre=="adventure" | dtframe$Genre=="animation" | df$Genre=="comedy" | dtframe$Genre=="drama") & (dtframe$Studio=="Buena Vista Studios" | dtframe$Studio=="Fox" | dtframe$Studio=="Paramount Pictures" | dtframe$Studio=="Sony" | dtframe$Studio=="Universal" | dtframe$Studio=="WB")

filter_df <-dtframe[filter,]

#Show the new df

head(filter_df)
