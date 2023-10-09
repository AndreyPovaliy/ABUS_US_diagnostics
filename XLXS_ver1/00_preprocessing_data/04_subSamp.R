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
setwd("~/Documents/ABUS_US_diagnostics")
write.xlsx(dfXlsx, "ABUS_US_MG_WXLS_lab.xlsx", sheetName = "Data")

dfXlsx <- read.xlsx(xlsxFile = XlxsWayLab,
                    sheet = 'Data')




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


