# Loops and Conditions

# import data from the file to movies-data
movies_data <- read.csv("movies-db.csv", header = TRUE, sep = ",")
movies_data

# Conditional Statements
movie_year = 2002
if(movie_year > 2000){ # if a movie year is greater than 2000
  print('Movie year is greater than 2000')
}

movie_year = 1997
if(movie_year > 2000){ # if a movie year is greater than 2000
  print('Movie year is greater than 2000')
}else{ # if th above conditions were not met
  print('Movie year is not greater than 2000')
}

if(movie_year < 2000 & movie_year > 1990){ # less than 2000 AND greater than 1990
  print('Movie year between 1990 and 2000')
}

if(movie_year > 2010 | movie_year < 2000){ # greater than 2010 OR less than 2000
  print('Movie year is not between 2000 and 2010')
}

# Subset
decade = 'recent'
if(decade == 'recent'){ # if the decade given is recent
  subset(movies_data, year >= 2000)
}else{ # if not
  subset(movies_data, year < 2000)
}

# Loops
# For Loop
years <- movies_data['year']
for(val in years){ # for each value in the "years" variable
  print(val)
}

# While Loop
iteration = 1
while (iteration <= 5) { # while iteration is less or equal to five
  print(c("This is iteration number:",as.character(iteration)))
  print(movies_data[iteration,]$name)
  
  iteration = iteration + 1
}

# Applying Functions to Vectors
my_list <- c(10,12,15,19,25,33)

my_list + 2 # adding two to all the values in the vector
my_list ** 2 # exponentiating all the vectors by two 
my_list + my_list # sum the elements of two vectors