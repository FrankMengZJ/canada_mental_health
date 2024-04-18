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
mental_health_indicators <- read_csv("data/raw_data/13100465.csv")
province <- read_csv("data/raw_data/45100079.csv")
sociodemographic_characteristics <- read_csv("data/raw_data/45100080.csv")
age <- read_csv("data/raw_data/13100096.csv")


cleaned_data <- 
  filter(mental_health_indicators, Characteristics == 'Percent'|Characteristics == 'Number of persons' )

cleaned_data <-
  cleaned_data |>
  rename(Age='Age group') |>
  select(REF_DATE, GEO, Age, Sex, Indicators,Characteristics, VALUE)
#### Save data ####
write_parquet(x=cleaned_data,sink="data/analysis_data/mental_health_indicators.parquet")
write_parquet(x=province,sink="data/analysis_data/province.parquet")
write_parquet(x=sociodemographic_characteristics,sink="data/analysis_data/sociodemographic_characteristics.parquet")
write_parquet(x=age,sink="data/analysis_data/age.parquet")
