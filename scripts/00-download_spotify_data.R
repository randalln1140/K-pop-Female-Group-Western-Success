#### Preamble ####
# Purpose: Download data from Spotify about the five chosen kpop idol group.
# Author: Randall Ni
# Date: 17 April 2023
# Contact: randalln1140@gmail.com
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(spotifyr)
library(tidyverse)

#### Get 10 most popular tracks from each chosen group ####
izone_top <- spotifyr::get_artist_top_tracks('5r1tUTxVSgvBHnoDuDODPH')
kep1er_top <- spotifyr::get_artist_top_tracks('5R7AMwDeroq6Ls0COQYpS4')
mml_top <- spotifyr::get_artist_top_tracks('5RR0MLwcjc87wjSw2JYdwx')
fromis_top <- spotifyr::get_artist_top_tracks('24nUVBIlCGi4twz4nYxJum')
ioi_top <- spotifyr::get_artist_top_tracks('6RKnXXyprPjhBdCvL802Ku')

#### Get all the audio features from the obtained tracks ####
izone_top10_features <- 
  spotifyr::get_track_audio_features(c("0CnpSTdL9l5vQM4YnzXtyo", "3WfaJhCL4p2JbdffJjV6Va", "7G6WuVZuTbF6JcnA9wOvsD", "6Ihdn6wW2UBhfTKWbP29KA", "0Qzs7eyyx6Il1qkA4wqUHm", "4Wa3kUtGTeuPuC9qF9wF0g", "4XKCLNyCTvtdkLu5O1mzTU", "3U764c5XbUqjr408oTrjfy", "2C4MS6rTqxbWw6h9z9jszV", "70QXJyGkuTJDhfxqW2XGED"))
kep1er_top10_features <-
  spotifyr::get_track_audio_features(c("4gdiCHNbwugojBqr5Jt3pq", "3XZAvh2NCDQYHgJei35VQ1", "6blIAzkMKENKqAfMwj5cZQ", "7wFeVMTlgOu910OH9RctRI", "2Zx7YnpyTsQvjAf9elDsgX", "6yNiRX1IennJtjglN10qpK", "1uKI4JKUIUJC0aXJqKCl6y", "4lEyfMaUwdioK1MxfSVBPw", "3SPlasw7QS9VAvM7j5vBQu", "5wNbNbdfejtmNYq4jaMGWF"))
mml_top10_features <-
  spotifyr::get_track_audio_features(c("3BPoSr2pO34Aan6alFfVto", "5mpWGq83n0sIgGRopGk5QZ", "4Is1b37KJY9XVCgzp81FBW", "4yTvTZ68CSpqV1T6AuGikB", "5unCIQfJLMtcsiU6MP5zmB", "2X1zCTkwxQRMkloiVlQ55e", "0Sp0RwhaE0CdJE8ctmXk4U", "5rEkbyBhnuVXLfe6yp8f3b", "0rDkbzs7wdUewiGZC34nHt", "2o2L7uWccaITKSCoLp7zi5"))
ioi_top10_features <-
  spotifyr::get_track_audio_features(c("0BhMw9r3eOLMLXRFBLCt6O", "3pMnRGNIgK0Ql19zvnjv83", "5nclYlcWMW9QgnBZU2apZh", "65y9Kv0AFpy2EB2BJPqGvJ", "7D3xNJRjMjULVcuG5Voct5", "11dJTASuSsx7GkcZtKI7yO", "4XybzTi217wr4ijKc8fTxk", "6t0U6KWwrQzl3HcyusKvLS", "64hNAJyLLuqazA2tS1ydEe", "5TSN8BueHQSo8LM7m2zsf9"))
f9_top10_features <-
  spotifyr::get_track_audio_features(c("7B9W7Qsy5M2kyUNjQYIEG8", "3pqgVtpnQbBAZoWT4AEm1B", "7oQqeRSV38YqkRv2UGvmbS", "3RtapbUtHJgnVlZWahStUS", "3bD1rBz24Pnu6tjXf4wJxH", "0l7HoOCQOKZpg5MV2hXw57", "6Q5e2XpyGzMLgA3ul491pu", "55R81qkDQVV8oEPHFyIF7l", "3CtpSwA8Z96ePP9nfTPz3Z", "2rkF5QMAi4PcG5gdWeTXQs"))

#### Save data ####
saveRDS(izone_top, file = "inputs/data/izone_top.rds")
saveRDS(kep1er_top, file = "inputs/data/kep1er_top.rds")
saveRDS(mml_top, file = "inputs/data/mml_top.rds")
saveRDS(fromis_top, file = "inputs/data/fromis_top.rds")
saveRDS(ioi_top, file = "inputs/data/ioi_top.rds")
saveRDS(izone_top10_features, file = "inputs/data/izone_top10_features.rds")
saveRDS(kep1er_top10_features, file = "inputs/data/kep1er_top10_features.rds")
saveRDS(mml_top10_features, file = "inputs/data/mml_top10_features.rds")
saveRDS(ioi_top10_features, file = "inputs/data/ioi_top10_features.rds")
saveRDS(f9_top10_features, file = "inputs/data/f9_top10_features.rds")







