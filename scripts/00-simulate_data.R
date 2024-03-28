#### Preamble ####
# Purpose: Simulates the data in mental health problems and mental health clinics
# Author: Zijun Meng
# Date: 28 March 2024
# Contact: zijun.meng@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
set.seed(1234)
#### Simulate data ####


simulated_dataset <-
  tibble(
    year = 20 + rep(0:20),
    patients = sample(100:10000, size = 21, replace = TRUE),
    clinics = sample(100:10000, size = 21, replace = TRUE),
    ratio = patients/clinics
  )

simulated_dataset

simulated_dataset$year |> min() == 2000
simulated_dataset$year |> max() == 2020

simulated_dataset$patients |> min() >= 100
simulated_dataset$patients |> max() <= 10000

simulated_dataset$clinics |> min() >= 100
simulated_dataset$clinics |> max() <= 10000