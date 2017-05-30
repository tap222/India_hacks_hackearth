library(data.table)
library(jsonlite)

setwd('/home/hduser1/Downloads/India_hacks/hotstar_dataset')

#### Train
train <- fromJSON("train_data.json")

train_data <- data.table(ID = unlist(names(train)))
train_data[, `:=` (genres = unlist(lapply(train, '[',1)),
                   titles = unlist(lapply(train, '[',2)),
                   cities = unlist(lapply(train, '[', 3)),
                   segment = unlist(lapply(train, '[',4)),
                   dow = unlist(lapply(train, '[',5)),
                   tod = unlist(lapply(train, '[', 6))
)]


#### Test 
test <- fromJSON("test_data.json")

test_data <- data.table(ID  = unlist(names(test)))
test_data[,`:=` (genres = unlist(lapply(test, '[',1)),
                 titles = unlist(lapply(test, '[',2)),
                 tod = unlist(lapply(test, '[', 3)),
                 cities = unlist(lapply(test, '[',4)),
                 dow = unlist(lapply(test, '[',5))
)]

test <- data.frame(test_data)
train<-data.frame(train_data)
 
str(train_data)
str(test_data)

