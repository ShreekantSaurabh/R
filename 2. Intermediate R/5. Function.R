# Create a function pow_two()
pow_two <- function(x) {
  x*x  
}

# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x)+abs(y)
}

# Use the function
sum_abs(-2, 3)

# Define the function hello() without arguement
hello <- function(){
  print("Hi there!")
  return(TRUE)
}

# Call the function hello()
hello()

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info == TRUE) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

pow_two(4)
pow_two(5, print_info = FALSE)

#### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  
  for (v in views) {
    count <- count + interpret(v)
    
  }
  
  if (return_sum == TRUE) {
    return(count)
    
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin, return_sum = T)
interpret_all(facebook, return_sum = F)


# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)

# Check out the currently attached packages again
search()