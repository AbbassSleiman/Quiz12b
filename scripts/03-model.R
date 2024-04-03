#### Preamble ####
# Purpose: Creates a logistic model to see how the predictor variables in the simulated
# data interplay with the likelihood of voting for Biden.
# Author: Abbass Sleiman
# Date: 3 April 2024
# Contact: Abbass.sleiman@mail.utoronto.ca
# License: MIT
# Pre-requisites: 00-simulate_data.R should be run in order to have access to the
# simulated data.


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

### Model data ####
logit_model <- stan_glm(support ~ age_group + gender + income_group + education_level,
                  data = data, 
                  family = binomial(link = "logit"))

# Summarize the model
summary(logit_model)

#### Save model ####
saveRDS(
  logit_model,
  file = "models/logit_model.rds"
)



