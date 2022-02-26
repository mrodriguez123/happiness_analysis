library(ggplot2)
library(tidyverse)

# data from Kaggle website 
# https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv
setwd("../happiness_data")
data2020 <- read_csv("2020.csv")

# rename columns 
data2020 = data2020 %>%
  rename(ladder = "Ladder score",
         country = "Country name",
         life_expectancy = "Explained by: Healthy life expectancy",
         freedom_choices = "Explained by: Freedom to make life choices",
         generosity = "Explained by: Generosity",
         corruption_perception = "Explained by: Perceptions of corruption",
         GDP = "Explained by: Log GDP per capita",
         social_support = "Explained by: Social support") %>%
  select(country, ladder, GDP, social_support, life_expectancy, freedom_choices, generosity, corruption_perception)

head(data2020)