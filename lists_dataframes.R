# Lists and DataFrames

# Lists
movie <- list("Toy Story", 1995, c("Animation", "Adventure", "Comedy"))
movie

movie[2] # returns the second elem of the list
movie[2:3] # returns the first, second and third elem of the list

# Named Lists
movie <- list(name = "Toy Story",
              year = 1995,
              genre = c("Animation", "Adventure", "Comedy"))
movie

movie$genre # returns the genre part
movie["genre"] # other way to return the genre part
movie[2:3] # returns the elements from 2 to 3

class(movie$name) # retrieve specific elements of a list
class(movie$foreign) # other way to retrieve specific elements of a list

movie[["age"]] <- 5 # adds a new field named aged and puts the numerical value 0 into it
movie
movie[["age"]] <- 6 # now it´s 6, not 5
movie
movie[["age"]] <- NULL # to remove it just put NULL
movie

# Concatenating lists
movie_part1 <- list(name = "Toy Story")
movie_part2 <- list(year = 1995, genre = c("Animation", "Adventure", "Comedy"))
movie_concatenated <- c(movie_part1, movie_part2)
movie_concatenated

# Data Frames
movies <- data.frame(name = c("Toy Story", "Akira", "The Breakfast Club", "The Artist",
                              "Modern Times", "Fight Club", "City of God", "The Untouchables"),
                              year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002, 1987),
                              stringsAsFactors=F)
movies

movies$name # returns the content of a specific column of a data frame
movies[1] # returns the first column 
movies[1,2] # 1 - Toy Story, 2 - 1995
str(movies) # delivers information about the objects within the data frame
class(movies$year) # determines the type of a column in the data frame
head(movies) # first 6 items on the data frame
tail(movies) # last 6 items on the data frame

movies['length'] <- c(81, 125, 97, 100, 87, 139, 130, 119)
movies

movies <- rbind(movies, c(name="Dr. Strangelove", year=1964, length=94))
movies

movies <- movies[-12,]
movies

movies[["length"]] <- NULL
movies
