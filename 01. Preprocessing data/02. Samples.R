#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)



df_Total<- read.xlsx(xlsxFile = WayToData_Total,
                        sheet = Sheet_Total)

#####_01_DescrPart####
df_01_DescrPart_Personal<- read.xlsx(xlsxFile = WayToData_01_DescrPart_Personal,
                          sheet = Sheet_01_DescrPart_Personal)
df_01_DescrPart_Diagnosis_primary<- read.xlsx(xlsxFile = WayToData_01_DescrPart_Diagnosis_primary,
                                     sheet = Sheet_01_DescrPart_Diagnosis_primary)
df_01_DescrPart_Сomplaints<- read.xlsx(xlsxFile = WayToData_01_DescrPart_Сomplaints,
                                     sheet = Sheet_01_DescrPart_Сomplaints)

df_01_DescrPart_Discr<- read.xlsx(xlsxFile = WayToData_01_DescrPart_Discr,
                                              sheet = Sheet_01_DescrPart_Discr)
df_01_DescrPart_Quadrant<- read.xlsx(xlsxFile = WayToData_01_DescrPart_Quadrant,
                                       sheet = Sheet_01_DescrPart_Quadrant)



gr1_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US)
gr2_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US_MMG)
gr3_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US_ABUS)
gr4_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US_MMG_ABUS)
grJun_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US | Group ==gr_US_ABUS)
grSin_01_DescrPart_Personal<- subset(df_01_DescrPart_Personal, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)


gr1_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US)
gr2_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US_MMG)
gr3_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US_ABUS)
gr4_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US_MMG_ABUS)
grJun_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US | Group ==gr_US_ABUS)
grSin_01_DescrPart_Diagnosis_primary<- subset(df_01_DescrPart_Diagnosis_primary, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

gr1_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US)
gr2_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US_MMG)
gr3_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US_ABUS)
gr4_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US_MMG_ABUS)
grJun_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US | Group ==gr_US_ABUS)
grSin_01_DescrPart_Сomplaints<- subset(df_01_DescrPart_Сomplaints, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)

gr1_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US)
gr2_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US_MMG)
gr3_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US_ABUS)
gr4_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US_MMG_ABUS)
grJun_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US | Group ==gr_US_ABUS)
grSin_01_DescrPart_Discr<- subset(df_01_DescrPart_Discr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)


gr1_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US)
gr2_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US_MMG)
gr3_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US_ABUS)
gr4_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US_MMG_ABUS)
grJun_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US | Group ==gr_US_ABUS)
grSin_01_DescrPart_Quadrant<- subset(df_01_DescrPart_Quadrant, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)