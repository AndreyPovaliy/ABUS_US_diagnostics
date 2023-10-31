# Mathirials -----------------------------------------------------------------
## Jun --------------------------------------------------------------
dfXlsxJun <- subset(dfXlsx, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxSnr <- subset(dfXlsx, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxGr1 <- subset(dfXlsx, group_separation == gr_US)

## Gr2 --------------------------------------------------------------
dfXlsxGr2 <- subset(dfXlsx, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
dfXlsxGr3 <- subset(dfXlsx, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxGr4 <- subset(dfXlsx, group_separation == gr_US_MMG_ABUS)


#####Write Xlsx####
setwd("~/Documents/Science/ABUS_US_diagnostics")
write.xlsx(dfXlsx, "ABUS_US_MG_WXLS_lab.xlsx", sheetName = "Data")

dfXlsx <- read.xlsx(xlsxFile = XlxsWayLab,
                    sheet = 'Data')

# Mmg/Abus/Mrsi/Hist_subset_block --------------------------------------------------------------
dfXlsxSubsetMmg <- subset(dfXlsx,dfXlsx$is_mmg == "Да")
dfXlsxSubsetAbus <- subset(dfXlsx,dfXlsx$is_abus == "Да")

dfXlsxSubsetMrsi <- subset(dfXlsx,dfXlsx$is_Mrsi == "Да")
dfXlsxSubsetMorphology <- subset(dfXlsx,dfXlsx$is_Morphology == "Да")
dfXlsxSubsetCytological <- subset(dfXlsx,dfXlsx$is_Cytological == "Да")
dfXlsxSubsetMalignancy <- subset(dfXlsx,dfXlsx$is_GradeMalignancy== "Да")
dfXlsxSubsetReceptors <- subset(dfXlsx,dfXlsx$is_Receptors == "Да")


## Jun --------------------------------------------------------------

dfXlsxSubsetMmgJun <- subset(dfXlsxSubsetMmg, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetAbusJun <- subset(dfXlsxSubsetAbus, group_separation == gr_US | group_separation ==gr_US_ABUS)

dfXlsxSubsetMrsiJun <- subset(dfXlsxSubsetMrsi, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetMorphologyJun <- subset(dfXlsxSubsetMorphology, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetCytologicalJun <- subset(dfXlsxSubsetCytological, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetMalignancyJun <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetReceptorsJun <- subset(dfXlsxSubsetReceptors, group_separation == gr_US | group_separation ==gr_US_ABUS)


## Sin --------------------------------------------------------------

dfXlsxSubsetMmgSnr <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetAbusSnr <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

dfXlsxSubsetMrsiSnr <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetMorphologySnr <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetCytologicalSnr <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetMalignancySnr <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetReceptorsSnr <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)


## Gr1 --------------------------------------------------------------
dfXlsxSubsetMmgGr1 <- subset(dfXlsxSubsetMmg, group_separation == gr_US)
dfXlsxSubsetAbusGr1 <- subset(dfXlsxSubsetAbus, group_separation == gr_US)

dfXlsxSubsetMrsiGr1 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US)
dfXlsxSubsetMorphologyGr1 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US)
dfXlsxSubsetCytologicalGr1 <- subset(dfXlsxSubsetCytological, group_separation == gr_US)
dfXlsxSubsetMalignancyGr1 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US)
dfXlsxSubsetReceptorsGr1 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US)

## Gr2 --------------------------------------------------------------

dfXlsxSubsetMmgGr2 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG)
dfXlsxSubsetAbusGr2 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG)

dfXlsxSubsetMrsiGr2 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG)
dfXlsxSubsetMorphologyGr2 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG)
dfXlsxSubsetCytologicalGr2 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG)
dfXlsxSubsetMalignancyGr2 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG)
dfXlsxSubsetReceptorsGr2 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG)

## Gr3 --------------------------------------------------------------

dfXlsxSubsetMmgGr3 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_ABUS)
dfXlsxSubsetAbusGr3 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_ABUS)

dfXlsxSubsetMrsiGr3 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_ABUS)
dfXlsxSubsetMorphologyGr3 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_ABUS)
dfXlsxSubsetCytologicalGr3 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_ABUS)
dfXlsxSubsetMalignancyGr3 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_ABUS)
dfXlsxSubsetReceptorsGr3 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_ABUS)


## Gr4 --------------------------------------------------------------

dfXlsxSubsetMmgGr4 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetAbusGr4 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG_ABUS)

dfXlsxSubsetMrsiGr4 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetMorphologyGr4 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetCytologicalGr4 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetMalignancyGr4 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetReceptorsGr4 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG_ABUS)




