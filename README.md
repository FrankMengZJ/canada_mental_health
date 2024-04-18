# Mental Health Problems in Canada

## Overview

This repo explores the relationship between mental health problems and mental health support in Canada. 

To use this folder, click the green "Code" button", then "Download ZIP". Move the downloaded folder to where you want to work on your own computer, and then modify it to suit.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from https://open.canada.ca/data/en/dataset/a9863f45-6a1a-4277-ae0f-2d9cb61d413a and https://www.statcan.gc.ca/en/start.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Data Extraction

The Mental health indicators data was obtained from https://open.canada.ca/data/en/dataset/a9863f45-6a1a-4277-ae0f-2d9cb61d413a . The 'Perceived mental health, by gender and other selected sociodemographic characteristics', 'Perceived mental health, by gender and province' and 'Perceived mental health, by age group' datasets were obtained from https://www.statcan.gc.ca/en/start , their table ids are 45-10-0080-01, 45-10-0079-01 and 13-10-0096-03.



## Statement on LLM usage

ChatGPT was used for finetuning and proofreading.
