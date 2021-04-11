#PRACTICA 1
#1. Initialize sample size
rnorm(10000000000000)

#2. Initialize counter
counter <-0

N <-10

#3. loop for(i in rnorm(size))
for (i in rnorm(N)){
  
#Aqui es segunda parte
  #4. Check if the iterated variable falls
  if (i >= -1 & i<= 1){
    #5. Increase counter if the condition is true
    counter <- counter +1
  }
  
}

#6. return a result <- counter / N
result = counter/N


#Imprimier resultado de la variable 
print(result*100)
