#FUNCION 1 (LS)
name <- "Carmen"; n1 <- 10; n2 <- 100; m <- 0.5
ls()

#FUNCION 2 (MEAN)
notas <- c(4.0, 1.3, 3.8, 2.0)  
mean(notas)

#FUNCION 3 (MIN)
myvec <- c(5, 3, 2, 1, 2, 0, 0, 9, 6)
myvec
min(myvec)

#FUNCION 4 (RANGE)
vec <- c(5, 3, 2, 1, 2, 0, 0, 9, 6)
vec
range(vec, na.rm=T)

#FUNCION 5 (SEQ)
seq(from=0, to=1, length.out = 11)

#FUNCION 6 (REP)
rep(x=1:4, times=2)

#FUNCION 7 (ROUND)
x <- 5.34896
round(x, digits=3)

#FUNCION 8 (CELLING)
y <- 5.34896  
ceiling(y)

#FUNCION 9 (FLOOR)
a <- 5.34896
floor(a)

#FUNCION 10 (TRUNC)
k <- 5.34896  
trunc(k)

#FUNCION 11 (SORT Y RANK)
D <- c(2, 3, 6, 4, 9, 5)
sort(D)
rank(D)

#FUNCION 12 (TABLE)
fuma <- c('Frecuente', 'Nunca', 'A veces', 'A veces', 'A veces',
          'Nunca', 'Frecuente', NA, 'Frecuente', NA, 'hola', 
          'Nunca', 'Hola', 'Frecuente', 'Nunca')
table(fuma)

#FUNCION 13 (COR)
url <- 'https://raw.githubusercontent.com/fhernanb/datos/master/aptos2015'
datos <- read.table(file=url, header=T)
cor(x=datos$mt2, y=datos$precio)

#FUNCION 14 (DBETA)
curve(dbeta(x, shape1=2, shape2=5), lwd=3, las=1,
      ylab='Densidad')

#FUNCION 15 (T.TEST)
url <- 'https://raw.githubusercontent.com/fhernanb/datos/master/medidas_cuerpo'
datos <- read.table(file=url, header=T)
hombres <- datos[datos$sexo=="Hombre", ]

par(mfrow=c(1, 2))

hist(hombres$altura, freq=TRUE,
     main='Histograma para la altura de hombres',
     xlab='Altura (cm)',
     ylab='Frecuencia')

t.test(x=hombres$altura, conf.level=0.90)$conf.int


#FUNCION 16 (READ LINE)
my_name <- readline(prompt="Ingrese su nombre: ")

print(paste("Hola,", my_name))



