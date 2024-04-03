#### Preamble ####
# Purpose: Graphs the simulated data in 00-simulate_data.R to showcase all observations.
# Author: Abbass Sleiman
# Date: 3 April 2024
# Contact: Abbass.sleiman@mail.utoronto.ca
# License: MIT
# Pre-requisites: 00-simulate_data.R should be run in order to have access to the
# simulated data.

#### Workspace setup ####
library(ggplot2)

# Bar plot for age group
ggplot(data, aes(x = support, fill = age_group)) +
  geom_bar(position = "stack") +
  labs(title = "Support for Political Party by Age Group",
       x = "Supports Biden",
       y = "Number of Respondents",
       fill = "Age Group")

# Bar plot for gender
ggplot(data, aes(x = support, fill = gender)) +
  geom_bar(position = "stack") +
  labs(title = "Support for Political Party by Gender",
       x = "Supports Biden",
       y = "Number of Respondents",
       fill = "Gender")

# Bar plot for income group
ggplot(data, aes(x = support, fill = income_group)) +
  geom_bar(position = "stack") +
  labs(title = "Support for Political Party by Income Group",
       x = "Supports Biden",
       y = "Number of Respondents",
       fill = "Income Group")

# Bar plot for education level
ggplot(data, aes(x = support, fill = education_level)) +
  geom_bar(position = "stack") +
  labs(title = "Support for Political Party by Education Level",
       x = "Supports Biden",
       y = "Number of Respondents",
       fill = "Education Level")



}