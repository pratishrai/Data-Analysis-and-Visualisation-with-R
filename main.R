# 1.Reading the Data-
events <- readRDS("events_past_year.rds")

## Otaining the month
month <- t(sapply(events$time, function(x) substring(x, first=c(1,2,3,4,6,7,9,10), last=c(1,2,3,4,6,7,9,10))))
colnames(month)<- c("1","2","3","4","5","6","7","8")

req0 <- month[,4]
req1 <- month[,5]
req2 <- month[,6]


# 2.Obtaining the count of events for each individual month-
aug <- length(which(req0 == 8 & req1 == 0 & req2 == 8 ))

sept <- length(which(req0 == 8 & req1 == 0 & req2 == 9 ))

oct <- length(which(req0 == 8 & req1 == 1 & req2 == 0 ))

nov <- length(which(req0 == 8 & req1 == 1 & req2 == 1 ))

dec <- length(which(req0 == 8 & req1 == 1 & req2 == 2 ))

jan <- length(which(req0 == 9 & req1 == 0 & req2 == 1 ))

feb <- length(which(req0 == 9 & req1 == 0 & req2 == 2 ))

mar <- length(which(req0 == 9 & req1 == 0 & req2 == 3 ))

apr <- length(which(req0 == 9 & req1 == 0 & req2 == 4 ))

may <- length(which(req0 == 9 & req1 == 0 & req2 == 5 ))

jun <- length(which(req0 == 9 & req1 == 0 & req2 == 6 ))

jul <- length(which(req0 == 9 & req1 == 0 & req2 == 7 ))

aug19 <- length(which(req0 == 9 & req1 == 0 & req2 == 8 ))

aug
sept
oct
nov
dec
jan
feb
mar
apr
may
jun
jul
aug19

## After obtaining the result for each month- 
count_of_events_m <- c(259,321,370,374,291,299,302,381,384,410,342,286,283)

# 4.Visualizing the monthly count of events-
months <- c('aug','sept','oct','nov','dec','jan','feb','mar','apr','may','jun','jul','aug19')
month_dataset <- data.frame(months, count_of_events_m)
## Making a bar chart using the information in `month_dataset`-
library(ggplot2)

ggplot(month_dataset, aes(months, count_of_events_m)) + geom_bar(stat = "identity")

# 5.Obtaining the count of events for each year (2018 and 2019) and visualizing it.
year_2018 <- length(which(req0 == 8)) #2018

year_2019 <- length(which(req0 == 9)) #2019

## After obtaining the result for each year-
years <- c("2018","2019")
count_of_events_y <- c(1615,2687)

year_dataset <- data.frame(years,count_of_events_y)
## Making a bar chart using the information in `year_dataset`-
ggplot(year_dataset, aes(years, count_of_events_y)) + geom_bar(stat = "identity")