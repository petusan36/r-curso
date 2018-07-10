# library(read)

#setwd("D:/RepositoriosGITHUB/r-curso")
setwd("D:/RepositoriosGIT/r-curso")

auto <- read.csv("data/tema1/auto-mpg.csv", header = TRUE, sep = ","
                 ,strings.na = ""               # para asignar un valor cuando venga vacio
                 , stringsAsFactors = FALSE)    # para evitar que se cargue como un factor, cargará como un caracter
head(auto)


auto_no_header <- read.csv("data/tema1/auto-mpg-noheader.csv", header = FALSE)
head(auto_no_header, 4)

auto_custom_header <-
  read.csv("data/tema1/auto-mpg-noheader.csv",
           header = FALSE, col.names = c("numero", "millas_por_galeon",
                                         "cilindrada", "desplazamiento",
                                         "caballos_de_potencia", "peso",
                                         "aceleracion", "año", "modelo"
                                         )
           )
head(auto_custom_header, 4)

who_from_internet <- read.csv("http://frogames.es/course-contents/r/intro/tema1/WHO.csv")
View(who_from_internet)

url <- "data/tema1/cd_catalog.xml"

xmldoc <- xmlParse(url)

rootNode <- xmlRoot(xmldoc)

rootNode[1]

cds_data <- xmlSApply(rootNode, function(x) xmlSApply(x, xmlValue))

View(cds_data)


cds.catalog <- data.frame(t(cds_data), row.names = NULL)

View(cds.catalog)
