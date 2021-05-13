<h1>Tecnológico Nacional de México</h1>
<h6> Instituto Tecnológico de Tijuana 

Subdirección Académica 
Departamento de Sistemas y Computación 

Semestre: Septiembre - Enero 2020-2021

Materia:
Datos Masivos

Profesor: 
Jose Christian Romero Hernandez

Alumno: 
Marquez Enriquez Kevin Edwin
 Quiroz Montes Yim Yetzhael

# Practice 1 Unit 2

## FIFA WORLD CUP 2018 DATA ANALYSIS

Through this document, the results obtained through an analysis carried out on a dataset that contained data from the 2018 World Cup in Russia can be observed.

Each of these data reflects different interesting data about this sport, such as the percentage of passes that were made in each of the games, goals scored per game, yellow cards per player, etc.

1. **Data upload and analysis**

The functions head, tail, str and summary are used to analyze the content within the dataset, in this way to appreciate them in a better way. Point scatter graph For this graph, different points must be taken into consideration, such as the type of variable that will be used in the Y and X axes, in order to build the base. To give it this instruction, the geom_point () function is used. This graph is used to see the percentage of possession per game that each of the teams had per world cup game.

- ![Scatter PLot](https://lh4.googleusercontent.com/rvp_f_BRrPM2mEiXjqW5lLXifR6gYJyZaTVA9Bw6HXlzW97IfFAbTQd-fP7gdmz5OCWhSh3is17R6FMtTbC0GyMGChJFV7o0nOtraQHZFFFXy7f-YGNWFVWrKN2JeatKAA=w1280)
**Graph 1. Scatter plot of points**

2. **Facet plot**

This graph shows several data divided according to the parameter set in the facet_grid function, it allows us to see specifically by game the possession that each team had per game.

- ![Goals By Country](https://lh4.googleusercontent.com/WYfHXpFj4bDKzPq0JNw7h5TJaZsLNpaLW--j862MJJlMsLHG-Pdt3cAoIdQxQ5rkfEnX3NYOIofiLx3WkwGB9fZ0yvjO9JBm5RpUB2CmEyjmpIHuA6lNuAumLwbHyMYH6Q=w1280)
- **Graph 2. Facet graph**

3. **Histograms and Density Plots**

For this graph you can make use of any of the two functions presented:
geom_density and geom_histogram.

Within these, the aesthetics layer can be accessed, to be able to manipulate the data as the case may be in each of the countries.

Through this graph you can see represented in the axes "x" and "y", having the option to modify various parameters of the Legend, change the font of the letters, among many other things.

- ![Possesion By Game](https://lh6.googleusercontent.com/OjubIvQDEcgmnxxEMCIQ-wRs0xVSEZANqYBMVgW-KcVvMaeI8wLtFlmuKSv2HMRZ_0a-W4LdH9kM-0x9bHqlcQ4CKyyjJULE-qlmDzpQNinEBHxhj0ijztl0Ko5-o9XY9Q=w1280)
- **Graph 3. Density graph.**


- ![Passes By Game](https://lh5.googleusercontent.com/YtOhbuXAW-E3-ibdOb4E9E1Q25HJFGCmUEJ3-dQVz01nuJs0xe_ZZI0Af7KXlcjlPr-HUNqhIOedpjdncN6jo_3PMsPXPS6FrTiXIscFWj0JE9ikE_X6gAHqE-oPZLP1Mw=w1280)
- **Graph 4. Histogram**
