#### Preamble ####
# Purpose: Simulates the "k_pop final" data sets that was used for analysis
# Author: Randall Ni
# Date: 19 April 2023
# Contact: randalln1140@gmail.com
# Pre-requisites: NA
# Any other information needed? NA

##for simulating the original reported crimes data
set.seed(1140)
simulated_kpop_final_data <-
  tibble(
    # Randomize track 
    "name" = sample(
      x = c(
        "Song 1",
        "Song 2",
        "Song 3",
        "Song 4",
        "Song 5",
        "Song 6",
        "Song 7",
        "Song 8",
        "Song 9",
        "Song 10",
        "Song 11",
        "Song 12",
        "Song 13",
        "Song 14",
        "Song 15",
        "Song 16",
        "Song 17",
        "Song 18",
        "Song 19",
        "Song 20",
        "Song 21",
        "Song 22",
        "Song 23",
        "Song 24",
        "Song 25",
        "Song 26",
        "Song 27",
        "Song 28",
        "Song 29",
        "Song 30",
        "Song 31",
        "Song 32",
        "Song 33",
        "Song 34",
        "Song 35",
        "Song 36",
        "Song 37",
        "Song 38",
        "Song 39",
        "Song 40",
        "Song 41",
        "Song 42",
        "Song 43",
        "Song 44",
        "Song 45",
        "Song 46",
        "Song 47",
        "Song 48",
        "Song 49",
        "Song 50"
      ),
      size = 50,
      replace = FALSE
    ),
    # Randomize popularity of each track
    "popularity" = sample (
      x = 30:69,
      size = 50,
      replace = TRUE
    ),
    # Randomize album numbers, some tracks are under the same album
    "album_name" = sample(
      x = c(
        "album 1",
        "album 2",
        "album 3",
        "album 4",
        "album 5",
        "album 6",
        "album 7",
        "album 8",
        "album 9",
        "album 10",
        "album 11",
        "album 12",
        "album 13",
        "album 14",
        "album 15",
        "album 16",
        "album 17",
        "album 18",
        "album 19",
        "album 20",
        "album 21",
        "album 22",
        "album 23",
        "album 24",
        "album 25",
        "album 26",
        "album 27",
        "album 28",
        "album 29",
        "album 30",
        "album 31",
        "album 32",
        "album 33",
        "album 34",
        "album 35",
        "album 36"
      ),
      size = 50,
      replace = TRUE
    ),
    # Randomize album numbers, some tracks are under the same album
    "album_release_date" = sample(
      x = c("Date 1",
            "Date 2",
            "Date 3",
            "Date 4",
            "Date 5",
            "Date 6",
            "Date 7",
            "Date 8",
            "Date 9",
            "Date 10",
            "Date 11",
            "Date 12",
            "Date 13",
            "Date 14",
            "Date 15",
            "Date 16",
            "Date 17",
            "Date 18",
            "Date 19",
            "Date 20",
            "Date 21",
            "Date 22",
            "Date 23",
            "Date 24",
            "Date 25",
            "Date 26",
            "Date 27",
            "Date 28",
            "Date 29",
            "Date 30",
            "Date 31",
            "Date 32",
            "Date 33",
            "Date 34",
            "Date 35",
            "Date 36",
            "Date 37",
            "Date 38",
            "Date 39",
            "Date 40",
            "Date 41",
            "Date 42",
            "Date 43",
            "Date 44",
            "Date 45",
            "Date 46",
            "Date 47",
            "Date 48",
            "Date 49",
            "Date 50"
      ),
      size = 50,
      replace = FALSE
    ),
    # Randomize danceability of each track
    "danceability" = sample (
      x = seq(0.4, 0.9, 0.1),
      size = 50,
      replace = TRUE
    ),
    # Randomize energy of each track
    "energy" = sample (
      x = seq(0.4, 1, 0.1),
      size = 50,
      replace = TRUE
    ),
    # Randomize key of each track
    "key" = sample (
      x = 0:12,
      size = 50,
      replace = TRUE
    ),
    # Randomize loudness of each track
    "loudness" = sample (
      x = -7:0,
      size = 50,
      replace = TRUE
    ),
    # Randomize speechiness of each track
    "speechiness" = sample (
      x = seq(0, 0.25, 0.1),
      size = 50,
      replace = TRUE
    ),
    # Randomize acousticness of each track
    "acousticness" = sample (
      x = seq(0, 0.7, 0.1),
      size = 50,
      replace = TRUE
    ),
    # Randomize time signature of each track
    "time_signature" = sample (
      x = 4:5,
      size = 50,
      replace = TRUE
    ),
    # Randomize valence of each track
    "valence" = sample (
      x = seq(0.3, 1, 0.1),
      size = 50,
      replace = TRUE
    ),
    # Randomize tempo of each track
    "tempo" = sample (
      x = 60:180,
      size = 50,
      replace = TRUE
    ),
    # Randomize artist name of each track
    "artist_name" = sample(
      x = c(
        "fromis_9",
        "I.O.I",
        "IZ*ONE",
        "Momoland",
        "Kep1er"
      ),
      size = 50,
      replace = TRUE
    )
  )
   
simulated_kpop_final_data

# Store simulated data
write.csv(simulated_kpop_final_data, file = here::here("outputs/Data/simulated_kpop_final_data.csv"), row.names = FALSE)
