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

#### Test data ####
mental_health_indicators <- read_parquet(file = "data/analysis_data/mental_health_indicators.parquet")
province <- read_parquet(file = "data/analysis_data/province.parquet")
sociodemographic_characteristics <- read_parquet(file = "data/analysis_data/sociodemographic_characteristics.parquet")

province
