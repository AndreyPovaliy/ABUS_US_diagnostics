# Name of variable - PascalCase
# Name of objects database - snake_case

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)


# PersonalData ------------------------------------------------------------



dfPersonal <- dbGetQuery(con, "SELECT * FROM [abus_real].[patient_details].[personal]")

dfPatientDescribe <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.patient_details.describe_patient ON abus_real.patient_details.personal.id_patient= abus_real.patient_details.describe_patient.id_patient")

dfDiagnosis <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.patient_details.diagnosis_primary ON abus_real.patient_details.personal.id_patient= abus_real.patient_details.diagnosis_primary.id_patient")

dfСomplaints <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.patient_details.complaints ON abus_real.patient_details.personal.id_patient= abus_real.patient_details.complaints.id_patient")


dfQuadrant <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.patient_details.quadrant ON abus_real.patient_details.personal.id_patient= abus_real.patient_details.quadrant.id_patient")






# UsData ------------------------------------------------------------------


dfUsDescribe <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_describe
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_describe.id_patient")


dfUsNodleContour<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_nodle_contour
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_nodle_contour.id_patient")

dfUsBackground<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_background
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_background.id_patient")

dfUsFormation<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_formation
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_formation.id_patient")

dfUsNodleSize<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_nodle_size
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_nodle_size.id_patient")

dfUsStructure<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_structure
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_structure.id_patient")

dfUsFormationBloodFlow<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_formation_blood_flow
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_formation_blood_flow.id_patient")

dfUsElastography<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_elastography
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_elastography.id_patient")

dfUsDiagnosis<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_diagnosis
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_diagnosis.id_patient")

dfUsCalcinatesMicroPure<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_calcinates_micro_pure
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_calcinates_micro_pure.id_patient")

dfUsIsTumor<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.us_details.us_is_tumor
        ON abus_real.patient_details.personal.id_patient= abus_real.us_details.us_is_tumor.id_patient")


# MmgData -----------------------------------------------------------------

dfMmgDescribe<- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_describe
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_describe.id_patient")

dfMmgNodle <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_nodle
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_nodle.id_patient")

dfMmgNodleContour <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_nodle_contour
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_nodle_contour.id_patient")

dfMmgNodleSize <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_nodle_size
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_nodle_size.id_patient")

dfMmgCalcifications <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_calcifications
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_calcifications.id_patient")


dfMmgConclusion <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_conclusion
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_conclusion.id_patient")

dfMmgIsTumor <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mmg_details.mmg_is_tumor
        ON abus_real.patient_details.personal.id_patient= abus_real.mmg_details.mmg_is_tumor.id_patient")


# AbusData ----------------------------------------------------------------
dfAbusDescribe <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_describe
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_describe.id_patient")

dfAbusNodleSize <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_nodle_size
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_nodle_size.id_patient")

dfAbusNodleContours <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_nodle_contours
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_nodle_contours.id_patient")

dfAbusStructure <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_structure
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_structure.id_patient")

dfAbusDiagnosis <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_diagnosis
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_diagnosis.id_patient")


dfAbusIsTumor <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.abus_details.abus_is_tumor
        ON abus_real.patient_details.personal.id_patient= abus_real.abus_details.abus_is_tumor.id_patient")


# MrsiData ----------------------------------------------------------------
dfDescribeMrsi <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.mrsi_details.mrsi_describe
        ON abus_real.patient_details.personal.id_patient= abus_real.mrsi_details.mrsi_describe.id_patient")

# Tumor ----------------------------------------------------------------

dfDescrTumor <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.tumor_details.tumor_describe
        ON abus_real.patient_details.personal.id_patient= abus_real.tumor_details.tumor_describe.id_patient")


dfMorphologyStructureTumor <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.tumor_details.tumor_morphology_structure
        ON abus_real.patient_details.personal.id_patient= abus_real.tumor_details.tumor_morphology_structure.id_patient")


dfReceptors <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.tumor_details.tumor_receptors
        ON abus_real.patient_details.personal.id_patient= abus_real.tumor_details.tumor_receptors.id_patient")


dfIsTumor <- dbGetQuery(con, "SELECT  *
FROM      abus_real.patient_details.personal
LEFT JOIN abus_real.tumor_details.tumor_is
        ON abus_real.patient_details.personal.id_patient= abus_real.tumor_details.tumor_is.id_patient")