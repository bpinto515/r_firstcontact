# Debugging in R
# returns an error
for(i in 1:10){ # for every number, i, in the sequence of 1, 2, 3
  print(i + "a")
}

# Error catching
tryCatch(10 + 10) # no error
tryCatch("a" + 10) # error

tryCatch(10 + "a",
         error = function(e) print("Oops, something went wrong!")) # no error

x <- tryCatch(10 + "a", error = function(e) return("10a")) # no error
x

tryCatch(
  for(i in 1:3){ # for every number, i, in the sequence of 1, 2, 3
    print(i + "a")
  }
  , error = function(e) print("Found error.")
)

# Warning Catching
as.integer("A") # error
tryCatch(as.integer("A"), warning = function(e) print("Warning.")) # no error