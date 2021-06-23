# Practice 3 Unit 3

Make the analysis corresponding to the Decision Tree R script, which must be documented in its repository, putting in it its visual results and its detailed description of its observations as well as the source code.

The ggplot2 library is loaded to access the functions that allow to build the graphs. The construction of the graphs is done in the same way, only the variables equal to "x" and "y" and the dataset change.

The first parameter corresponds to the source of the data, in this case the data found in the training set were graphed, with the help of the aesthetics layer the “x” and “y” axes are defined. The geom_point function is used to show a distribution of points, since until now only the axes had been constructed.

**Training set graph conclusion**

The center line of the graph is the limit of separation of the two classifiers, thus creating the way in which the current data set is classified. It can be seen that there are two different colors in the scatter of points, and some green are on the red background, and other red on the green background.
![Training set plot](https://lh4.googleusercontent.com/AMl8Ukxwgu_iEB6F_kdgDdAR2Fn1G436aC4OhzNyTaJ0KhD3q7uS0TlcT3mQkZut7DJ6wPzBu8rkKqTJ9BugGQQlrMteJovpBShwTzO4FEMioDQa7L9A8dQdWD73QpDgIg=w1280)

**Test set graph conclusion**

It can be seen that the incorrect predictions were not minimized, only that being a smaller number of data, fewer results are shown in the graph.
When analyzing the same set of information, the red region continues to represent customers who did not buy the SUV, while the green region indicates customers who did.
![Test set plot](https://lh4.googleusercontent.com/1aztGJjZAQkvjG1Td1IMth062oPg2Oc3vNGQ1Sm8XiqaMWvBg0YW67z5IFXVYdwpZTmjCiIz7GYiX2zWx_raE3DG5eJuNRFTW0nSX5y8RDOHPyjbEj7PijdqamKlz_fXew=w1280)
