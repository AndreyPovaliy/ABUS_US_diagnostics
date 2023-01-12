#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)

setwd("~/ABUS_US_diagnostics")

#####SAMPLES####

df_Abus<- read.xlsx(xlsxFile = WayToData,
                        sheet = Sheet1)


gr1<- subset(df_Abus, Group == gr_US)
gr2<- subset(df_Abus, Group == gr_US_MMG)
gr3<- subset(df_Abus, Group == gr_US_ABUS)
gr4<- subset(df_Abus, Group == gr_US_MMG_ABUS)

gr_Jun<- subset(df_Abus, Group == gr_US | Group ==gr_US_ABUS)
gr_Sin<- subset(df_Abus, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

