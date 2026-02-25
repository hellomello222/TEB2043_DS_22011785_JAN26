install.packages(c("tidyverse", "skimr", "janitor", "corrplot"))

library(tidyverse)
library(skimr)
library(janitor)
library(corrplot)
library(tidyverse)
library(lubridate)

# Import dataset
netflix <- read.csv("netflix_titles.csv", stringsAsFactors = FALSE)

# Check data, structure & summary
netflix <- netflix_titles
head(netflix)
str(netflix)
summary(netflix)
glimpse(netflix)

#Check missing values
colSums(is.na(netflix))

# Remove rows where date is missing (important column)
netflix <- netflix %>%
  drop_na(director, cast, country, rating, date_added)

# Remove duplicate rows
netflix <- netflix %>% distinct()

# Convert date_added to Date format
netflix$date_added <- mdy(netflix$date_added)

# Convert type and rating to factor
netflix$type <- as.factor(netflix$type)
netflix$rating <- as.factor(netflix$rating)

# Clean text (trim whitespace)
netflix <- netflix %>%
  mutate(across(where(is.character), str_trim))

# Standardise text format (Title Case)
netflix$type <- str_to_title(netflix$type)
netflix$country <- str_to_title(netflix$country)

# Extract year and month from date_added
netflix$year_added <- year(netflix$date_added)
netflix$month_added <- month(netflix$date_added, label = TRUE)

# Clean duration column
netflix <- netflix %>%
  separate(duration, into = c("duration_num", "duration_unit"), sep = " ")

netflix$duration_num <- as.numeric(netflix$duration_num)

# Final check after cleaning
str(netflix)
summary(netflix)
colSums(is.na(netflix))

#Export cleaned dataset
write.csv(netflix, "netflix_cleaned.csv", row.names = FALSE)
