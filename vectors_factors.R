# Vectors
release_year <- c(1985, 1999, 2015, 1964)
release_year

titles <- c("Toy Story", "Akira", "The Breakfast Club")
titles

titles == "Akira"

# Vector Operations
release_year <- c(release_year, 2016:2018)
release_year

length(release_year)

head(release_year) # first six items
head(release_year, n = 2) # first n items
head(release_year, 2)

tail(release_year) # last six items
tail(release_year, 2) # last two items

sort(release_year) # sorting a vector
sort(release_year, decreasing = TRUE) # sorting in a descending order

min(release_year) # minimum value
max(release_year) # maximum value

cost_2014 <- c(8.6, 8.5, 8.1)
avg_cost_2014 <- sum(cost_2014)/3 # one way to find the mean of the values
avg_cost_2014

mean_cost_2014 <- mean(cost_2014) # other way to find the mean of the values
mean_cost_2014

release_year <- c(1985, 1999, 2010, 2002)
# assigning names
names(release_year) <- c("The Breakfast Club" , "American Beauty", "Black Swan", "Chicago")
release_year
release_year[c("American Beauty", "Chicago")] # retrieving values based on the names

release_year[1] + 100 # adding 100 to the first item changes the year
names(release_year)[1:3]

# Summarizing vectors
summary(cost_2014) # you get the minimum, first_quartile, mean, third_quartile and maximum

# Using logical operations on vectors
movie_year <- 1997
movie_year > 2000 # greater in value than

movies_year <- c(1998, 2010, 2016)
movies_year > 2014
movies_year == 2015 # equal to
movies_year != 2015 # not equal to

# Subseting Vectors
movie_years <- c(1985, 1999, 2002, 2919, 2012)
movie_years
movie_years[2] # second item
movie_years[3] # third item
movie_years[c(1,3)] # first and third items

# Retrieving a vector without some of its items
titles <- c("Black Swan", "Jumanji", "City of God", "Toy Story", "Casino")
titles[-1] # returns a vector slice without the first item

new_titles <- titles[-1] # removes "Black Swan", the first item
new_titles

# Missing Values (NA)
age_restric <- c(14, 12, 10, NA, 18, NA)
age_restric

# Subsetting vectors based on a logical condition
release_year > 2000 # movies created after year 2000
release_year[movie_years > 2000] # returns a vector for elements that returned TRUE

# Factors
genre_vector <- c("Comedy", "Animation", "Crime", "Comedy", "Animation")
genre_vector
genre_factor <- as.factor(genre_vector)
levels(genre_factor)

# Summarizing Factors
summary(genre_factor)

sort(summary(genre_factor)) #sorts values by ascending order

# Ordered Factors
movie_lenght <- c("Very Short", "Short", "Medium", "Long", "Very Long")
movie_lenght

movie_lenght_ordered <- factor(movie_lenght, ordered = TRUE,
                               levels = c("Very Short", "Short", 
                                        "Medium", "Long", "Very Long"))
movie_lenght_ordered
summary(movie_lenght_ordered)
