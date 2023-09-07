#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)


# PersonalData ------------------------------------------------------------



df_Personal <- dbGetQuery(con, "SELECT * FROM [ABUSv1].[PatientDetails].[Personal]")

df_PersonalDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.PatientDetails.Discr ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.PatientDetails.Discr.IDPatient")
df_Diagnosis <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.PatientDetails.DiagnosisPrimary ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.PatientDetails.DiagnosisPrimary.IDPatient")

df_Сomplaints <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.PatientDetails.Сomplaints ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.PatientDetails.Сomplaints.IDPatient")


df_Quadrant <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.PatientDetails.Quadrant ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.PatientDetails.Quadrant.IDPatient")






# USdata ------------------------------------------------------------------


df_USDiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USDiscr
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USDiscr.IDPatient")


df_USnodleContour<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USnodleContour
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USnodleContour.IDPatient")

df_USbackground<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USbackground
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USbackground.IDPatient")

df_USformation<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USformation
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USformation.IDPatient")

df_USnodleSize<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USnodleSize
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USnodleSize.IDPatient")

df_USstructure<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USstructure
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USstructure.IDPatient")

df_USformationBloodFlow<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USformationBloodFlow
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USformationBloodFlow.IDPatient")

df_USelastography<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USelastography
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USelastography.IDPatient")

df_USdiagnosis<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USdiagnosis
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USdiagnosis.IDPatient")

df_UScalcinatesMicroPure<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.UScalcinatesMicroPure
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.UScalcinatesMicroPure.IDPatient")

df_USisTumor<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.USDetails.USisTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.USDetails.USisTumor.ID")

# MMGdata -----------------------------------------------------------------

df_MMGDescr<- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGDescr
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGDescr.ID")

df_MMGnodle <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGnodle
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGnodle.ID")

df_MMGnodleContour <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGnodleContour
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGnodleContour.ID")

df_MMGnodleSize <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGnodleSize
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGnodleSize.ID")

df_MMGcalcifications <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGcalcifications
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGcalcifications.ID")


df_conclusionMMG <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.conclusionMMG
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.conclusionMMG.ID")

df_MMGisTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MMGDetails.MMGisTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MMGDetails.MMGisTumor.ID")


# ABUSdata ----------------------------------------------------------------
df_ABUSdiscr <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSdiscr
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSdiscr.ID")

df_ABUSnodleSize <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSnodleSize
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSnodleSize.ID")

df_ABUSnodleContours <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSnodleContours
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSnodleContours.ID")

df_ABUSstructure <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSstructure
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSstructure.ID")

df_ABUSdiagnosis <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSdiagnosis
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSdiagnosis.ID")


df_ABUSisTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.ABUSDetails.ABUSisTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.ABUSDetails.ABUSisTumor.ID")


# MRSIdata ----------------------------------------------------------------
df_DsMRSI <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.MRSIDetails.DsMRSI
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.MRSIDetails.DsMRSI.ID")

# Tumor ----------------------------------------------------------------

df_DescrTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.TumorDetails.DescrTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.TumorDetails.DescrTumor.ID")


df_morphologyStructureTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.TumorDetails.morphologyStructureTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.TumorDetails.morphologyStructureTumor.ID")


df_Receptors <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.TumorDetails.Receptors
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.TumorDetails.Receptors.ID")


df_isTumor <- dbGetQuery(con, "SELECT  *
FROM      ABUSv1.PatientDetails.Personal
LEFT JOIN ABUSv1.TumorDetails.isTumor
        ON ABUSv1.PatientDetails.Personal.ID= ABUSv1.TumorDetails.isTumor.IDPatient")

