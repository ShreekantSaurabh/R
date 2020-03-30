# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region 
star_wars_matrix
# Name the rows with titles
rownames(star_wars_matrix) <- titles
star_wars_matrix
# Print out star_wars_matrix
star_wars_matrix

###### Better way than above ###########
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", 
                                             "The Empire Strikes Back", 
                                             "Return of the Jedi"), 
                                           c("US", "non-US")))
star_wars_matrix
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Bind the new variable worldwide_vector as a column to star_wars_matrix (cbind)
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# Combine both Star Wars trilogies in one matrix (rbind)
box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE,
                            dimnames = list(c("The Phantom Menace", 
                                              "Attack of the clones", 
                                              "Revenge of the sith"), 
                                            c("US", "non-US")))
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[ , 2]
non_us_all 
# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[ 1:2 , 2]
non_us_some
# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors (if ticket cost is 5)
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors
