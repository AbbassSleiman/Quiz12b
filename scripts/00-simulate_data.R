#### Preamble ####
# Purpose: Simulates a dataset detailing 1000 individuals' support for a political 
# party (Biden Administration) along with the predictor variables age-group, gender,
# income group, and highest education.
# Author: Abbass Sleiman
# Date: 3 April 2024
# Contact: Abbass.sleiman@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####

# Set seed
set.seed(9)

# Number of observations
n <- 1000

# Generate age-group variable
age_group <- sample(c("18-24", "25-34", "35-44", "45-54", "55-64", "65+"), n, replace = TRUE, 
                    prob = c(0.13, 0.2, 0.2, 0.2, 0.15, 0.12))

# Generate gender variable
gender <- sample(c("male", "female"), n, replace = TRUE, prob = c(0.5, 0.5))

# Generate income group variable
income_group <- sample(c("low", "medium", "high"), n, replace = TRUE, 
                       prob = c(0.3, 0.5, 0.2))

# Generate highest education variable
education <- sample(c("high school", "college", "graduate"), n, replace = TRUE, 
                    prob = c(0.4, 0.5, 0.1))

# Calculate probability of support for Biden based on specified criteria
support_prob <- rep(0.3, n)  # Base probability for not supporting Biden
support_prob[age_group %in% "18-24"] <- support_prob[age_group %in% "18-24"] + 0.2  # Increased likelihood for 18-24 age group
support_prob[gender == "female"] <- support_prob[gender == "female"] + 0.1  # Increased likelihood for female
support_prob[income_group %in% c("low", "medium")] <- support_prob[income_group %in% c("low", "medium")] + 0.1  # Increased likelihood for low and medium income
support_prob[education %in% c("college", "graduate")] <- support_prob[education %in% c("college", "graduate")] + 0.1  # Increased likelihood for college and graduate

# Iterate over each individual
for (i in 1:n) {
  # Sample support for the current individual based on their corresponding probability
  support[i] <- sample(c("yes", "no"), 1, replace = TRUE, prob = c(support_prob[i], 1 - support_prob[i]))
}

# Convert character vectors to factors
age_group <- as.factor(age_group)
gender <- as.factor(gender)
income_group <- as.factor(income_group)
education <- as.factor(education)
support <- as.factor(support)

# Create a dataframe
data <- data.frame(support, age_group, gender, income_group, education)

# View the first few rows of the dataframe
head(data)



