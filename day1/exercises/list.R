#List

#1. Write a R program to create a list containing strings, numbers, vectors and a logical values
cadena= "Mar"
num= 26
v1= c(18,10,1994)
log= TRUE

my_list = list(cadena, num, v1, log)
my_list

#8. Write a R program to merge two given lists into one list

my_list2 = list(cadena, num)
list_of_list= append(my_list, rev(my_list2))

#10 Write a R program to create a list of dataframes and access each of those dataframes from the list
name1 = c("Mar", "Delgado", "Dominguez")
name2= c("Rosa", "Martin", "Perez")
name3= c("Pedro", "Ramirez", "Benito")
name4= c("Ramiro", "Muñoz", "Hernandez")

dt1= data.frame(name1,name2)
dt2 = data.frame(name3,name4)

list_dt = list(dt1, dt2)
names(list_dt) = c('Data_1', 'Data_2')
list_dt[["Data_1"]]

#11. Write a R program to count number of objects in a given list
length(list_dt)

#12. Write a R program to convert a given dataframe to a list by rows. 
list3= split(dt1, seq(nrow(dt1)))

#14. Write a R program to assign NULL to a given list element.
list_5 = list(4, 8, 4, 6, 9)
list_5[2]= list(NULL) #con list() aparece el NULL, sin ello desaparece el valor directamente
print(list_5)