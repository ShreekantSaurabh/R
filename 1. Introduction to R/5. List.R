# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list

# Creating a named list (optional)
names(my_list) <- c("vec", "mat", "df")
my_list


#Selecting component from a list (all gives same result)
my_list[[3]]
my_list[["df"]]
my_list$df

#Selecting an element from a particular component from a list (all gives same result)
my_list[[3]][2]
my_list[["df"]][2]
my_list$df[2]
