#### Preamble ####
# Purpose: Tets the simulated data in 00-simulate_data.R to ensure it works as
# expected.
# Author: Abbass Sleiman
# Date: 3 April 2024
# Contact: Abbass.sleiman@mail.utoronto.ca
# License: MIT
# Pre-requisites: 00-simulate_data.R should be run in order to have access to the
# simulated data.


#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Test Age Group Variable Type
is_factor_age_group <- is.factor(age_group)
print(is_factor_age_group)

# Test Age Group Variable Levels
are_age_group_levels_valid <- all(levels(age_group) %in% c("18-24", "25-34", "35-44", "45-54", "55-64", "65+"))
print(are_age_group_levels_valid)

# Test Gender Variable Type
is_factor_gender <- is.factor(gender)
print(is_factor_gender)

# Test Gender Variable Levels
are_gender_levels_valid <- all(levels(gender) %in% c("male", "female"))
print(are_gender_levels_valid)

# Test Income Group Variable Type
is_factor_income_group <- is.factor(income_group)
print(is_factor_income_group)

# Test Income Group Variable Levels
are_income_group_levels_valid <- all(levels(income_group) %in% c("low", "medium", "high"))
print(are_income_group_levels_valid)

# Test Education Variable Type
is_factor_education <- is.factor(education)
print(is_factor_education)

# Test Education Variable Levels
are_education_levels_valid <- all(levels(education) %in% c("high school", "college", "graduate"))
print(are_education_levels_valid)

# Test Support Variable Type
is_factor_support <- is.factor(support)
print(is_factor_support)

# Test Support Variable Levels
are_support_levels_valid <- all(levels(support) %in% c("yes", "no"))
print(are_support_levels_valid)
