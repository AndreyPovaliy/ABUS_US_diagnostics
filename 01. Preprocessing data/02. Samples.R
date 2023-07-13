#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)


# PersonalData ------------------------------------------------------------



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






# USdata ------------------------------------------------------------------


df_USDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USDiscr
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USDiscr.IDPatient")


df_USnodleContour<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USnodleContour
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USnodleContour.IDPatient")

df_USbackground<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USbackground
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USbackground.IDPatient")

df_USformation<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USformation
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USformation.IDPatient")

df_USnodleSize<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USnodleSize
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USnodleSize.IDPatient")

df_USstructure<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USstructure
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USstructure.IDPatient")

df_USformationBloodFlow<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USformationBloodFlow
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USformationBloodFlow.IDPatient")

df_USelastography<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USelastography
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USelastography.IDPatient")

df_USdiagnosis<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USdiagnosis
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USdiagnosis.IDPatient")

df_UScalcinatesMicroPure<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.UScalcinatesMicroPure
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.UScalcinatesMicroPure.IDPatient")

df_USisTumor<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.USDetails.USisTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.USDetails.USisTumor.ID")


# MMGdata -----------------------------------------------------------------

df_MMGDescr<- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGDescr
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGDescr.IDPatient")

df_MMGnodle <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGnodle
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGnodle.IDPatient")

df_MMGnodleContour <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGnodleContour
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGnodleContour.IDPatient")

df_MMGnodleSize <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGnodleSize
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGnodleSize.IDPatient")

df_MMGcalcifications <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGcalcifications
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGcalcifications.IDPatient")


df_conclusionMMG <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.conclusionMMG
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.conclusionMMG.IDPatient")

df_MMGisTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MMGDetails.MMGisTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.MMGDetails.MMGisTumor.ID")


# ABUSdata ----------------------------------------------------------------
df_ABUSdiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSdiscr
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSdiscr.IDPatient")

df_ABUSnodleSize <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSnodleSize
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSnodleSize.IDPatient")

df_ABUSnodleContours <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSnodleContours
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSnodleContours.IDPatient")

df_ABUSstructure <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSstructure
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSstructure.IDPatient")

df_ABUSdiagnosis <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSdiagnosis
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSdiagnosis.IDPatient")


df_ABUSisTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.ABUSDetails.ABUSisTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.ABUSDetails.ABUSisTumor.ID")


# MRSIdata ----------------------------------------------------------------
df_DsMRSI <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.MRSIDetails.DsMRSI
        ON ABUS.PatientDetails.Personal.ID= ABUS.MRSIDetails.DsMRSI.IDPatient")

# Tumor ----------------------------------------------------------------

df_DescrTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.TumorDetails.DescrTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.TumorDetails.DescrTumor.IDPatient")


df_morphologyStructureTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.TumorDetails.morphologyStructureTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.TumorDetails.morphologyStructureTumor.IDPatient")


df_Receptors <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.TumorDetails.Receptors
        ON ABUS.PatientDetails.Personal.ID= ABUS.TumorDetails.Receptors.IDPatient")


df_isTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUS.PatientDetails.Personal
LEFT JOIN ABUS.TumorDetails.isTumor
        ON ABUS.PatientDetails.Personal.ID= ABUS.TumorDetails.isTumor.IDPatient")
