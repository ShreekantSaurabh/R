#sapply (simplify apply function) is applied over list or vector
###difference between the output of lapply() and sapply()? 
###lapply returns a list, while the sapply returns a vector (that is a simplified version of this list).

# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")
split_math
# Convert to lowercase strings: split_low
split_low <- sapply(split_math, tolower)
split_low

split_low <- lapply(split_math, tolower)
split_low

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- sapply(split_low, select_first)
names
# Write function select_second()
select_second <- function(x) {
  x[2]
}

# Apply select_second() over split_low: years
years <- sapply(split_low, select_second)
years


####using anonymous function inside sapply#####
# Transform select_first into anonymous function : use anonymous function inside sapply
names <- sapply(split_low, function(x) { x[1] })
names
# Transform select_second into anonymous function : use anonymous function inside sapply
years <- sapply(split_low, function(x) { x[2] })
years


##########find the difference between them
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))

lapply(list(runif (10), runif (10)), 
        function(x) c(min = min(x), mean = mean(x), max = max(x)))
