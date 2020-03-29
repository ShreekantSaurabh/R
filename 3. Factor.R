# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

######## change the names of levels for clarity ########
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
# Specify the levels of factor_survey_vector 
# Watch out : the order with which you assign the levels is important. First check it using levels() then assign.
levels(factor_survey_vector) 
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

###### Compare ordered factors ################
# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
# Factor value for second data analyst
da2 <- factor_speed_vector[2]
# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]
# Is data analyst 2 faster than data analyst 5?
da2 > da5
