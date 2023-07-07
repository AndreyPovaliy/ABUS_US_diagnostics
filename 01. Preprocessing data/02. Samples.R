#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)

df_Personal <- dbGetQuery(con, "SELECT * FROM [ABUS].[PatientDetails].[Personal]")

df_PersonalDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.Discr ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.Discr.IDPatient")
df_Diagnosis <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.DiagnosisPrimary ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.DiagnosisPrimary.IDPatient")

df_Сomplaints <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.Сomplaints ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.Сomplaints.IDPatient")


df_Quadrant <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.PatientDetails.Quadrant ON ABUS.PatientDetails.Personal.ID= ABUS.PatientDetails.Quadrant.IDPatient")








df_PersonalUSDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USDiscr
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USDiscr.IDPatient")




