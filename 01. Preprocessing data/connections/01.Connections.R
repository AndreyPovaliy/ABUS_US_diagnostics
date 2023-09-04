library(odbc)
library(DBI)
library(sqldf)
con <- dbConnect(odbc(), Driver = "SQL Server", Server = "WIN-CDJM1LM10O7\\SQLEXPRESS", 
                 Database = "ABUSv1", Trusted_Connection = "True")




