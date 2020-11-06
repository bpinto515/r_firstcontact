# Importing Data in R

# Reading CSV Files
my_data <- read.csv("movies-db.csv")
my_data
head(my_data) # print the first six rows of the table
str(my_data) # prints the structure of the table

# Reading Excel Files
install.packages("readxl") # execute just once to download the packages

library(readxl) # to load the library to the R environment

my_excel_data <- read_excel("movies-db.xls") # read the file and add it to the variable
str(my_excel_data) # prints the structure of the table

# Accessing Rows and Columns
my_data['name'] # subset of the data frame with the 'name' columns
my_data$name # retrieve the data for the "name" column
my_data[["name"]] # the same as the previous but with other syntax
my_data[1,] # retrieve the first row of the data frame
my_data[1, c("name", "length_min")] # retrieve the first row but only name and length column

# Accessing Built-In Datasets in R
data() # displays a list of inbuilt datasets
help(women) # documentation for the inbuilt "women" dataset
women
