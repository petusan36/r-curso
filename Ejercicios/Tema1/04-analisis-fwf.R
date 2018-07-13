setwd("D:/RepositoriosGITHUB/r-curso")
students_data <- read.fwf("data/tema1/student-fwf.txt"
                          , widths = c(4,15, 20, 15, 4)
                          , col.names =c("id", "nombre", "mail", "carrera", "año")
                          )


students_data_header <- read.fwf("data/tema1/student-fwf-header.txt"
                                 , widths = c(4,15, 20, 15, 4)
                                 , header = TRUE, sep = "\t"
                                 , skip = 2
                                 )


students_data <- read.fwf("data/tema1/student-fwf.txt"
                          , widths = c(4,15, -20, 15, 4)
                          , col.names =c("id", "nombre", "carrera", "año")
)


clientes <- c("Juan Gabriel", "Ricardo", "Pedro")
fechas <- as.Date(c("2017-12-27", "2017-11-1", "2018-1-1"))
pago <- c(315, 192.55, 40.15)
pedidos <- data.frame(clientes, fechas, pago)

clientes_vip <- c("Juan Gabriel", "Ricardo")

save(pedidos,  clientes_vip, file = "data/tema1/pedidos.Rdata")
saveRDS(pedidos, file = "data/tema1/pedidos.rds")

remove()
