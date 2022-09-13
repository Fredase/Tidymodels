## Set working directory
setwd("C:/Users/Orobo/Downloads/data_complaints")
library(tidymodels)
library(tidyverse)
library(visdat)


## Load the data
train_data <- read_csv("data_complaints_train.csv")
test_data <- read.csv("data_complaints_test.csv")

## Check dimension of your data
dim(train_data)
dim(test_data)

## view the data
train_data %>% glimpse()
#view(train_data)

table(train_data$Product)

## visualize data structure
vis_dat(train_data)

## visualize missing values
vis_miss(train_data) #There are no missing values
is.na(train_data) %>% colSums() ## Alternative computation of missing values

table(train_data$State)

## Number of unique values in State and Company columns
train_data %>% select(State) %>% n_distinct()
train_data %>% select(Company) %>% n_distinct()


train_data %>% select(`Submitted via`) %>% n_distinct()