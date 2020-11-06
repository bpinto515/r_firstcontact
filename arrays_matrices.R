# Arrays and Matrices

# Array Creation
movie_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
                  "Star Wars", "The Ring", "The Artist", "Jumanji")
movie_vector

movie_array <- array(movie_vector, dim = c(4,3))
movie_array

# Array Indexing
movie_array[1,2] # [row, column]
movie_array[1,] # all elems of the first row
movie_array[,2] # all elems of the second column

dim(movie_array) # dimension of the array (rows, columns)

length_vector <- c(125, 81, 118, 81, 106, 121, 95, 100, 104) # each movie duration
length_array <- array(lenght_vector, dim = c(3,3))
length_vector

length_array + 5 # math ops in array

# Using Logical Conditions to Subset Arrays
mask_array <- length_array > 120 # wich movie can finish watching in two hours
mask_array

x_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
              "Star Wars", "The Ring", "The Artist", "Jumanji")
x_array <- array(x_vector, dim = c(3,3)) # get an array of the movies
x_array[mask_array]

# Matrix
movie_matrix <- matrix(movie_vector, nrow = 3, ncol = 3)
movie_matrix

movie_matrix[1,1] # first row and first column
movie_matrix[2:3, 1:2] # elements from rows 2 to 3 and columns 1 to 2

# Concatenation Function
upcoming_movie <- c("Fast and Furious 8", "xXx: Return of Xander Cage", 
                                                      "Suicide Squad")
new_vector <- c(movie_vector, upcoming_movie)
new_vector

drinks <- factor(c("tea", "coffee", "soft drink", "tea", "hot chocolate", "hot chocolate", "coffee"))
levels(drinks)