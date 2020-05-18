# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (view in linkedin){
  print(view)
}


# Loop version 2
for (i in 1:length(linkedin)){
  print(linkedin[i])
}


# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (info in nyc){
  print(info)
}

# Loop version 2
for (n in 1:length(nyc)){
  print(nyc[[n]])
}

##### Loop over Matrix #####
ttt <- matrix(1:9, byrow = TRUE, nrow = 3)
ttt
# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row ", i, " and column ", j, " the board contains ", ttt[i,j]))
  }
}


########break and next statements########
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if(li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if(li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}

####looping on strings#########
# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
chars
# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  
  if (char == "u") {
    break
  }
}
# Print out rcount
print(rcount)

