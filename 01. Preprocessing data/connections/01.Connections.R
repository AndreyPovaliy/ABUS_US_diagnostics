library(odbc)
library(DBI)
library(sqldf)
con <- dbConnect(odbc(), Driver = "SQL Server", Server = "WIN-CDJM1LM10O7\\SQLEXPRESS", 
                 Database = "ABUS", Trusted_Connection = "True")

df_Discr <- dbGetQuery(con, "SELECT * FROM [ABUS].[PatientDetails].[Discr]")



df_Personal <- dbGetQuery(con, "SELECT * FROM [ABUS].[PatientDetails].[Personal]")

df_PersonalDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.Discr ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.Discr.IDPatient")

df_PersonalDiagn <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.DiagnosisPrimary 
        ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.DiagnosisPrimary.IDPatient")


