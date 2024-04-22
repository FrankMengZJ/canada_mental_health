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


## Test age dataset

age$Age |> min() >= 0

age$REF_DATE |> min() == 2015
age$REF_DATE |> max() == 2022

distinct(age,Sex)

distinct(age, GEO)

distinct(age, Indicators)


## Test mental_health_indicators dataset

mental_health_indicators$REF_DATE |> min() == 2002
mental_health_indicators$REF_DATE |> max() == 2012

mental_health_indicators$VALUE |> min() >= 0

distinct(mental_health_indicators,Sex)

distinct(mental_health_indicators,GEO)

distinct(mental_health_indicators,Age)


## Test province dataset

as.Date(paste(province$REF_DATE,"-01", sep="")) |> min() == "2021-04-01"
as.Date(paste(province$REF_DATE,"-01", sep="")) |> max() == "2023-07-01"

province$VALUE |> min() >= 0

distinct(province, Gender)

distinct(province, GEO)

distinct(province, Indicators)


## Test sociodemographic_characteristics dataset

as.Date(paste(sociodemographic_characteristics$REF_DATE,"-01", sep="")) |> min() == "2021-04-01"
as.Date(paste(sociodemographic_characteristics$REF_DATE,"-01", sep="")) |> max() == "2023-07-01"

sociodemographic_characteristics$VALUE |> min() >= 0

distinct(sociodemographic_characteristics, GEO)

distinct(sociodemographic_characteristics, Gender)

distinct(sociodemographic_characteristics, Indicators)

distinct(sociodemographic_characteristics, Sociodemographic_characteristics)
