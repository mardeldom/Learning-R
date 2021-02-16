#Basic

#3. Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91.
seq(20,50)
mean(seq(20,60))
sum(seq(51,91))


#4. Write a R program to create a vector which contains 10 random integer values between -50 and +50.
v1= sample(-50:50, size=10)
v1

#5. Write a R program to get the first 10 Fibonacci numbers
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1] #coge las posiciones
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#7. Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both
v2= 1:100
for (i in v2){
  if (i%%3==0 & i%%5==0){
    print("FizzBuzz")
  }
  else if(i%%5==0){
    print("Buzz")
  }
  else if (i%% 3== 0){
    print("Fizz")
  }
}

#9. Write a R program to find the factors of a given number.
factors = function(x){
  for(i in 1:x){
    if (x%% i==0){
      print(i)
    }
  }
}
factors(3)

#10. Write a R program to find the maximum and the minimum value of a given vector.
my_vector = function(v){
  print(paste("Max",max(v)))
  print(paste("Min",min(v)))
}
my_vector(v= c(2,58,39,20))

#13. Write a R program to create a list of random numbers in normal distribution and count occurrences of each value.
my_list = function(n){
  list(sample(n))
  
}
my_list(8)

#No entiendo la solución 
d= floor(rnorm(10))
table(d)


#15. Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.
v1= c(2,5,79)
v_1= vector("numeric")
print(v1)
print(paste("Clase de v1:", typeof(v_1)))

v2 = c("Perro", "gato", "pajaro")
v_2 = vector("character")
print(v2)
print(paste("Clase de v1:", typeof(v_2)))
v3= c(TRUE, FALSE, FALSE)
v_3= vector("logical")
print(v3)
print(paste("Clase de v1:", typeof(v_3)))


#22. Write a R program to create  bell curve of a random normal distribution.
n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)
#25. Write a R program to create a Dataframes which contain details of 5 employees and display the details
Employees = data.frame(Name = c("Mar","Rosa", "Pedro","Ramiro"),
                       Surname= c("Delgado", "Martin", "Perez", "Hernandez"),
                       Gender=c("F","F","M","M"),
                       Age=c(23,22,25,26))
                   
Employees

#26. Write a R program to create a Data Frames which contain details of 5 employees and display summary of the data
summary(Employees)