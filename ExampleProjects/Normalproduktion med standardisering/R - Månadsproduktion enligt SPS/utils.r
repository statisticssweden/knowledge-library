#################################################################
### Besrkivning:
### Skapad av:
### Inparameterar:
### Beroenden:
### Ändrad:
###
### 
### 
### 
###
#################################################################


#Installera paket
install.packages("dplyr")
install.packages("lubridate")
install.packages("data.table")
#initiera
library(dplyr)
library(lubridate)
library(data.table)

generateMonthSequence <- function(start_month, end_month) {
 
  start_date <- as.Date(paste0(start_month, "01"), format = "%YM%m%d")
  end_date <- as.Date(paste0(end_month, "01"), format = "%YM%m%d")
  
  months_sequence <- seq(from = start_date, to = end_date, by = "1 month")
  
  formatted_months <- format(months_sequence, "%YM%m")
  
  return(formatted_months)
}

get_previous_year_month <- function(input_date) {
  year <- substr(input_date, 1, 4)
  month <- substr(input_date, 6, 7)
  previous_year<-as.numeric(year)-1
  previous_year<-as.character(previous_year)
  previous_year_month<-paste0(previous_year, "M", month)
  
  return(previous_year_month)
}