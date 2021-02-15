# Vectores
#3 Escriba un programa R para añadir valor a un vector vacío determinado.
vector = c()
values = seq(1,10)
vector = values
vector

#6  Escriba un programa R para encontrar Suma, Media y Producto de un Vector.
summary(vector)
sum(vector)
mean(vector)
prod(vector)

#7 Escriba un programa R para encontrar Suma, Media y Producto de un Vector, ignore elemento como NA o NaN
v2= c(1,NA, 3, 4, NaN)
del_na= is.na(v2)
sum(v2[!del_na])
mean(v2[!del_na])
prod(v2[!del_na])

#8 Escriba un programa R para encontrar el mínimo y el máximo de un vector
min(v2[!del_na])
max(v2[!del_na])

#9 Escriba un programa R para ordenar un vector en orden ascendente y descendente
 v3= c(3, 6, 8, 2, 5)
 des= sort(v3, decreasing = TRUE)
 asc = sort(v3)
 des
 asc
 
 #10Escriba un programa R para probar si un vector determinado contiene un elemento especificado.
 is.element(1,v3)
 is.element(3,v3)
 
 #12 Escriba un programa R para acceder al último valor de un vector determinado.

 tail(v3,n=1)
 
 #13 Escriba un programa R para encontrar el segundo valor más alto en un vector dado
 
 l = length(v3)
 sort(v3, partial = l-1)[l-1] #primero lo ordena y despues accede por posición

 #14 Escriba un programa R para encontrar el valor más alto en un vector dado.
 sort(v3, partial = l-1)[l]
 
 #16 Escriba un programa R para convertir columnas de dataframe dadas en un vector
 v4= c("Gato", "Perro", "Pajaro", "Caballo", "Pescado")
 dt = data.frame(v3, v4)
 dt
 
 #20 Write a R program to reverse the order of given vector.
 rev(v4)
 
 #23 Write a R program to convert two columns of a data frame to a named vector.
 
 setNames(as.character(dt$v3), dt$v4)
 
 
 
 
 
 