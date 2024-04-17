#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(arrow)
#### Clean data ####
mental_health_indicators <- read_csv("data/raw_data/mental_health_indicators.csv")
province <- read_csv("data/raw_data/province.csv")
sociodemographic_characteristics <- read_csv("data/raw_data/sociodemographic_characteristics.csv")



cleaned_data <- 
  filter(mental_health_indicators, Characteristics == 'Number of persons'| Characteristics == 'Percent' )
cleaned_data

#### Save data ####
write_parquet(x=cleaned_data,sink="data/analysis_data/mental_health_indicators.parquet")
write_parquet(x=province,sink="data/analysis_data/province.parquet")
write_parquet(x=sociodemographic_characteristics,sink="data/analysis_data/sociodemographic_characteristics.parquet")

