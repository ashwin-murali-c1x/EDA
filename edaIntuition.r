#Set path to the folder where the logs are present
setwd("") 

#Import libraries
library(xlsx)
library(lubridate)
library(dplyr)

#Import datasets
capacitylogs <- read.xlsx("172.31.4.99_jsoncapacity.log.xlsx" , sheetIndex = 1)
impressionlogs <- read.xlsx("172.31.4.99_jsonimpr.log.xlsx", sheetIndex = 1)
clicklogs <- read.xlsx("172.31.4.99_jsonclick.log.xlsx",sheetIndex = 1)
pixellogs <- read.csv2("pixel_json_shopclues-2019-06-07-09_01_06.csv")

#To know the Structure of datasets
str(capacitylogs) 
str(impressionlogs)
str(clicklogs) 
str(pixellogs)

#To know the top and bottom fields  of the dataset
head(capacitylogs)
tail(capacitylogs) 
head(impressionlogs) 
tail(impressionlogs) 
head(clicklogs)
tail(clicklogs)
head(pixellogs)
tail(pixellogs)

#Unique UUid's present in each log
select(capacitylogs, UUID) %>% unique %>% nrow 
select(impressionlogs, UUID) %>% unique %>% nrow
select(clicklogs, UUID) %>% unique %>% nrow 
select(pixellogs, UUID) %>% unique %>% nrow

#Summary 
pixellogssummary <- summary(pixellogs)
capacitylogssummary <- summary(capacitylogs)
impressionlogssummary <- summary(impressionlogs)
clicklogssummary = summary(clicklogs) 