# Nodle_block --------------------------------------------------------------
dfXlsxNodleUs <- subset(dfXlsx,dfXlsx$us_is_nodle == "Да")
dfXlsxNodleMmg <- subset(dfXlsx,dfXlsx$mmg_is_nodle == "Да")
dfXlsxNodleAbus <- subset(dfXlsx,dfXlsx$abus_is_nodle == "Да")

## Jun --------------------------------------------------------------
dfXlsxNodleUsJun <- subset(dfXlsxNodleUs, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxNodleMmgJun <- subset(dfXlsxNodleMmg, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxNodleAbusJun <- subset(dfXlsxNodleAbus, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxNodleUsSnr <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxNodleMmgSnr <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxNodleAbusSnr <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxNodleUsGr1 <- subset(dfXlsxNodleUs, group_separation == gr_US)
dfXlsxNodleMmgGr1 <- subset(dfXlsxNodleMmg, group_separation == gr_US)
dfXlsxNodleAbusGr1 <- subset(dfXlsxNodleAbus, group_separation == gr_US)
## Gr2 --------------------------------------------------------------
dfXlsxNodleUsGr2 <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG)
dfXlsxNodleMmgGr2 <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG)
dfXlsxNodleAbusGr2 <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG)



## Gr3 --------------------------------------------------------------
dfXlsxNodleUsGr3 <- subset(dfXlsxNodleUs, group_separation == gr_US_ABUS)
dfXlsxNodleMmgGr3 <- subset(dfXlsxNodleMmg, group_separation == gr_US_ABUS)
dfXlsxNodleAbusGr3 <- subset(dfXlsxNodleAbus, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxNodleUsGr4 <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG_ABUS)
dfXlsxNodleMmgGr4 <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG_ABUS)
dfXlsxNodleAbusGr4 <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG_ABUS)


# Calc_block --------------------------------------------------------------


dfXlsxCalc <- subset(dfXlsx, dfXlsx$mmg_is_calc == "Да")

## Jun --------------------------------------------------------------
dfXlsxCalcJun <- subset(dfXlsxCalc, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxCalcSnr <- subset(dfXlsxCalc, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxCalcGr1 <- subset(dfXlsxCalc, group_separation == gr_US)

## Gr2 --------------------------------------------------------------
dfXlsxCalcGr2 <- subset(dfXlsxCalc, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
dfXlsxCalcGr3 <- subset(dfXlsxCalc, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxCalcGr4 <- subset(dfXlsxCalc, group_separation == gr_US_MMG_ABUS)



#####Add dataframe####
num_Jun <- length(dfXlsxGr3$us_calcinates_micro_pure)
type_exam_1 <- as.factor(rep(1,num_Jun))
type_exam_2 <- as.factor(rep(2,num_Jun))
type_exam <- c(type_exam_1, type_exam_2)
calcinates_micro_pure <- c(dfXlsxGr3$us_calcinates_micro_pure, dfXlsxGr3$abus_calcinates_micro_pure)
df_calcinates_micro_pureJun <- data.frame(cbind(type_exam,calcinates_micro_pure))
df_calcinates_micro_pureJun$type_exam	<- 	factor(df_calcinates_micro_pureJun$type_exam,
                                              levels=c(1,2),
                                              labels = c(
                                                "1"="УЗИ",
                                                "2"="ABUS"))
df_calcinates_micro_pureJun$calcinates_micro_pure <- 	factor(df_calcinates_micro_pureJun$calcinates_micro_pure,
                                           levels=c(1,2,3,4),
                                           labels = c(
                                             "1"="нет",
                                             "2"="определяются",
                                             "3"="макрокальцинаты",
                                             "4"="микрокальцинаты" 
                                             
                                           ))



num_Sin <- length(dfXlsxGr4$us_calcinates_micro_pure)
type_exam_1 <- as.factor(rep(1,num_Sin))
type_exam_2 <- as.factor(rep(2,num_Sin))
type_exam <- c(type_exam_1, type_exam_2)
calcinates_micro_pure <- c(dfXlsxGr4$us_calcinates_micro_pure, dfXlsxGr4$abus_calcinates_micro_pure)
df_calcinates_micro_pureSnr <- data.frame(cbind(type_exam,calcinates_micro_pure))
df_calcinates_micro_pureSnr$type_exam	<- 	factor(df_calcinates_micro_pureSnr$type_exam,
                                                 levels=c(1,2),
                                                 labels = c(
                                                   "1"="УЗИ",
                                                   "2"="ABUS"))
df_calcinates_micro_pureSnr$calcinates_micro_pure <- 	factor(df_calcinates_micro_pureSnr$calcinates_micro_pure,
                                                             levels=c(1,2,3,4),
                                                             labels = c(
                                                               "1"="нет",
                                                               "2"="определяются",
                                                               "3"="макрокальцинаты",
                                                               "4"="микрокальцинаты" 
                                                               
                                                             ))


