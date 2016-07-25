library(ggplot2)
library(plyr)
library(dplyr)
library(jsonlite)

link <- 'https://data.sfgov.org/api/views/cuks-n6tp/rows.csv?accessType=DOWNLOAD&bom=true&query=select+*+where+%60date%60+%3E%3D+%272013-12-01T00%3A00%3A00%27'
crime <- read.csv(link)

# Loading Data
crime$Date <- as.Date(crime$Date, '%m/%d/%Y')

crime <- crime[crime$Date >= '2016-01-01',]

#   