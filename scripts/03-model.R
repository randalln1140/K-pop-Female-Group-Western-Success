#### Preamble ####
# Purpose: Creating a linear regression model to see the relevance of audio features and poplarity
# Author: Randall Ni
# Date: 17 April 2023
# Contact: randalln1140@gmail.com
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(tidyverse)
library(rstanarm)


### Model data ####
first_model <-
  stan_glm(
    formula = popularity ~ danceability + energy + speechiness + acousticness + valence + tempo,
    data = kpop_final,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 1140
  )


#### Save model ####
saveRDS(
  first_model,
  file = "outputs/models/first_model.rds"
)