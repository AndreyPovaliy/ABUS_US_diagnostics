# Mathirials -----------------------------------------------------------------
## Jun --------------------------------------------------------------
dfPersonalJun <- subset(dfPersonal, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfDiagnosisJun<- subset(dfDiagnosis, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfPatientDescribeJun <- subset(dfPatientDescribe , group_separation == gr_US | group_separation ==gr_US_ABUS)
dfСomplaintsJun <- subset(dfСomplaints, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfQuadrantJun <- subset(dfQuadrant, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfPersonalSnr <- subset(dfPersonal, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfDiagnosisSnr<- subset(dfDiagnosis, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfPatientDescribeSnr <- subset(dfPatientDescribe, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfСomplaintsSnr <- subset(dfСomplaints, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfQuadrantSnr <- subset(dfQuadrant, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfPersonalGr1 <- subset(dfPersonal, group_separation == gr_US)
dfDiagnosisGr1<- subset(dfDiagnosis, group_separation == gr_US)
dfPatientDescribeGr1 <- subset(dfPatientDescribe, group_separation == gr_US)
dfСomplaintsGr1 <- subset(dfСomplaints, group_separation == gr_US)
dfQuadrantGr1 <- subset(dfQuadrant, group_separation == gr_US)
## Gr2 --------------------------------------------------------------
dfPersonalGr2 <- subset(dfPersonal, group_separation == gr_US_MMG)
dfDiagnosisGr2<- subset(dfDiagnosis, group_separation == gr_US_MMG)
dfPatientDescribeGr2 <- subset(dfPatientDescribe, group_separation == gr_US_MMG)
dfСomplaintsGr2 <- subset(dfСomplaints, group_separation == gr_US_MMG)
dfQuadrantGr2 <- subset(dfQuadrant, group_separation == gr_US_MMG)
## Gr3 --------------------------------------------------------------
dfPersonalGr3 <- subset(dfPersonal, group_separation == gr_US_ABUS)
dfDiagnosisGr3<- subset(dfDiagnosis, group_separation == gr_US_ABUS)
dfPatientDescribeGr3 <- subset(dfPatientDescribe, group_separation == gr_US_ABUS)
dfСomplaintsGr3 <- subset(dfСomplaints, group_separation == gr_US_ABUS)
dfQuadrantGr3 <- subset(dfQuadrant, group_separation == gr_US_ABUS)
## Gr4 --------------------------------------------------------------
dfPersonalGr4 <- subset(dfPersonal, group_separation == gr_US_MMG_ABUS)
dfDiagnosisGr4<- subset(dfDiagnosis, group_separation == gr_US_MMG_ABUS)
dfPatientDescribeGr4 <- subset(dfPatientDescribe, group_separation == gr_US_MMG_ABUS)
dfСomplaintsGr4 <- subset(dfСomplaints, group_separation == gr_US_MMG_ABUS)
dfQuadrantGr4 <- subset(dfQuadrant, group_separation == gr_US_MMG_ABUS)


# Results -----------------------------------------------------------------
## Jun --------------------------------------------------------------
#group_separation == gr_US | group_separation ==gr_US_ABUS
dfMmgDescribeJun <- subset(dfMmgDescribe, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgNodleJun <- subset(dfMmgNodle, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgNodleContourJun <- subset(dfMmgNodleContour, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgNodleSizeJun <- subset(dfMmgNodleSize, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgCalcificationsJun <- subset(dfMmgCalcifications, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgConclusionJun <- subset(dfMmgConclusion, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMmgIsTumorJun <- subset(dfMmgIsTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)


dfUsDescribeJun <- subset(dfUsDescribe, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsNodleContourJun  <- subset(dfUsNodleContour, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsBackgroundJun  <- subset(dfUsBackground, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsFormationJun  <- subset(dfUsFormation, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsNodleSizeJun  <- subset(dfUsNodleSize, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsStructureJun  <- subset(dfUsStructure, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsFormationBloodFlowJun  <- subset(dfUsFormationBloodFlow, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsElastographyJun <- subset(dfUsElastography, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsDiagnosisJun <- subset(dfUsDiagnosis, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsCalcinatesMicroPureJun <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfUsIsTumorJun <- subset(dfUsIsTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)

dfAbusDescribeJun <- subset(dfAbusDescribe, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfAbusNodleSizeJun <- subset(dfAbusNodleSize, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfAbusNodleContoursJun <- subset(dfAbusNodleContours, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfAbusStructureJun <- subset(dfAbusStructure, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfAbusDiagnosisJun <- subset(dfAbusDiagnosis, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfAbusIsTumorJun <- subset(dfAbusIsTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)

dfMrsiDescribeJun <- subset(dfMrsiDescribe, group_separation == gr_US | group_separation ==gr_US_ABUS )

dfDescrTumorJun <- subset(dfDescrTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfMorphologyStructureTumorJun <- subset(dfMorphologyStructureTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfReceptorsJun <- subset(dfReceptors, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfIsTumorJun<- subset(dfIsTumor, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
#group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS

dfMmgDescribeSin <- subset(dfMmgDescribe, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgNodleSin <- subset(dfMmgNodle, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgNodleContourSin <- subset(dfMmgNodleContour, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgNodleSizeSin <- subset(dfMmgNodleSize, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgCalcificationsSin <- subset(dfMmgCalcifications, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgConclusionSin  <- subset(dfMmgConclusion, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMmgIsTumorSin <- subset(dfMmgIsTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

dfUsDescribeSin <- subset(dfUsDescribe, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsNodleContourSin  <- subset(dfUsNodleContour, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsBackgroundSin  <- subset(dfUsBackground, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsFormationSin  <- subset(dfUsFormation, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsNodleSizeSin  <- subset(dfUsNodleSize, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsStructureSin  <- subset(dfUsStructure, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsFormationBloodFlowSin  <- subset(dfUsFormationBloodFlow, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsElastographySin <- subset(dfUsElastography, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsDiagnosisSin <- subset(dfUsDiagnosis, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsCalcinatesMicroPureSin <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfUsIsTumorSin <- subset(dfUsIsTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)


dfAbusDescribeSin <- subset(dfAbusDescribe, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfAbusNodleSizeSin <- subset(dfAbusNodleSize, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfAbusNodleContoursSin <- subset(dfAbusNodleContours, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfAbusStructureSin <- subset(dfAbusStructure, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfAbusDiagnosisSin <- subset(dfAbusDiagnosis, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfAbusIsTumorSin <- subset(dfAbusIsTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

dfMrsiDescribeSin <- subset(dfMrsiDescribe, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS )

dfDescrTumorSin <- subset(dfDescrTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfMorphologyStructureTumorSin <- subset(dfMorphologyStructureTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfReceptorsSin <- subset(dfReceptors, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfIsTumorSin  <- subset(dfIsTumor, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
#group_separation == gr_US
dfMmgDescribeGr1 <- subset(dfMmgDescribe, group_separation == gr_US)
dfMmgNodleGr1 <- subset(dfMmgNodle, group_separation == gr_US)
dfMmgNodleContourGr1 <- subset(dfMmgNodleContour, group_separation == gr_US)
dfMmgNodleSizeGr1 <- subset(dfMmgNodleSize, group_separation == gr_US)
dfMmgCalcificationsGr1 <- subset(dfMmgCalcifications, group_separation == gr_US)
dfMmgConclusionGr1 <- subset(dfMmgConclusion, group_separation == gr_US) 
dfMmgIsTumorGr1 <- subset(dfMmgIsTumor, group_separation == gr_US)


dfUsDescribeGr1 <- subset(dfUsDescribe, group_separation == gr_US)
dfUsNodleContourGr1  <- subset(dfUsNodleContour, group_separation == gr_US)
dfUsBackgroundGr1  <- subset(dfUsBackground, group_separation == gr_US)
dfUsFormationGr1  <- subset(dfUsFormation, group_separation == gr_US)
dfUsNodleSizeGr1  <- subset(dfUsNodleSize, group_separation == gr_US)
dfUsStructureGr1  <- subset(dfUsStructure, group_separation == gr_US)
dfUsFormationBloodFlowGr1  <- subset(dfUsFormationBloodFlow, group_separation == gr_US)
dfUsElastographyGr1 <- subset(dfUsElastography, group_separation == gr_US)
dfUsDiagnosisGr1 <- subset(dfUsDiagnosis, group_separation == gr_US)
dfUsCalcinatesMicroPureGr1 <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US)
dfUsIsTumorGr1 <- subset(dfUsIsTumor, group_separation == gr_US)

dfAbusDescribeGr1 <- subset(dfAbusDescribe, group_separation == gr_US)
dfAbusNodleSizeGr1 <- subset(dfAbusNodleSize, group_separation == gr_US)
dfAbusNodleContoursGr1 <- subset(dfAbusNodleContours, group_separation == gr_US)
dfAbusStructureGr1 <- subset(dfAbusStructure, group_separation == gr_US)
dfAbusDiagnosisGr1 <- subset(dfAbusDiagnosis, group_separation == gr_US)
dfAbusIsTumorGr1 <- subset(dfAbusIsTumor, group_separation == gr_US)

dfMrsiDescribeGr1 <- subset(dfMrsiDescribe, group_separation == gr_US )

dfDescrTumorGr1 <- subset(dfDescrTumor, group_separation == gr_US)
dfMorphologyStructureTumorGr1 <- subset(dfMorphologyStructureTumor, group_separation == gr_US)
dfReceptorsGr1 <- subset(dfReceptors, group_separation == gr_US)
dfIsTumorGr1 <- subset(dfIsTumor, group_separation == gr_US)
## Gr2 --------------------------------------------------------------
#group_separation == gr_US_MMG
dfMmgDescribeGr2  <- subset(dfMmgDescribe, group_separation == gr_US_MMG)
dfMmgNodleGr2  <- subset(dfMmgNodle, group_separation == gr_US_MMG)
dfMmgNodleContourGr2  <- subset(dfMmgNodleContour, group_separation == gr_US_MMG)
dfMmgNodleSizeGr2  <- subset(dfMmgNodleSize, group_separation == gr_US_MMG)
dfMmgCalcificationsGr2  <- subset(dfMmgCalcifications, group_separation == gr_US_MMG)
dfMmgConclusionGr2   <- subset(dfMmgConclusion, group_separation == gr_US_MMG)
dfMmgIsTumorGr2  <- subset(dfMmgIsTumor, group_separation == gr_US_MMG)


dfUsDescribeGr2 <- subset(dfUsDescribe, group_separation == gr_US_MMG)
dfUsNodleContourGr2  <- subset(dfUsNodleContour, group_separation == gr_US_MMG)
dfUsBackgroundGr2  <- subset(dfUsBackground, group_separation == gr_US_MMG)
dfUsFormationGr2  <- subset(dfUsFormation, group_separation == gr_US_MMG)
dfUsNodleSizeGr2  <- subset(dfUsNodleSize, group_separation == gr_US_MMG)
dfUsStructureGr2  <- subset(dfUsStructure, group_separation == gr_US_MMG)
dfUsFormationBloodFlowGr2  <- subset(dfUsFormationBloodFlow, group_separation == gr_US_MMG)
dfUsElastographyGr2 <- subset(dfUsElastography, group_separation == gr_US_MMG)
dfUsDiagnosisGr2 <- subset(dfUsDiagnosis, group_separation == gr_US_MMG)
dfUsCalcinatesMicroPureGr2 <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US_MMG)
dfUsIsTumorGr2 <- subset(dfUsIsTumor, group_separation == gr_US_MMG)

dfAbusDescribeGr2 <- subset(dfAbusDescribe, group_separation == gr_US_MMG)
dfAbusNodleSizeGr2 <- subset(dfAbusNodleSize, group_separation == gr_US_MMG)
dfAbusNodleContoursGr2 <- subset(dfAbusNodleContours, group_separation == gr_US_MMG)
dfAbusStructureGr2 <- subset(dfAbusStructure, group_separation == gr_US_MMG)
dfAbusDiagnosisGr2 <- subset(dfAbusDiagnosis, group_separation == gr_US_MMG)
dfAbusIsTumorGr2 <- subset(dfAbusIsTumor, group_separation == gr_US_MMG)

dfMrsiDescribeGr2 <- subset(dfMrsiDescribe, group_separation == gr_US_MMG )

dfDescrTumorGr2 <- subset(dfDescrTumor, group_separation == gr_US_MMG)
dfMorphologyStructureTumorGr2 <- subset(dfMorphologyStructureTumor, group_separation == gr_US_MMG)
dfReceptorsGr2 <- subset(dfReceptors, group_separation == gr_US_MMG)
dfIsTumorGr2 <- subset(dfIsTumor, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
#group_separation == gr_US_ABUS
dfMmgDescribeGr3 <- subset(dfMmgDescribe, group_separation == gr_US_ABUS)
dfMmgNodleGr3 <- subset(dfMmgNodle, group_separation == gr_US_ABUS)
dfMmgNodleContourGr3 <- subset(dfMmgNodleContour, group_separation == gr_US_ABUS)
dfMmgNodleSizeGr3 <- subset(dfMmgNodleSize, group_separation == gr_US_ABUS)
dfMmgCalcificationsGr3 <- subset(dfMmgCalcifications, group_separation == gr_US_ABUS)
dfMmgConclusionGr3 <- subset(dfMmgConclusion, group_separation == gr_US_ABUS)
dfMmgIsTumorGr3 <- subset(dfMmgIsTumor, group_separation == gr_US_ABUS)

dfUsDescribeGr3 <- subset(dfUsDescribe, group_separation == gr_US_ABUS)
dfUsNodleContourGr3  <- subset(dfUsNodleContour, group_separation == gr_US_ABUS)
dfUsBackgroundGr3  <- subset(dfUsBackground, group_separation == gr_US_ABUS)
dfUsFormationGr3  <- subset(dfUsFormation, group_separation == gr_US_ABUS)
dfUsNodleSizeGr3  <- subset(dfUsNodleSize, group_separation == gr_US_ABUS)
dfUsStructureGr3  <- subset(dfUsStructure, group_separation == gr_US_ABUS)
dfUsFormationBloodFlowGr3  <- subset(dfUsFormationBloodFlow, group_separation == gr_US_ABUS)
dfUsElastographyGr3 <- subset(dfUsElastography, group_separation == gr_US_ABUS)
dfUsDiagnosisGr3 <- subset(dfUsDiagnosis, group_separation == gr_US_ABUS)
dfUsCalcinatesMicroPureGr3 <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US_ABUS)
dfUsIsTumorGr3 <- subset(dfUsIsTumor, group_separation == gr_US_ABUS)


dfAbusDescribeGr3 <- subset(dfAbusDescribe, group_separation == gr_US_ABUS)
dfAbusNodleSizeGr3 <- subset(dfAbusNodleSize, group_separation == gr_US_ABUS)
dfAbusNodleContoursGr3 <- subset(dfAbusNodleContours, group_separation == gr_US_ABUS)
dfAbusStructureGr3 <- subset(dfAbusStructure, group_separation == gr_US_ABUS)
dfAbusDiagnosisGr3 <- subset(dfAbusDiagnosis, group_separation == gr_US_ABUS)
dfAbusIsTumorGr3 <- subset(dfAbusIsTumor, group_separation == gr_US_ABUS)

dfMrsiDescribeGr3 <- subset(dfMrsiDescribe, group_separation == gr_US_ABUS )

dfDescrTumorGr3 <- subset(dfDescrTumor, group_separation == gr_US_ABUS)
dfMorphologyStructureTumorGr3 <- subset(dfMorphologyStructureTumor, group_separation == gr_US_ABUS)
dfReceptorsGr3 <- subset(dfReceptors, group_separation == gr_US_ABUS)
dfIsTumorGr3 <- subset(dfIsTumor, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
#group_separation == gr_US_MMG_ABUS

dfMMGDescrGr4 <- subset(dfMmgDescribe, group_separation == gr_US_MMG_ABUS)
dfMMGnodleGr4 <- subset(dfMmgNodle, group_separation == gr_US_MMG_ABUS)
dfMMGnodleContourGr4 <- subset(dfMmgNodleContour, group_separation == gr_US_MMG_ABUS)
dfMMGnodleSizeGr4 <- subset(dfMmgNodleSize, group_separation == gr_US_MMG_ABUS)
dfMMGcalcificationsGr4 <- subset(dfMmgCalcifications, group_separation == gr_US_MMG_ABUS)
dfconclusionMMGGr4  <- subset(dfMmgConclusion, group_separation == gr_US_MMG_ABUS)
dfMmgIsTumorGr4 <- subset(dfMmgIsTumor, group_separation == gr_US_MMG_ABUS)

dfUsDescribeGr4 <- subset(dfUsDescribe, group_separation == gr_US_MMG_ABUS)
dfUsNodleContourGr4  <- subset(dfUsNodleContour, group_separation == gr_US_MMG_ABUS)
dfUsBackgroundGr4  <- subset(dfUsBackground, group_separation == gr_US_MMG_ABUS)
dfUsFormationGr4  <- subset(dfUsFormation, group_separation == gr_US_MMG_ABUS)
dfUsNodleSizeGr4  <- subset(dfUsNodleSize, group_separation == gr_US_MMG_ABUS)
dfUsStructureGr4  <- subset(dfUsStructure, group_separation == gr_US_MMG_ABUS)
dfUsFormationBloodFlowGr4  <- subset(dfUsFormationBloodFlow, group_separation == gr_US_MMG_ABUS)
dfUsElastographyGr4 <- subset(dfUsElastography, group_separation == gr_US_MMG_ABUS)
dfUsDiagnosisGr4 <- subset(dfUsDiagnosis, group_separation == gr_US_MMG_ABUS)
dfUsCalcinatesMicroPureGr4 <- subset(dfUsCalcinatesMicroPure, group_separation == gr_US_MMG_ABUS)
dfUsIsTumorGr4 <- subset(dfUsIsTumor, group_separation == gr_US_MMG_ABUS)


dfABUSdiscrGr4 <- subset(dfAbusDescribe, group_separation == gr_US_MMG_ABUS)
dfABUSnodleSizeGr4 <- subset(dfAbusNodleSize, group_separation == gr_US_MMG_ABUS)
dfABUSnodleContoursGr4 <- subset(dfAbusNodleContours, group_separation == gr_US_MMG_ABUS)
dfABUSstructureGr4 <- subset(dfAbusStructure, group_separation == gr_US_MMG_ABUS)
dfABUSdiagnosisGr4 <- subset(dfAbusDiagnosis, group_separation == gr_US_MMG_ABUS)
dfAbusIsTumorGr4 <- subset(dfAbusIsTumor, group_separation == gr_US_MMG_ABUS)

dfDsMRSIGr4 <- subset(dfMrsiDescribe, group_separation == gr_US_MMG_ABUS )

dfDescrTumorGr4 <- subset(dfDescrTumor, group_separation == gr_US_MMG_ABUS)
dfmorphologyStructureTumorGr4 <- subset(dfMorphologyStructureTumor, group_separation == gr_US_MMG_ABUS)
dfReceptorsGr4 <- subset(dfReceptors, group_separation == gr_US_MMG_ABUS)
dfIsTumorGr4 <- subset(dfIsTumor, group_separation == gr_US_MMG_ABUS)



# WithOUT -----------------------------------------------------------------
# dfMmgIsTumorJunYN <- subset(dfMmgIsTumorJun, isTumor != "не проводилось")
# dfMmgIsTumorJunYN$isTumor <- 	factor(dfMmgIsTumorJunYN$isTumor,
#                                       levels=c("нет","да"))
# dfMmgIsTumorSinYN <- subset(dfMmgIsTumorSin, isTumor != "не проводилось")
# dfMmgIsTumorSinYN$isTumor <- 	factor(dfMmgIsTumorSinYN$isTumor,
#                                       levels=c("нет","да"))
# dfMmgIsTumorGr1YN <- subset(dfMmgIsTumorGr1, isTumor != "не проводилось")
# dfMmgIsTumorGr1YN$isTumor <- 	factor(dfMmgIsTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# dfMmgIsTumorGr2YN <- subset(dfMmgIsTumorGr2, isTumor != "не проводилось")
# dfMmgIsTumorGr2YN$isTumor <- 	factor(dfMmgIsTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# dfMmgIsTumorGr3YN <- subset(dfMmgIsTumorGr3, isTumor != "не проводилось")
# dfMmgIsTumorGr3YN$isTumor <- 	factor(dfMmgIsTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# dfMmgIsTumorGr4YN <- subset(dfMmgIsTumorGr4, isTumor != "не проводилось")
# dfMmgIsTumorGr4YN$isTumor <- 	factor(dfMmgIsTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))
# 
# dfUsIsTumorJunYN <- subset(dfUsIsTumorJun, USisTumor != "не проводилось")
# dfUsIsTumorJunYN$USisTumor <- 	factor(dfUsIsTumorJunYN$USisTumor,
#                                       levels=c("нет","да"))
# dfUsIsTumorSinYN <- subset(dfUsIsTumorSin, USisTumor != "не проводилось")
# dfUsIsTumorSinYN$USisTumor <- 	factor(dfUsIsTumorSinYN$USisTumor,
#                                       levels=c("нет","да"))
# dfUsIsTumorGr1YN <- subset(dfUsIsTumorGr1, USisTumor != "не проводилось")
# dfUsIsTumorGr1YN$USisTumor <- 	factor(dfUsIsTumorGr1YN$USisTumor,
#                                       levels=c("нет","да"))
# dfUsIsTumorGr2YN <- subset(dfUsIsTumorGr2, USisTumor != "не проводилось")
# dfUsIsTumorGr2YN$USisTumor <- 	factor(dfUsIsTumorGr2YN$USisTumor,
#                                       levels=c("нет","да"))
# dfUsIsTumorGr3YN <- subset(dfUsIsTumorGr3, USisTumor != "не проводилось")
# dfUsIsTumorGr3YN$USisTumor <- 	factor(dfUsIsTumorGr3YN$USisTumor,
#                                       levels=c("нет","да"))
# dfUsIsTumorGr4YN <- subset(dfUsIsTumorGr4, USisTumor != "не проводилось")
# dfUsIsTumorGr4YN$USisTumor <- 	factor(dfUsIsTumorGr4YN$USisTumor,
#                                       levels=c("нет","да"))
# 
# 
# dfAbusIsTumorGrJunYN <- subset(dfAbusIsTumorJun, isTumor != "не проводилось")
# dfAbusIsTumorGrJunYN$isTumor <- 	factor(dfAbusIsTumorGrJunYN$isTumor,
#                                       levels=c("нет","да"))
# dfAbusIsTumorGrSinYN <- subset(dfAbusIsTumorSin, isTumor != "не проводилось")
# dfAbusIsTumorGrSinYN$isTumor <- 	factor(dfAbusIsTumorGrSinYN$isTumor,
#                                       levels=c("нет","да"))
# dfAbusIsTumorGr1YN <- subset(dfAbusIsTumorGr1, isTumor != "не проводилось")
# dfAbusIsTumorGr1YN$isTumor <- 	factor(dfAbusIsTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# dfAbusIsTumorGr2YN <- subset(dfAbusIsTumorGr2, isTumor != "не проводилось")
# dfAbusIsTumorGr2YN$isTumor <- 	factor(dfAbusIsTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# dfAbusIsTumorGr3YN <- subset(dfAbusIsTumorGr3, isTumor != "не проводилось")
# dfAbusIsTumorGr3YN$isTumor <- 	factor(dfAbusIsTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# dfAbusIsTumorGr4YN <- subset(dfAbusIsTumorGr4, isTumor != "не проводилось")
# dfAbusIsTumorGr4YN$isTumor <- 	factor(dfAbusIsTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))
# 
# dfIsTumorJunYN <- subset(dfIsTumorJun, isTumor != "не проводилось")
# dfIsTumorJunYN$isTumor <- 	factor(dfIsTumorJunYN$isTumor,
#                                       levels=c("нет","да"))
# dfIsTumorSinYN <- subset(dfIsTumorSin, isTumor != "не проводилось")
# dfIsTumorSinYN$isTumor <- 	factor(dfIsTumorSinYN$isTumor,
#                                       levels=c("нет","да"))
# dfIsTumorGr1YN <- subset(dfIsTumorGr1, isTumor != "не проводилось")
# dfIsTumorGr1YN$isTumor <- 	factor(dfIsTumorGr1YN$isTumor,
#                                       levels=c("нет","да"))
# dfIsTumorGr2YN <- subset(dfIsTumorGr2, isTumor != "не проводилось")
# dfIsTumorGr2YN$isTumor <- 	factor(dfIsTumorGr2YN$isTumor,
#                                       levels=c("нет","да"))
# dfIsTumorGr3YN <- subset(dfIsTumorGr3, isTumor != "не проводилось")
# dfIsTumorGr3YN$isTumor <- 	factor(dfIsTumorGr3YN$isTumor,
#                                       levels=c("нет","да"))
# dfIsTumorGr4YN <- subset(dfIsTumorGr4, isTumor != "не проводилось")
# dfIsTumorGr4YN$isTumor <- 	factor(dfIsTumorGr4YN$isTumor,
#                                       levels=c("нет","да"))


