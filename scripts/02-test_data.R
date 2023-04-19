#### Preamble ####
# Purpose: Tests the simulated kpop_final data set
# Author: Randall Ni
# Date: 19 April 2023
# Contact: randalln1140@gmail.com
# Pre-requisites: NA
# Any other information needed? NA

library(tidyverse)

### Load in data
simulated_kpop_final_data <- read.csv(here::here("outputs/data/simulated_kpop_final_data.csv"))

### name has to be a character
simulated_kpop_final_data $name |>
  class()

### popularity has to be between 30 -70
simulated_kpop_final_data $popularity |>
  min() >= 30
simulated_kpop_final_data $popularity |>
  max() <= 70

### album name has to be a character
simulated_kpop_final_data $album_name |>
  class()

### album release date has to be a character
simulated_kpop_final_data $album_release_date |>
  class()

### danceability has to be between 0.4 - 0.9
simulated_kpop_final_data $danceability |>
  min() >= 0.4
simulated_kpop_final_data $danceability |>
  max() <= 0.9

### energy has to be between 0.4 - 1
simulated_kpop_final_data $energy |>
  min() >= 0.4
simulated_kpop_final_data $energy |>
  max() <= 1

### key has to be between 0 - 12
simulated_kpop_final_data $key |>
  min() >= 0
simulated_kpop_final_data $key |>
  max() <= 12

### loudness has to be between -7 - 0
simulated_kpop_final_data $loudness |>
  min() >= -7
simulated_kpop_final_data $loudness |>
  max() <= 0

### speechiness has to be between 0 - 0.25
simulated_kpop_final_data $speechiness |>
  min() >= 0
simulated_kpop_final_data $speechiness |>
  max() <= 0.25

### acousticness has to be between 0 - 0.7
simulated_kpop_final_data $acousticness |>
  min() >= 0
simulated_kpop_final_data $acousticness |>
  max() <= 0.7

### time signature has to be between 4 - 5
simulated_kpop_final_data $time_signature |>
  min() >= 4
simulated_kpop_final_data $time_signature |>
  max() <= 5

### valence has to be between 0.3 - 1
simulated_kpop_final_data $valence |>
  min() >= 0.3
simulated_kpop_final_data $valence |>
  max() <= 1

### tempo has to be between 60 - 180
simulated_kpop_final_data $tempo |>
  min() >= 60
simulated_kpop_final_data $tempo |>
  max() <= 180

### artist name has to be a character
simulated_kpop_final_data $artist_name |>
  class()





