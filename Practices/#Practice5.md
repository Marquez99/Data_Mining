# Data_Mining


  

### Tecnológico   Nacional   de   México
### Instituto Tecnológico de Tijuana

#### Subdirección Académica

#### Departamento de Sistemas y Computación



#### SEMESTRE:
Febrero - Julio 2021

#### MATERIA
TIF-1003 TI8A Minería de Datos


#### NOMBRE Y NÚMERO DE CONTROL DEL ALUMNO:
Márquez Enríquez Kevin Edwin		17212923
Quiroz Montes Yim Yetzhael          17210623

#### NOMBRE DEL DOCENTE:
Jose Christian Romero Hernandez


Tijuana, Baja California				
</p>

#BEGINING OF PRACTICES

1. #This part of code is for select our file with csv extension
stats <- read.csv(file.choose())
stats

2. #Filter countries by Low income
head(stats)
filter <- stats$Income.Group == "Low income" #TRUE
filter
stats[filter,]



3. #Filter countries by Lower middle income
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]


4. #Filter countries by Upper middle income
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]


5. #Filter by country Malta
head(stats)
filter <- stats$Country.Name == "Malta" #TRUE
filter
stats[filter,]


6. #Filter by country Qatar
head(stats)
filter <- stats$Country.Name == "Qatar" #TRUE
filter
stats[filter,]

7. #Filter by country Netherlands
head(stats)
filter <- stats$Country.Name == "Netherlands" #TRUE
filter
stats[filter,]

8. #Filter by country Norway
head(stats)
filter <- stats$Country.Name == "Norway" #TRUE
filter
stats[filter,]