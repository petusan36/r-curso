install.packages("jsonlite")
library(jsonlite)


dat.1 <- fromJSON("data/tema1/students.json")
dat.2 <- fromJSON("data/tema1/student-courses.json")


#finance.yahoo.com/webservices/v1/symbols/allcurrencies/quote?format=json
install.packages("curl")
library(curl)
url <- "https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json"

currencies <-  fromJSON(url)
