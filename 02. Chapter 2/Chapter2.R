#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
source("~/ABUS_US_diagnostics/01. Preprocessing data/01. Samples.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/02. Links.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/03. Functions.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/04. Lables.R")



######General description#######
escribir ("2.1 Общее Описание пациенток, вошедших в исследование")
How_many(df_Abus$Name,"Всего в исследование вошло")
Describe_numeric (df_Abus$Age, "возраста ","пациентов по всей выборке составил "," лет")
Describe_numeric (df_Abus$height, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (df_Abus$weight, "веса ","пациентов по всей выборке составил "," кг")


Quantity_discr("Во всей выборке первичный диагноз ",df_Abus$Diagnosis_primary)
Quantity_discr("Во всей выборке поражение сторны ",df_Abus$Side)
Quantity_discr("Во всей выборке репродуктивный статус ",df_Abus$Satus_reproductive)
Quantity_discr("Во всей выборке жалобы ",df_Abus$Сomplaints)
Quantity_discr("Во всей выборке операции на груди до исследования ",df_Abus$Breast_Surgery_before)
Quantity_discr("Во всей выборке кожные симптомы ",df_Abus$skin_symptoms)
Quantity_discr("Во всей выборке втягивание соска ",df_Abus$nipple_retraction)
Quantity_discr("Во всей выборке выделения из соска ",df_Abus$nipple_release)
Quantity_discr("Во всей выборке поражение в квандранте ",df_Abus$quadrant)
Quantity_discr("Во всей выборке тип структуры по ACR ",df_Abus$type_structure_ACR)
Quantity_discr("Во всей выборке наследственность ",df_Abus$genetics)
Quantity_discr("Во всей выборке прием гормональных препаратов ",df_Abus$hormonal_medications)

pvalueQualitativeText(df_Abus$Diagnosis_primary,df_Abus$Group,"по первичному диагнозу")
pvalueQualitativeText(df_Abus$Side,df_Abus$Group,"по стороне поражения")
pvalueQualitativeText(df_Abus$Satus_reproductive,df_Abus$Group,"по репродуктивному статусу")
pvalueQualitativeText(df_Abus$Сomplaints,df_Abus$Group,"по жалобам")
pvalueQualitativeText(df_Abus$Breast_Surgery_before,df_Abus$Group,"по операциям до")
pvalueQualitativeText(df_Abus$skin_symptoms,df_Abus$Group,"по кожным симптомам")
pvalueQualitativeText(df_Abus$nipple_retraction,df_Abus$Group,"по втягиванию соска")
pvalueQualitativeText(df_Abus$nipple_release,df_Abus$Group,"по выделениям из соска")
pvalueQualitativeText(df_Abus$quadrant,df_Abus$Group,"по квадранту")
pvalueQualitativeText(df_Abus$type_structure_ACR,df_Abus$Group,"по структуре по ACR")
pvalueQualitativeText(df_Abus$genetics,df_Abus$Group,"по наследственности")
pvalueQualitativeText(df_Abus$hormonal_medications,df_Abus$Group,"по приему гормональных препаратов")






######Description younger group#######
escribir ("2.2 Описание пациенток до 40 лет")
How_many(gr_Jun$Name,"Всего в исследование вошло")
Describe_numeric (gr_Jun$Age, "возраста ","пациенток до 40 лет составил "," лет")
Describe_numeric (gr_Jun$height, "роста ","пациенток до 40 лет составил "," см")
Describe_numeric (gr_Jun$weight, "веса ","пациенток до 40 лет составил "," кг")


Quantity_discr("В выборке пациенток до 40 лет первичный диагноз ",gr_Jun$Diagnosis_primary)
Quantity_discr("В выборке пациенток до 40 лет поражение сторны ",gr_Jun$Side)
Quantity_discr("В выборке пациенток до 40 лет репродуктивный статус ",gr_Jun$Satus_reproductive)
Quantity_discr("В выборке пациенток до 40 лет жалобы ",gr_Jun$Сomplaints)
Quantity_discr("В выборке пациенток до 40 лет операции на груди до исследования ",gr_Jun$Breast_Surgery_before)
Quantity_discr("В выборке пациенток до 40 лет кожные симптомы ",gr_Jun$skin_symptoms)
Quantity_discr("В выборке пациенток до 40 лет втягивание соска ",gr_Jun$nipple_retraction)
Quantity_discr("В выборке пациенток до 40 лет выделения из соска ",gr_Jun$nipple_release)
Quantity_discr("В выборке пациенток до 40 лет поражение в квандранте ",gr_Jun$quadrant)
Quantity_discr("В выборке пациенток до 40 лет тип структуры по ACR ",gr_Jun$type_structure_ACR)
Quantity_discr("В выборке пациенток до 40 лет наследственность ",gr_Jun$genetics)
Quantity_discr("В выборке пациенток до 40 лет прием гормональных препаратов ",gr_Jun$hormonal_medications)

pvalueQualitativeText(gr_Jun$Diagnosis_primary,gr_Jun$Group,"по первичному диагнозу")
pvalueQualitativeText(gr_Jun$Side,gr_Jun$Group,"по стороне поражения")
pvalueQualitativeText(gr_Jun$Satus_reproductive,gr_Jun$Group,"по репродуктивному статусу")
pvalueQualitativeText(gr_Jun$Сomplaints,gr_Jun$Group,"по жалобам")
pvalueQualitativeText(gr_Jun$Breast_Surgery_before,gr_Jun$Group,"по операциям до")
pvalueQualitativeText(gr_Jun$skin_symptoms,gr_Jun$Group,"по кожным симптомам")
pvalueQualitativeText(gr_Jun$nipple_retraction,gr_Jun$Group,"по втягиванию соска")
pvalueQualitativeText(gr_Jun$nipple_release,gr_Jun$Group,"по выделениям из соска")
pvalueQualitativeText(gr_Jun$quadrant,gr_Jun$Group,"по квадранту")
pvalueQualitativeText(gr_Jun$type_structure_ACR,gr_Jun$Group,"по структуре по ACR")
pvalueQualitativeText(gr_Jun$genetics,gr_Jun$Group,"по наследственности")
pvalueQualitativeText(gr_Jun$hormonal_medications,gr_Jun$Group,"по приему гормональных препаратов")

######Description older group#######

escribir ("2.3 Описание пациенток старше 40 лет")
How_many(gr_Sin$Name,"Всего в исследование вошло")
Describe_numeric (gr_Sin$Age, "возраста ","пациенток старше 40 лет составил "," лет")
Describe_numeric (gr_Sin$height, "роста ","пациенток старше 40 лет составил "," см")
Describe_numeric (gr_Sin$weight, "веса ","пациенток старше 40 лет составил "," кг")


Quantity_discr("В выборке пациенток старше 40 лет первичный диагноз ",gr_Sin$Diagnosis_primary)
Quantity_discr("В выборке пациенток старше 40 лет поражение сторны ",gr_Sin$Side)
Quantity_discr("В выборке пациенток старше 40 лет репродуктивный статус ",gr_Sin$Satus_reproductive)
Quantity_discr("В выборке пациенток старше 40 лет жалобы ",gr_Sin$Сomplaints)
Quantity_discr("В выборке пациенток старше 40 лет операции на груди до исследования ",gr_Sin$Breast_Surgery_before)
Quantity_discr("В выборке пациенток старше 40 лет кожные симптомы ",gr_Sin$skin_symptoms)
Quantity_discr("В выборке пациенток старше 40 лет втягивание соска ",gr_Sin$nipple_retraction)
Quantity_discr("В выборке пациенток старше 40 лет выделения из соска ",gr_Sin$nipple_release)
Quantity_discr("В выборке пациенток старше 40 лет поражение в квандранте ",gr_Sin$quadrant)
Quantity_discr("В выборке пациенток старше 40 лет тип структуры по ACR ",gr_Sin$type_structure_ACR)
Quantity_discr("В выборке пациенток старше 40 лет наследственность ",gr_Sin$genetics)
Quantity_discr("В выборке пациенток старше 40 лет прием гормональных препаратов ",gr_Sin$hormonal_medications)

pvalueQualitativeText(gr_Sin$Diagnosis_primary,gr_Sin$Group,"по первичному диагнозу")
pvalueQualitativeText(gr_Sin$Side,gr_Sin$Group,"по стороне поражения")
pvalueQualitativeText(gr_Sin$Satus_reproductive,gr_Sin$Group,"по репродуктивному статусу")
pvalueQualitativeText(gr_Sin$Сomplaints,gr_Sin$Group,"по жалобам")
pvalueQualitativeText(gr_Sin$Breast_Surgery_before,gr_Sin$Group,"по операциям до")
pvalueQualitativeText(gr_Sin$skin_symptoms,gr_Sin$Group,"по кожным симптомам")
pvalueQualitativeText(gr_Sin$nipple_retraction,gr_Sin$Group,"по втягиванию соска")
pvalueQualitativeText(gr_Sin$nipple_release,gr_Sin$Group,"по выделениям из соска")
pvalueQualitativeText(gr_Sin$quadrant,gr_Sin$Group,"по квадранту")
pvalueQualitativeText(gr_Sin$type_structure_ACR,gr_Sin$Group,"по структуре по ACR")
pvalueQualitativeText(gr_Sin$genetics,gr_Sin$Group,"по наследственности")
pvalueQualitativeText(gr_Sin$hormonal_medications,gr_Sin$Group,"по приему гормональных препаратов")



######Description 1st group#######
escribir ("2.4 Описание пациенток старше 40 лет")
How_many(gr_Sin$Name,"Всего в исследование вошло")
Describe_numeric (gr_Sin$Age, "возраста ","пациенток старше 40 лет составил "," лет")
Describe_numeric (gr_Sin$height, "роста ","пациенток старше 40 лет составил "," см")
Describe_numeric (gr_Sin$weight, "веса ","пациенток старше 40 лет составил "," кг")


Quantity_discr("В выборке пациенток старше 40 лет первичный диагноз ",gr_Sin$Diagnosis_primary)
Quantity_discr("В выборке пациенток старше 40 лет поражение сторны ",gr_Sin$Side)
Quantity_discr("В выборке пациенток старше 40 лет репродуктивный статус ",gr_Sin$Satus_reproductive)
Quantity_discr("В выборке пациенток старше 40 лет жалобы ",gr_Sin$Сomplaints)
Quantity_discr("В выборке пациенток старше 40 лет операции на груди до исследования ",gr_Sin$Breast_Surgery_before)
Quantity_discr("В выборке пациенток старше 40 лет кожные симптомы ",gr_Sin$skin_symptoms)
Quantity_discr("В выборке пациенток старше 40 лет втягивание соска ",gr_Sin$nipple_retraction)
Quantity_discr("В выборке пациенток старше 40 лет выделения из соска ",gr_Sin$nipple_release)
Quantity_discr("В выборке пациенток старше 40 лет поражение в квандранте ",gr_Sin$quadrant)
Quantity_discr("В выборке пациенток старше 40 лет тип структуры по ACR ",gr_Sin$type_structure_ACR)
Quantity_discr("В выборке пациенток старше 40 лет наследственность ",gr_Sin$genetics)
Quantity_discr("В выборке пациенток старше 40 лет прием гормональных препаратов ",gr_Sin$hormonal_medications)

######Description 2nd group#######


######Description 3rd group#######


######Description 4th group#######


