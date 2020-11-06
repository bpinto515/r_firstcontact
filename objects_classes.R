# R Objects and Classes
# Classes
movie_rating <- c(8.3, 5.2, 9.3, 8.0) # create a vector from average ratings
movie_rating
class(movie_rating) # show the variable´s data type

# Numeric
average_rating <- 8.3
average_rating
class(average_rating)

# Character
movies <-c("Toy Story", "Akira", "The Breakfast Club", "The Artist")
movies
class(movies)

combined <- c("Toy Story", 1995, "Akira", 1998)
combined
class(combined)

# Integer
age_restrition <- c(12, 10, 18, 18)
age_restrition
class(age_restrition)

integer_vector <- as.integer(age_restrition)
class(age_restrition)

# Logical
logical_vector <- c(T,F,F,T,T)
class(logical_vector)

length_Akira <- 125
length_ToyStory <- 81

x <- length_ToyStory > length_Akira # is ToyStory larger than Akira?
x

y <- length_Akira > length_ToyStory # is Akira larger than ToyStory?
y

class(x)

# Complex
z = 8 + 6i
z
class(z)

# Converting one Class to Another
year <- as.character(1995)
year

Length_ToyStory <- 81
class(81)

length_ToyStory <- as.integer(81)
class(length_ToyStory)