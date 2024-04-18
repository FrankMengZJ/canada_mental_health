#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(arrow)

age <- read_parquet(file = "data/analysis_data/age.parquet")
mental_health_indicators <- read_parquet(file = "data/analysis_data/mental_health_indicators.parquet")
province <- read_parquet(file = "data/analysis_data/province.parquet")
sociodemographic_characteristics <- read_parquet(file = "data/analysis_data/sociodemographic_characteristics.parquet")

#### Test data ####

age
distinct(age,REF_DATE)
distinct(age, Indicators)

filter(mental_health_indicators,Indicators == "Perceived mental health, fair or poor", GEO == "Canada", Age == "Total, 15 years and over", Sex == "Both sexes")

filter(age, Indicators == "Perceived mental health, fair or poor" & Age == "Total, 12 years and over" & Sex == "Both sexes" & GEO == "Canada (excluding territories)")

filter(province, GEO == "Canada (excluding territories)", Gender == "Total, all persons", Indicators == "Fair or poor perceived mental health")

filter(sociodemographic_characteristics, GEO == "Canada (excluding territories)", Gender == "Total, all persons", Sociodemographic_characteristics == "Total, 15 years and over", Indicators == "Fair or poor perceived mental health")

