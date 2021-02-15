#DATAFRAME
#1. Write a R program to create an empty data frame.
dt= data.frame()
dt
#2. Write a R program to create a data frame from four given vectors.
name1 = c("Mar", "Delgado", "Dominguez")
name2= c("Rosa", "Martin", "Perez")
name3= c("Pedro", "Ramirez", "Benito")
name4= c("Ramiro", "Muñoz", "Hernandez")

dt1= data.frame(name1,name2,name3,name4)
dt1

#3. Write a R program to get the structure of a given data frame. 
str(dt1)

#4. Write a R program to get the statistical summary and nature of the data of a given data frame. 
summary(dt1)

#5. Write a R program to extract specific column from a data frame using column name. 
dt1["name1"]

#6. Write a R program to extract first two rows from a given data frame.
dt1[1:2,]

#7. Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame. 
dt1[1:3, 1:3]

#8. Write a R program to add a new column in a given data frame. 
name5= c("Pepe", "Garcia","Romero")
dt1["name5"]= name5
dt1
#9. Write a R program to add new row(s) to an existing data frame. 
row_4= c("F", "F", "M", "M", "M")
dt1[4,]= row_4
dt1

#10. Write a R program to drop column(s) by name from a given data frame. 
dt1= subset(dt1, select = - c(name5))
dt1
#11. Write a R program to drop row(s) by number from a given data frame. 
dt1= dt1[-c(4),]
dt1
#12. Write a R program to sort a given data frame by multiple column(s)
dt1["Edad"]= c(26,30,19)
dt1
order_1= order(dt1$Edad, decreasing = TRUE)
dt1[order_1,]

#13. Write a R program to create inner, outer, left, right join(merge) from given two data frames. 
#No la entiendo muy bien
dt2 = data.frame(name3,name4)
result = merge(dt1, dt2, by = "name3", all.x = TRUE)
print(result)
print("Right outer Join:")
result2 = merge(dt1, dt2, by = "name3", all.y = TRUE)
print(result2)
print("Outer Join:")
result3 = merge(dt1, dt2, by = "name3", all = TRUE)
print(result3)
print("Cross Join:")
result4 = merge(dt1, dt2, by = NULL)
print(result4)

#14. Write a R program to replace NA values with 3 in a given data frame. 

dt1[4,]= c(1, NA, 4, NA)
dt1[is.na(dt1)] = 3
dt1

#15. Write a R program to change a column name of a given data frame. 
colnames(dt1)[which(names(dt1) == "Edad")] = "Others"
dt1

#16. Write a R program to change more than one column name of a given data frame. 
names(dt1)= c("Name1", "Name2", "name3", "Others")
dt1

#17. Write a R program to select some random rows from a given data frame. 
dt1[sample(nrow(dt1), 2),]

#18. Write a R program to reorder an given data frame by column name. 
dt1= dt1[rev(c("Name1", "Name2", "name3", "Others"))]

#19. Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame.
row_4= dt1[4,]
subset(dt2, row_4)
setdiff(dt1,dt2) #No entiendo
#20. Write a R program to find elements which are present in two given data frames. 
dt3= intersect(dt1, dt2)
dt3
#21. Write a R program to find elements come only once that are common to both given data frames. 
dt4= union(dt1, dt2)
dt4
#22. Write a R program to save the information of a data frame in a file and display the information of the file. 
save(dt1,file="data.csv")
load("data.csv")
file.info("data.csv")
#23. Write a R program to count the number of NA values in a data frame column. 
dt1[5,]= c(2, NA, 6, NA)
sum(is.na(dt1))


#24. Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame. 
v1= c(8, 4, 6, 8)
v2= c(8,10,5, 8)
dt5= data.frame(v1,v2)
duplicated(dt5) #elimina el último
unique(dt5)
#25. Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? Order the entire data frame by the first and second column.
data = airquality
data
order_2= order(data$Ozone, decreasing = FALSE)
data[order_2,]
#otra opción es esta:
data[order(data[,1]),]

#26. Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the data frame. 

data2= subset(data, select = - c(Solar.R, Wind))
data2