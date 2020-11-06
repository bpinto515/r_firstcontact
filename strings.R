# Strings in R

# Reading Text Files
my_data <- readLines("the_Artist.txt") # import the txt
my_data

length(my_data) # length of the number of the elements

file.size("the_Artist.txt") # size of the file in bytes

my_data1 <- scan("The_Artist.txt", "")
my_data1

length(my_data1)

# String Operations
nchar(my_data[1]) # returns the number of characters in the given string

toupper(my_data[3]) # converts to Upper case the given string

tolower((my_data[3])) # converts to lower case the given string

chartr(" ", "-", my_data[1]) # converts char in a given stream

character_list <- strsplit(my_data[1], " ") # split the string word by word
word_list <- unlist(character_list) # converts the list into a character vector
word_list

sorted_list <- sort(word_list) # sorts the elements of the character vector in ascending order
sorted_list

paste(sorted_list, collapse = " ") # concatenate all words from the vector into a single string

sub_string <- substr(my_data[1], start = 4, stop = 50) # take a substring
sub_string

trimws(sub_string) # to remove any white spaces at the both ends

install.packages("stringr", repos='http://cran.us.r-project.org') # just once to install
library(stringr) # import the stringr library
str_sub(my_data[1], -8, -1)

# Writing and Saving to files
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
m

write(m, file = "my_text_file2.txt", ncolumns = 3, sep = " ") # write data to a text file

write(my_data[1], file = " my_text_file2.txt", ncolumns = 1, sep = " ")

# Exporting as CSV File
head(CO2)
write.csv(CO2, file = "my_csv.csv")
write.csv(CO2, file = "my_csv.csv", row.names = FALSE)

# Exporting as Excel File
install.packages("xlsx") # just once
library(xlsx)
write.xlsx(CO2, file = "my_excel.xlsx", row.names = FALSE)

# Exporting as .RData
var1 <- "var1"
var2 <- "var2"
var3 <- "var3"
save(list = c("var1", "var2", "var3"), file = "variables.RData", safe = T)
