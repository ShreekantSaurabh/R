###apply fuction over a list or vector
###explicitly specify output format
###vapply() can be considered a more robust version of sapply(), because you explicitly restrict the output of the function you want to apply.

#####Understand the difference
vapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)), numeric(3))


sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))


lapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))

