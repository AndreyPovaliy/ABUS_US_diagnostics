library(odbc)
library(DBI)
library(sqldf)
con <- dbConnect(odbc(), Driver = "SQL Server", Server = "WIN-CDJM1LM10O7\\SQLEXPRESS", 
                 Database = "abus_model", Trusted_Connection = "True")




