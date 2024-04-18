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
sc <- read_csv("data/raw_data/45100080.csv")
age <- read_csv("data/raw_data/13100096.csv")

# Clean 'Mental health indicators' dataset
mental_health_indicators <- 
  filter(mental_health_indicators, Characteristics == 'Percent'|Characteristics == 'Number of persons' )

mental_health_indicators <-
  mental_health_indicators |>
  rename(Age='Age group') |>
  select(REF_DATE, GEO, Age, Sex, Indicators,Characteristics, VALUE)

# Clean 'Perceived mental health, by age group' dataset
age <-
  age |>
  filter(Characteristics == 'Percent') |>
  rename(Age='Age group') |>
  select(REF_DATE, GEO, Age, Sex, Indicators, VALUE)

# Clean 'Perceived mental health, by gender and other selected sociodemographic characteristics' dataset

province <-
  province |>
  filter(Statistics == 'Percentage of persons') |>
  select(REF_DATE, GEO, Gender, Indicators, VALUE)

# Clean 'Perceived mental health, by gender and province' dataset
sc <- 
  sc |>
  rename(Sociodemographic_characteristics = 'Sociodemographic characteristics' )|>
  filter(Statistics == 'Percentage of persons') |>
  select(REF_DATE, GEO, Gender, Sociodemographic_characteristics, Indicators, VALUE)
  

#### Save data ####
write_parquet(x=mental_health_indicators,sink="data/analysis_data/mental_health_indicators.parquet")
write_parquet(x=province,sink="data/analysis_data/province.parquet")
write_parquet(x=sc,sink="data/analysis_data/sociodemographic_characteristics.parquet")
write_parquet(x=age,sink="data/analysis_data/age.parquet")
