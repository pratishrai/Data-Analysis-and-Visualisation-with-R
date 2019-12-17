library(ggplot2)
library(lubridate)

# 1.Reading the Data-
events <- readRDS("events_past_year.rds")

# 2.Obtaining the count of events for each individual month-
months_count <- events %>% group_by(months=floor_date(events$local_date, "month")) %>%
  summarize(events_count=n())

# 3.Visualizing the monthly count of events-
ggplot(months_count, aes(months, events_count)) + geom_bar(stat = "identity")

# 5.Obtaining the count of events for each year (2018 and 2019) and visualizing it.
years_count <- events %>% group_by(years=floor_date(events$local_date, "year")) %>%
  summarize(events_count=n())

ggplot(years_count, aes(years, events_count)) + geom_bar(stat = "identity")