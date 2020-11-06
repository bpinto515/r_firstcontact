# Functions
# Pre-defined Functions
ratings <- c(8.7, 6.9, 8.5)
mean(ratings) # average of the movie ratings
sort(ratings) # sorting the ratings in ascending order
sort(ratings, decreasing = TRUE) # sorting the ratings in descending order

# User-defined functions
printHelloWorld <- function(){
  print("Hello World")
}
printHelloWorld()

add <- function(x, y){
  x + y
}
add(3, 4)

# Explicity returning outputs in user-defined functions
addV2 <- function(x, y){
  return(x + y)
} 
addV2(3, 4)

# Setting default argument values in your custom functions
isGoodRating <- function(rating, threshold = 7){
  if(rating < threshold){
    return("NO") # return NO if the movie rating is less than the threshold
  }else{
    return("YES") # otherwise return YES
  }
}
isGoodRating(6)
isGoodRating(7)
isGoodRating(8, threshold = 8.5)
isGoodRating(8, 8.5) # rating = 8, threshold = 8.5

# Using functions within functions
my_data <- read.csv("movies-db.csv")
head(my_data)

akira <- my_data[my_data$name == "Akira", "average-rating"]
akira

watchMovie <- function(data, moviename, my_threshold){
  rating <- data[data$name == moviename, "average_rating"]
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie(my_data, "Akira", 7)

watchMovieV2 <- function(data, moviename, my_threshold = 7){
  rating <- data[data$name == moviename, "average_rating"]
  return(isGoodRating(rating, threshold = my_threshold))
}
a <- watchMovieV2(my_data, "Akira")
a

watchMovieV3 <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename, "average_rating"]
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovieV3("Akira")

# Global and local variables
my_Function <- function(){
  y <<- 3.14
  return("Hello World")
}
my_Function()
y # global variable