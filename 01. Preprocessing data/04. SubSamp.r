# Mathirials -----------------------------------------------------------------
## Jun --------------------------------------------------------------
dfPersonalJun <- subset(df_Personal, Group == gr_US | Group ==gr_US_ABUS)
dfDiagnosisJun<- subset(df_Diagnosis, Group == gr_US | Group ==gr_US_ABUS)
dfPersonalDiscrJun <- subset(df_PersonalDiscr, Group == gr_US | Group ==gr_US_ABUS)
dfСomplaintsJun <- subset(df_Сomplaints, Group == gr_US | Group ==gr_US_ABUS)
dfQuadrantJun <- subset(df_Quadrant, Group == gr_US | Group ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfPersonalSnr <- subset(df_Personal, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfDiagnosisSnr<- subset(df_Diagnosis, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfPersonalDiscrSnr <- subset(df_PersonalDiscr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfСomplaintsSnr <- subset(df_Сomplaints, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfQuadrantSnr <- subset(df_Quadrant, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfPersonalGr1 <- subset(df_Personal, Group == gr_US)
dfDiagnosisGr1<- subset(df_Diagnosis, Group == gr_US)
dfPersonalDiscrGr1 <- subset(df_PersonalDiscr, Group == gr_US)
dfСomplaintsGr1 <- subset(df_Сomplaints, Group == gr_US)
dfQuadrantGr1 <- subset(df_Quadrant, Group == gr_US)
## Gr2 --------------------------------------------------------------
dfPersonalGr2 <- subset(df_Personal, Group == gr_US_MMG)
dfDiagnosisGr2<- subset(df_Diagnosis, Group == gr_US_MMG)
dfPersonalDiscrGr2 <- subset(df_PersonalDiscr, Group == gr_US_MMG)
dfСomplaintsGr2 <- subset(df_Сomplaints, Group == gr_US_MMG)
dfQuadrantGr2 <- subset(df_Quadrant, Group == gr_US_MMG)
## Gr3 --------------------------------------------------------------
dfPersonalGr3 <- subset(df_Personal, Group == gr_US_ABUS)
dfDiagnosisGr3<- subset(df_Diagnosis, Group == gr_US_ABUS)
dfPersonalDiscrGr3 <- subset(df_PersonalDiscr, Group == gr_US_ABUS)
dfСomplaintsGr3 <- subset(df_Сomplaints, Group == gr_US_ABUS)
dfQuadrantGr3 <- subset(df_Quadrant, Group == gr_US_ABUS)
## Gr4 --------------------------------------------------------------
dfPersonalGr4 <- subset(df_Personal, Group == gr_US_MMG_ABUS)
dfDiagnosisGr4<- subset(df_Diagnosis, Group == gr_US_MMG_ABUS)
dfPersonalDiscrGr4 <- subset(df_PersonalDiscr, Group == gr_US_MMG_ABUS)
dfСomplaintsGr4 <- subset(df_Сomplaints, Group == gr_US_MMG_ABUS)
dfQuadrantGr4 <- subset(df_Quadrant, Group == gr_US_MMG_ABUS)


# Results -----------------------------------------------------------------
## Jun --------------------------------------------------------------
#Group == gr_US | Group ==gr_US_ABUS
df_MMGDescrJun <- subset(df_MMGDescr, Group == gr_US | Group ==gr_US_ABUS)
df_MMGnodleJun <- subset(df_MMGnodle, Group == gr_US | Group ==gr_US_ABUS)
df_MMGnodleContourJun <- subset(df_MMGnodleContour, Group == gr_US | Group ==gr_US_ABUS)
df_MMGnodleSizeJun <- subset(df_MMGnodleSize, Group == gr_US | Group ==gr_US_ABUS)
df_MMGcalcificationsJun <- subset(df_MMGcalcifications, Group == gr_US | Group ==gr_US_ABUS)
df_conclusionMMGJun <- subset(df_conclusionMMG, Group == gr_US | Group ==gr_US_ABUS)
df_MMGisTumorJun <- subset(df_MMGisTumor, Group == gr_US | Group ==gr_US_ABUS)


dfUSDiscrJun <- subset(df_USDiscr, Group == gr_US | Group ==gr_US_ABUS)
dfUSnodleContourJun  <- subset(df_USnodleContour, Group == gr_US | Group ==gr_US_ABUS)
dfUSbackgroundJun  <- subset(df_USbackground, Group == gr_US | Group ==gr_US_ABUS)
dfUSformationJun  <- subset(df_USformation, Group == gr_US | Group ==gr_US_ABUS)
dfUSnodleSizeJun  <- subset(df_USnodleSize, Group == gr_US | Group ==gr_US_ABUS)
dfUSstructureJun  <- subset(df_USstructure, Group == gr_US | Group ==gr_US_ABUS)
dfUSformationBloodFlowJun  <- subset(df_USformationBloodFlow, Group == gr_US | Group ==gr_US_ABUS)
dfUSelastographyJun <- subset(df_USelastography, Group == gr_US | Group ==gr_US_ABUS)
dfUSdiagnosisJun <- subset(df_USdiagnosis, Group == gr_US | Group ==gr_US_ABUS)
dfUScalcinatesMicroPureJun <- subset(df_UScalcinatesMicroPure, Group == gr_US | Group ==gr_US_ABUS)
df_USisTumorJun <- subset(df_USisTumor, Group == gr_US | Group ==gr_US_ABUS)

df_ABUSdiscrJun <- subset(df_ABUSdiscr, Group == gr_US | Group ==gr_US_ABUS)
df_ABUSnodleSizeJun <- subset(df_ABUSnodleSize, Group == gr_US | Group ==gr_US_ABUS)
df_ABUSnodleContoursJun <- subset(df_ABUSnodleContours, Group == gr_US | Group ==gr_US_ABUS)
df_ABUSstructureJun <- subset(df_ABUSstructure, Group == gr_US | Group ==gr_US_ABUS)
df_ABUSdiagnosisJun <- subset(df_ABUSdiagnosis, Group == gr_US | Group ==gr_US_ABUS)
df_ABUSisTumorJun <- subset(df_ABUSisTumor, Group == gr_US | Group ==gr_US_ABUS)

df_DsMRSIJun <- subset(df_DsMRSI, Group == gr_US | Group ==gr_US_ABUS )

df_DescrTumorJun <- subset(df_DescrTumor, Group == gr_US | Group ==gr_US_ABUS)
df_morphologyStructureTumorJun <- subset(df_morphologyStructureTumor, Group == gr_US | Group ==gr_US_ABUS)
df_ReceptorsJun <- subset(df_Receptors, Group == gr_US | Group ==gr_US_ABUS)
df_isTumorJun<- subset(df_isTumor, Group == gr_US | Group ==gr_US_ABUS)

## Sin --------------------------------------------------------------
#Group == gr_US_MMG | Group ==gr_US_MMG_ABUS

df_MMGDescrSin <- subset(df_MMGDescr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_MMGnodleSin <- subset(df_MMGnodle, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_MMGnodleContourSin <- subset(df_MMGnodleContour, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_MMGnodleSizeSin <- subset(df_MMGnodleSize, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_MMGcalcificationsSin <- subset(df_MMGcalcifications, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_conclusionMMGSin  <- subset(df_conclusionMMG, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_MMGisTumorSin <- subset(df_MMGisTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

dfUSDiscrSin <- subset(df_USDiscr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSnodleContourSin  <- subset(df_USnodleContour, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSbackgroundSin  <- subset(df_USbackground, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSformationSin  <- subset(df_USformation, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSnodleSizeSin  <- subset(df_USnodleSize, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSstructureSin  <- subset(df_USstructure, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSformationBloodFlowSin  <- subset(df_USformationBloodFlow, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSelastographySin <- subset(df_USelastography, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUSdiagnosisSin <- subset(df_USdiagnosis, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfUScalcinatesMicroPureSin <- subset(df_UScalcinatesMicroPure, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_USisTumorSin <- subset(df_USisTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)


df_ABUSdiscrSin <- subset(df_ABUSdiscr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ABUSnodleSizeSin <- subset(df_ABUSnodleSize, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ABUSnodleContoursSin <- subset(df_ABUSnodleContours, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ABUSstructureSin <- subset(df_ABUSstructure, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ABUSdiagnosisSin <- subset(df_ABUSdiagnosis, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ABUSisTumorSin <- subset(df_ABUSisTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

df_DsMRSISin <- subset(df_DsMRSI, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS )

df_DescrTumorSin <- subset(df_DescrTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_morphologyStructureTumorSin <- subset(df_morphologyStructureTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_ReceptorsSin <- subset(df_Receptors, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
df_isTumorSin  <- subset(df_isTumor, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
#Group == gr_US
df_MMGDescrGr1 <- subset(df_MMGDescr, Group == gr_US)
df_MMGnodleGr1 <- subset(df_MMGnodle, Group == gr_US)
df_MMGnodleContourGr1 <- subset(df_MMGnodleContour, Group == gr_US)
df_MMGnodleSizeGr1 <- subset(df_MMGnodleSize, Group == gr_US)
df_MMGcalcificationsGr1 <- subset(df_MMGcalcifications, Group == gr_US)
df_conclusionMMGGr1 <- subset(df_conclusionMMG, Group == gr_US) 
df_MMGisTumorGr1 <- subset(df_MMGisTumor, Group == gr_US)


dfUSDiscrGr1 <- subset(df_USDiscr, Group == gr_US)
dfUSnodleContourGr1  <- subset(df_USnodleContour, Group == gr_US)
dfUSbackgroundGr1  <- subset(df_USbackground, Group == gr_US)
dfUSformationGr1  <- subset(df_USformation, Group == gr_US)
dfUSnodleSizeGr1  <- subset(df_USnodleSize, Group == gr_US)
dfUSstructureGr1  <- subset(df_USstructure, Group == gr_US)
dfUSformationBloodFlowGr1  <- subset(df_USformationBloodFlow, Group == gr_US)
dfUSelastographyGr1 <- subset(df_USelastography, Group == gr_US)
dfUSdiagnosisGr1 <- subset(df_USdiagnosis, Group == gr_US)
dfUScalcinatesMicroPureGr1 <- subset(df_UScalcinatesMicroPure, Group == gr_US)
df_USisTumorGr1 <- subset(df_USisTumor, Group == gr_US)

df_ABUSdiscrGr1 <- subset(df_ABUSdiscr, Group == gr_US)
df_ABUSnodleSizeGr1 <- subset(df_ABUSnodleSize, Group == gr_US)
df_ABUSnodleContoursGr1 <- subset(df_ABUSnodleContours, Group == gr_US)
df_ABUSstructureGr1 <- subset(df_ABUSstructure, Group == gr_US)
df_ABUSdiagnosisGr1 <- subset(df_ABUSdiagnosis, Group == gr_US)
df_ABUSisTumorGr1 <- subset(df_ABUSisTumor, Group == gr_US)

df_DsMRSIGr1 <- subset(df_DsMRSI, Group == gr_US )

df_DescrTumorGr1 <- subset(df_DescrTumor, Group == gr_US)
df_morphologyStructureTumorGr1 <- subset(df_morphologyStructureTumor, Group == gr_US)
df_ReceptorsGr1 <- subset(df_Receptors, Group == gr_US)
df_isTumorGr1 <- subset(df_isTumor, Group == gr_US)
## Gr2 --------------------------------------------------------------
#Group == gr_US_MMG
df_MMGDescrGr2  <- subset(df_MMGDescr, Group == gr_US_MMG)
df_MMGnodleGr2  <- subset(df_MMGnodle, Group == gr_US_MMG)
df_MMGnodleContourGr2  <- subset(df_MMGnodleContour, Group == gr_US_MMG)
df_MMGnodleSizeGr2  <- subset(df_MMGnodleSize, Group == gr_US_MMG)
df_MMGcalcificationsGr2  <- subset(df_MMGcalcifications, Group == gr_US_MMG)
df_conclusionMMGGr2   <- subset(df_conclusionMMG, Group == gr_US_MMG)
df_MMGisTumorGr2  <- subset(df_MMGisTumor, Group == gr_US_MMG)


dfUSDiscrGr2 <- subset(df_USDiscr, Group == gr_US_MMG)
dfUSnodleContourGr2  <- subset(df_USnodleContour, Group == gr_US_MMG)
dfUSbackgroundGr2  <- subset(df_USbackground, Group == gr_US_MMG)
dfUSformationGr2  <- subset(df_USformation, Group == gr_US_MMG)
dfUSnodleSizeGr2  <- subset(df_USnodleSize, Group == gr_US_MMG)
dfUSstructureGr2  <- subset(df_USstructure, Group == gr_US_MMG)
dfUSformationBloodFlowGr2  <- subset(df_USformationBloodFlow, Group == gr_US_MMG)
dfUSelastographyGr2 <- subset(df_USelastography, Group == gr_US_MMG)
dfUSdiagnosisGr2 <- subset(df_USdiagnosis, Group == gr_US_MMG)
dfUScalcinatesMicroPureGr2 <- subset(df_UScalcinatesMicroPure, Group == gr_US_MMG)
df_USisTumorGr2 <- subset(df_USisTumor, Group == gr_US_MMG)

df_ABUSdiscrGr2 <- subset(df_ABUSdiscr, Group == gr_US_MMG)
df_ABUSnodleSizeGr2 <- subset(df_ABUSnodleSize, Group == gr_US_MMG)
df_ABUSnodleContoursGr2 <- subset(df_ABUSnodleContours, Group == gr_US_MMG)
df_ABUSstructureGr2 <- subset(df_ABUSstructure, Group == gr_US_MMG)
df_ABUSdiagnosisGr2 <- subset(df_ABUSdiagnosis, Group == gr_US_MMG)
df_ABUSisTumorGr2 <- subset(df_ABUSisTumor, Group == gr_US_MMG)

df_DsMRSIGr2 <- subset(df_DsMRSI, Group == gr_US_MMG )

df_DescrTumorGr2 <- subset(df_DescrTumor, Group == gr_US_MMG)
df_morphologyStructureTumorGr2 <- subset(df_morphologyStructureTumor, Group == gr_US_MMG)
df_ReceptorsGr2 <- subset(df_Receptors, Group == gr_US_MMG)
df_isTumorGr2 <- subset(df_isTumor, Group == gr_US_MMG)


## Gr3 --------------------------------------------------------------
#Group == gr_US_ABUS
df_MMGDescrGr3 <- subset(df_MMGDescr, Group == gr_US_ABUS)
df_MMGnodleGr3 <- subset(df_MMGnodle, Group == gr_US_ABUS)
df_MMGnodleContourGr3 <- subset(df_MMGnodleContour, Group == gr_US_ABUS)
df_MMGnodleSizeGr3 <- subset(df_MMGnodleSize, Group == gr_US_ABUS)
df_MMGcalcificationsGr3 <- subset(df_MMGcalcifications, Group == gr_US_ABUS)
df_conclusionMMGGr3 <- subset(df_conclusionMMG, Group == gr_US_ABUS)
df_MMGisTumorGr3 <- subset(df_MMGisTumor, Group == gr_US_ABUS)

dfUSDiscrGr3 <- subset(df_USDiscr, Group == gr_US_ABUS)
dfUSnodleContourGr3  <- subset(df_USnodleContour, Group == gr_US_ABUS)
dfUSbackgroundGr3  <- subset(df_USbackground, Group == gr_US_ABUS)
dfUSformationGr3  <- subset(df_USformation, Group == gr_US_ABUS)
dfUSnodleSizeGr3  <- subset(df_USnodleSize, Group == gr_US_ABUS)
dfUSstructureGr3  <- subset(df_USstructure, Group == gr_US_ABUS)
dfUSformationBloodFlowGr3  <- subset(df_USformationBloodFlow, Group == gr_US_ABUS)
dfUSelastographyGr3 <- subset(df_USelastography, Group == gr_US_ABUS)
dfUSdiagnosisGr3 <- subset(df_USdiagnosis, Group == gr_US_ABUS)
dfUScalcinatesMicroPureGr3 <- subset(df_UScalcinatesMicroPure, Group == gr_US_ABUS)
df_USisTumorGr3 <- subset(df_USisTumor, Group == gr_US_ABUS)


df_ABUSdiscrGr3 <- subset(df_ABUSdiscr, Group == gr_US_ABUS)
df_ABUSnodleSizeGr3 <- subset(df_ABUSnodleSize, Group == gr_US_ABUS)
df_ABUSnodleContoursGr3 <- subset(df_ABUSnodleContours, Group == gr_US_ABUS)
df_ABUSstructureGr3 <- subset(df_ABUSstructure, Group == gr_US_ABUS)
df_ABUSdiagnosisGr3 <- subset(df_ABUSdiagnosis, Group == gr_US_ABUS)
df_ABUSisTumorGr3 <- subset(df_ABUSisTumor, Group == gr_US_ABUS)

df_DsMRSIGr3 <- subset(df_DsMRSI, Group == gr_US_ABUS )

df_DescrTumorGr3 <- subset(df_DescrTumor, Group == gr_US_ABUS)
df_morphologyStructureTumorGr3 <- subset(df_morphologyStructureTumor, Group == gr_US_ABUS)
df_isTumor
df_ReceptorsGr3 <- subset(df_Receptors, Group == gr_US_ABUS)
df_isTumorGr3 <- subset(df_isTumor, Group == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
#Group == gr_US_MMG_ABUS

dfMMGDescrGr4 <- subset(df_MMGDescr, Group == gr_US_MMG_ABUS)
dfMMGnodleGr4 <- subset(df_MMGnodle, Group == gr_US_MMG_ABUS)
dfMMGnodleContourGr4 <- subset(df_MMGnodleContour, Group == gr_US_MMG_ABUS)
dfMMGnodleSizeGr4 <- subset(df_MMGnodleSize, Group == gr_US_MMG_ABUS)
dfMMGcalcificationsGr4 <- subset(df_MMGcalcifications, Group == gr_US_MMG_ABUS)
dfconclusionMMGGr4  <- subset(df_conclusionMMG, Group == gr_US_MMG_ABUS)
df_MMGisTumorGr4 <- subset(df_MMGisTumor, Group == gr_US_MMG_ABUS)

dfUSDiscrGr4 <- subset(df_USDiscr, Group == gr_US_MMG_ABUS)
dfUSnodleContourGr4  <- subset(df_USnodleContour, Group == gr_US_MMG_ABUS)
dfUSbackgroundGr4  <- subset(df_USbackground, Group == gr_US_MMG_ABUS)
dfUSformationGr4  <- subset(df_USformation, Group == gr_US_MMG_ABUS)
dfUSnodleSizeGr4  <- subset(df_USnodleSize, Group == gr_US_MMG_ABUS)
dfUSstructureGr4  <- subset(df_USstructure, Group == gr_US_MMG_ABUS)
dfUSformationBloodFlowGr4  <- subset(df_USformationBloodFlow, Group == gr_US_MMG_ABUS)
dfUSelastographyGr4 <- subset(df_USelastography, Group == gr_US_MMG_ABUS)
dfUSdiagnosisGr4 <- subset(df_USdiagnosis, Group == gr_US_MMG_ABUS)
dfUScalcinatesMicroPureGr4 <- subset(df_UScalcinatesMicroPure, Group == gr_US_MMG_ABUS)
df_USisTumorGr4 <- subset(df_USisTumor, Group == gr_US_MMG_ABUS)


dfABUSdiscrGr4 <- subset(df_ABUSdiscr, Group == gr_US_MMG_ABUS)
dfABUSnodleSizeGr4 <- subset(df_ABUSnodleSize, Group == gr_US_MMG_ABUS)
dfABUSnodleContoursGr4 <- subset(df_ABUSnodleContours, Group == gr_US_MMG_ABUS)
dfABUSstructureGr4 <- subset(df_ABUSstructure, Group == gr_US_MMG_ABUS)
dfABUSdiagnosisGr4 <- subset(df_ABUSdiagnosis, Group == gr_US_MMG_ABUS)
df_ABUSisTumorGr4 <- subset(df_ABUSisTumor, Group == gr_US_MMG_ABUS)

dfDsMRSIGr4 <- subset(df_DsMRSI, Group == gr_US_MMG_ABUS )

dfDescrTumorGr4 <- subset(df_DescrTumor, Group == gr_US_MMG_ABUS)
dfmorphologyStructureTumorGr4 <- subset(df_morphologyStructureTumor, Group == gr_US_MMG_ABUS)
dfReceptorsGr4 <- subset(df_Receptors, Group == gr_US_MMG_ABUS)
df_isTumorGr4 <- subset(df_isTumor, Group == gr_US_MMG_ABUS)



# WithOUT -----------------------------------------------------------------
# df_MMGisTumorJunYN <- subset(df_MMGisTumorJun, isTumor != "не проводилось")
# df_MMGisTumorJunYN$isTumor <- 	factor(df_MMGisTumorJunYN$isTumor,
#                                       levels=c("нет","да"))
# df_MMGisTumorSinYN <- subset(df_MMGisTumorSin, isTumor != "не проводилось")
# df_MMGisTumorSinYN$isTumor <- 	factor(df_MMGisTumorSinYN$isTumor,
#                                       levels=c("нет","да"))
# df_MMGisTumorGr1YN <- subset(df_MMGisTumorGr1, isTumor != "не проводилось")
# df_MMGisTumorGr1YN$isTumor <- 	factor(df_MMGisTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# df_MMGisTumorGr2YN <- subset(df_MMGisTumorGr2, isTumor != "не проводилось")
# df_MMGisTumorGr2YN$isTumor <- 	factor(df_MMGisTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# df_MMGisTumorGr3YN <- subset(df_MMGisTumorGr3, isTumor != "не проводилось")
# df_MMGisTumorGr3YN$isTumor <- 	factor(df_MMGisTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# df_MMGisTumorGr4YN <- subset(df_MMGisTumorGr4, isTumor != "не проводилось")
# df_MMGisTumorGr4YN$isTumor <- 	factor(df_MMGisTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))
# 
# df_USisTumorJunYN <- subset(df_USisTumorJun, USisTumor != "не проводилось")
# df_USisTumorJunYN$USisTumor <- 	factor(df_USisTumorJunYN$USisTumor,
#                                       levels=c("нет","да"))
# df_USisTumorSinYN <- subset(df_USisTumorSin, USisTumor != "не проводилось")
# df_USisTumorSinYN$USisTumor <- 	factor(df_USisTumorSinYN$USisTumor,
#                                       levels=c("нет","да"))
# df_USisTumorGr1YN <- subset(df_USisTumorGr1, USisTumor != "не проводилось")
# df_USisTumorGr1YN$USisTumor <- 	factor(df_USisTumorGr1YN$USisTumor,
#                                       levels=c("нет","да"))
# df_USisTumorGr2YN <- subset(df_USisTumorGr2, USisTumor != "не проводилось")
# df_USisTumorGr2YN$USisTumor <- 	factor(df_USisTumorGr2YN$USisTumor,
#                                       levels=c("нет","да"))
# df_USisTumorGr3YN <- subset(df_USisTumorGr3, USisTumor != "не проводилось")
# df_USisTumorGr3YN$USisTumor <- 	factor(df_USisTumorGr3YN$USisTumor,
#                                       levels=c("нет","да"))
# df_USisTumorGr4YN <- subset(df_USisTumorGr4, USisTumor != "не проводилось")
# df_USisTumorGr4YN$USisTumor <- 	factor(df_USisTumorGr4YN$USisTumor,
#                                       levels=c("нет","да"))
# 
# 
# df_ABUSisTumorGrJunYN <- subset(df_ABUSisTumorJun, isTumor != "не проводилось")
# df_ABUSisTumorGrJunYN$isTumor <- 	factor(df_ABUSisTumorGrJunYN$isTumor,
#                                       levels=c("нет","да"))
# df_ABUSisTumorGrSinYN <- subset(df_ABUSisTumorSin, isTumor != "не проводилось")
# df_ABUSisTumorGrSinYN$isTumor <- 	factor(df_ABUSisTumorGrSinYN$isTumor,
#                                       levels=c("нет","да"))
# df_ABUSisTumorGr1YN <- subset(df_ABUSisTumorGr1, isTumor != "не проводилось")
# df_ABUSisTumorGr1YN$isTumor <- 	factor(df_ABUSisTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# df_ABUSisTumorGr2YN <- subset(df_ABUSisTumorGr2, isTumor != "не проводилось")
# df_ABUSisTumorGr2YN$isTumor <- 	factor(df_ABUSisTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# df_ABUSisTumorGr3YN <- subset(df_ABUSisTumorGr3, isTumor != "не проводилось")
# df_ABUSisTumorGr3YN$isTumor <- 	factor(df_ABUSisTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# df_ABUSisTumorGr4YN <- subset(df_ABUSisTumorGr4, isTumor != "не проводилось")
# df_ABUSisTumorGr4YN$isTumor <- 	factor(df_ABUSisTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))
# 
# df_isTumorJunYN <- subset(df_isTumorJun, isTumor != "не проводилось")
# df_isTumorJunYN$isTumor <- 	factor(df_isTumorJunYN$isTumor,
#                                       levels=c("нет","да"))
# df_isTumorSinYN <- subset(df_isTumorSin, isTumor != "не проводилось")
# df_isTumorSinYN$isTumor <- 	factor(df_isTumorSinYN$isTumor,
#                                       levels=c("нет","да"))
# df_isTumorGr1YN <- subset(df_isTumorGr1, isTumor != "не проводилось")
# df_isTumorGr1YN$isTumor <- 	factor(df_isTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# df_isTumorGr2YN <- subset(df_isTumorGr2, isTumor != "не проводилось")
# df_isTumorGr2YN$isTumor <- 	factor(df_isTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# df_isTumorGr3YN <- subset(df_isTumorGr3, isTumor != "не проводилось")
# df_isTumorGr3YN$isTumor <- 	factor(df_isTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# df_isTumorGr4YN <- subset(df_isTumorGr4, isTumor != "не проводилось")
# df_isTumorGr4YN$isTumor <- 	factor(df_isTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))


