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
    # Randomize album 
    "album_name" = sample(
      x = c(
        "FIRST IMPACT",
        "One-reeler / Act IV",
        "COLOR*IZ",
        "GREAT!",
        "BLOOM*IZ",
        "Oneiric Diary",
        "Midnight Guest",
        "DOUBLAST",
        "LOVESTRUCK!",
        "Wrap Me In Plastic",
        "I do! Do you?",
        "HEART*IZ",
        "from our Memento Box",
        "Fun to The World",
        "miss me?",
        "From.9",
        "9 WAY TICKET",
        "DOWNPOUR",
        "FUN FACTORY",
        "Wing Wing",
        "<FLY-BY> - Special Edition -",
        "Yummy Yummy Love",
        "My Little Society",
        "Moonlovers - Scarlet Heart Ryeo",
        "D-D-DANCE",
        "Talk & Talk",
        "Whatta Man (Good Man)",
        "Show Me",
        "To. Day",
        "Thumbs Up",
        "I.O.I 1st Mini Album 'Chrysalis'",
        "Ready Or Not",
        "BANANA CHACHA",
        "Okay!",
        "Crush (From PRODUCE 101)",
        "Freeze!"
      ),
      size = 50,
      replace = TRUE
    ),
    # Randomize danceability of each track
    "danceability" = sample (
      x = 0.4:0.9,
      size = 50,
      replace = TRUE
    ),
    # Randomize energy of each track
    "energy" = sample (
      x = 0.4:1,
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
      x = 0:0.25,
      size = 50,
      replace = TRUE
    ),
    # Randomize acousticness of each track
    "acousticness" = sample (
      x = 0:0.7,
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
      x = 0.3:1,
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
