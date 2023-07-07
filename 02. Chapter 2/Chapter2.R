#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
# source("~/ABUS_US_diagnostics/01. Preprocessing data/01. Samples.R")
# source("~/ABUS_US_diagnostics/01. Preprocessing data/02. Links.R")
# source("~/ABUS_US_diagnostics/01. Preprocessing data/03. Functions.R")
# source("~/ABUS_US_diagnostics/01. Preprocessing data/04. Lables.R")



######General description#######
escribir ("2.1 Общее Описание пациенток, вошедших в исследование")
How_many(df_Personal$Name,"Всего в исследование вошло")
Describe_numeric (df_Personal$Age, "возраста ","пациентов по всей выборке составил "," лет")
Describe_numeric (df_Personal$height, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (df_Personal$weight, "веса ","пациентов по всей выборке составил "," кг")

Quantity_discr("Во всей выборке были поставлены диагнозы ",df_Diagnosis$DiagnosisPrimary)

Quantity_discr("Во всей выборке были выялены следующие жалобы ", df_Сomplaints$Сomplaints)

Quantity_discr("Во всей выборке репродуктивный статус был ",df_Personal$SatusReproductive)
Quantity_discr("Во всей выборке операций на молочной железе в анамнезе ",df_Personal$BreastSurgeryBefore)
Quantity_discr("Во всей выборке прием гормональных препаратов ",df_Personal$hormonalMedications)
Quantity_discr("Во всей выборке генетическая предрасположенность ",df_Personal$genetics)
Quantity_discr("Во всей выборке было выявлена мутация BRCA ",df_Personal$MutationBRCA)

Quantity_discr("Во всей выборке сторона поражения при осмотре ",df_PersonalDiscr$Side)
Quantity_discr("Во всей выборке кожные симптомы при осмотре ",df_PersonalDiscr$skinSymptoms)
Quantity_discr("Во всей выборке втягивание соска при осмотре ",df_PersonalDiscr$nippleRetraction)
Quantity_discr("Во всей выборке выделения из соска при осмотре ",df_PersonalDiscr$nippleRelease)
Quantity_discr("Во всей выборке тип плотности по ACR при осмотре ",df_PersonalDiscr$typeRtructureACR)

Quantity_discr("Во всей выборке квадрант локализации ",df_Quadrant$quadrant)


pvalueQualitativeText(df_Diagnosis$DiagnosisPrimary,df_Diagnosis$Group,"по первичному диагнозу")
pvalueQualitativeText(df_Сomplaints$Сomplaints,df_Сomplaints$Group,"по выявленным жалобам")
pvalueQualitativeText(df_Personal$SatusReproductive,df_Personal$Group,"по репродуктивному статусу")
pvalueQualitativeText(df_Personal$BreastSurgeryBefore,df_Personal$Group,"по операциям в анамнезе")
pvalueQualitativeText(df_Personal$hormonalMedications,df_Personal$Group,"по приему гормональных препаратов")
pvalueQualitativeText(df_Personal$genetics,df_Personal$Group,"по генетической предрасположенности")
pvalueQualitativeText(df_Personal$MutationBRCA,df_Personal$Group,"по выявлению мутации BRCA")

pvalueQualitativeText(df_PersonalDiscr$Side,df_PersonalDiscr$Group,"по стороне поражения")
pvalueQualitativeText(df_PersonalDiscr$skinSymptoms,df_PersonalDiscr$Group,"по кожным симптомам")
pvalueQualitativeText(df_PersonalDiscr$nippleRetraction,df_PersonalDiscr$Group,"по симптому втягивания соска")
pvalueQualitativeText(df_PersonalDiscr$nippleRelease,df_PersonalDiscr$Group,"по симптому выделениям из соска")
pvalueQualitativeText(df_PersonalDiscr$typeRtructureACR,df_PersonalDiscr$Group,"по типу плотности по ACR при осмотре")

pvalueQualitativeText(df_Quadrant$quadrant,df_Quadrant$Group,"по квадранту локализации")




######Description younger group#######
escribir ("2.2 Описание пациенток до 40 лет")
dfPersonalJun <- subset(df_Personal, Group == gr_US | Group ==gr_US_ABUS)
dfDiagnosisJun<- subset(df_Diagnosis, Group == gr_US | Group ==gr_US_ABUS)
dfPersonalDiscrJun <- subset(df_PersonalDiscr, Group == gr_US | Group ==gr_US_ABUS)
dfСomplaintsJun <- subset(df_Сomplaints, Group == gr_US | Group ==gr_US_ABUS)
dfQuadrantJun <- subset(df_Quadrant, Group == gr_US | Group ==gr_US_ABUS)



How_many(dfPersonalJun$Name,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfPersonalJun$Age, "возраста ","пациенток выборке до 40 лет составил "," лет")
AgeLimitaionJun <-  subset(dfPersonalJun, Age > 39)
How_many(AgeLimitaionJun$Name,"Пациенток старше 40 вошли в группу 1 и 3: ")


Describe_numeric (dfPersonalJun$height, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfPersonalJun$weight, "веса ","пациенток выборке до 40 лет составил "," кг")

Quantity_discr("В выборке до 40 лет были поставлены диагнозы ",dfDiagnosisJun$DiagnosisPrimary)

Quantity_discr("В выборке до 40 лет были выялены следующие жалобы ", dfСomplaintsJun$Сomplaints)

Quantity_discr("В выборке до 40 лет репродуктивный статус был ",dfPersonalJun$SatusReproductive)
Quantity_discr("В выборке до 40 лет операций на молочной железе в анамнезе ",dfPersonalJun$BreastSurgeryBefore)
Quantity_discr("В выборке до 40 лет прием гормональных препаратов ",dfPersonalJun$hormonalMedications)
Quantity_discr("В выборке до 40 лет генетическая предрасположенность ",dfPersonalJun$genetics)
Quantity_discr("В выборке до 40 лет было выявлена мутация BRCA ",dfPersonalJun$MutationBRCA)

Quantity_discr("В выборке до 40 лет сторона поражения при осмотре ",dfPersonalDiscrJun$Side)
Quantity_discr("В выборке до 40 лет кожные симптомы при осмотре ",dfPersonalDiscrJun$skinSymptoms)
Quantity_discr("В выборке до 40 лет втягивание соска при осмотре ",dfPersonalDiscrJun$nippleRetraction)
Quantity_discr("В выборке до 40 лет выделения из соска при осмотре ",dfPersonalDiscrJun$nippleRelease)
Quantity_discr("В выборке до 40 лет тип плотности по ACR при осмотре ",dfPersonalDiscrJun$typeRtructureACR)

Quantity_discr("В выборке до 40 лет квадрант локализации ",dfQuadrantJun$quadrant)


pvalueQualitativeText(dfDiagnosisJun$DiagnosisPrimary,dfDiagnosisJun$Group,"по первичному диагнозу в выборке до 40")
pvalueQualitativeText(dfСomplaintsJun$Сomplaints,dfСomplaintsJun$Group,"по выявленным жалобам в выборке до 40")
pvalueQualitativeText(dfPersonalJun$SatusReproductive,dfPersonalJun$Group,"по репродуктивному статусу в выборке до 40")
pvalueQualitativeText(dfPersonalJun$BreastSurgeryBefore,dfPersonalJun$Group,"по операциям в анамнезе в выборке до 40")
pvalueQualitativeText(dfPersonalJun$hormonalMedications,dfPersonalJun$Group,"по приему гормональных препаратов в выборке до 40")
pvalueQualitativeText(dfPersonalJun$genetics,dfPersonalJun$Group,"по генетической предрасположенности в выборке до 40")
pvalueQualitativeText(dfPersonalJun$MutationBRCA,dfPersonalJun$Group,"по выявлению мутации BRCA в выборке до 40")

pvalueQualitativeText(dfPersonalDiscrJun$Side,dfPersonalDiscrJun$Group,"по стороне поражения в выборке до 40") 
pvalueQualitativeText(dfPersonalDiscrJun$skinSymptoms,dfPersonalDiscrJun$Group,"по кожным симптомам в выборке до 40")
pvalueQualitativeText(dfPersonalDiscrJun$nippleRetraction,dfPersonalDiscrJun$Group,"по симптому втягивания соска в выборке до 40")
pvalueQualitativeText(dfPersonalDiscrJun$nippleRelease,dfPersonalDiscrJun$Group,"по симптому выделениям из соска в выборке до 40")
pvalueQualitativeText(dfPersonalDiscrJun$typeRtructureACR,dfPersonalDiscrJun$Group,"по типу плотности по ACR при осмотре в выборке до 40")

pvalueQualitativeText(dfQuadrantJun$quadrant,dfQuadrantJun$Group,"по квадранту локализации в выборке до 40")


######Description older group#######
escribir ("2.3 Описание пациенток после 40 лет")
dfPersonalSnr <- subset(df_Personal, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfDiagnosisSnr<- subset(df_Diagnosis, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfPersonalDiscrSnr <- subset(df_PersonalDiscr, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfСomplaintsSnr <- subset(df_Сomplaints, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)
dfQuadrantSnr <- subset(df_Quadrant, Group == gr_US_MMG | Group ==gr_US_MMG_ABUS)



How_many(dfPersonalSnr$Name,"Пациенток после 40 лет в исследование вошло")

AgeLimitaionSnr <-  subset(dfPersonalSnr, Age < 40)
How_many(AgeLimitaionSnr$Name,"Пациенток старше 40 вошли в группу 2 и 4: ")

Describe_numeric (dfPersonalSnr$Age, "возраста ","пациенток выборке после 40 лет составил "," лет")
Describe_numeric (dfPersonalSnr$height, "роста ","пациенток выборке после 40 лет составил "," см")
Describe_numeric (dfPersonalSnr$weight, "веса ","пациенток выборке после 40 лет составил "," кг")

Quantity_discr("В выборке после 40 лет были поставлены диагнозы ",dfDiagnosisSnr$DiagnosisPrimary)

Quantity_discr("В выборке после 40 лет были выялены следующие жалобы ", dfСomplaintsSnr$Сomplaints)

Quantity_discr("В выборке после 40 лет репродуктивный статус был ",dfPersonalSnr$SatusReproductive)
Quantity_discr("В выборке после 40 лет операций на молочной железе в анамнезе ",dfPersonalSnr$BreastSurgeryBefore)
Quantity_discr("В выборке после 40 лет прием гормональных препаратов ",dfPersonalSnr$hormonalMedications)
Quantity_discr("В выборке после 40 лет генетическая предрасположенность ",dfPersonalSnr$genetics)
Quantity_discr("В выборке после 40 лет было выявлена мутация BRCA ",dfPersonalSnr$MutationBRCA)

Quantity_discr("В выборке после 40 лет сторона поражения при осмотре ",dfPersonalDiscrSnr$Side)
Quantity_discr("В выборке после 40 лет кожные симптомы при осмотре ",dfPersonalDiscrSnr$skinSymptoms)
Quantity_discr("В выборке после 40 лет втягивание соска при осмотре ",dfPersonalDiscrSnr$nippleRetraction)
Quantity_discr("В выборке после 40 лет выделения из соска при осмотре ",dfPersonalDiscrSnr$nippleRelease)
Quantity_discr("В выборке после 40 лет тип плотности по ACR при осмотре ",dfPersonalDiscrSnr$typeRtructureACR)

Quantity_discr("В выборке после 40 лет квадрант локализации ",dfQuadrantSnr$quadrant)


pvalueQualitativeText(dfDiagnosisSnr$DiagnosisPrimary,dfDiagnosisSnr$Group,"по первичному диагнозу в выборке после 40")
pvalueQualitativeText(dfСomplaintsSnr$Сomplaints,dfСomplaintsSnr$Group,"по выявленным жалобам в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$SatusReproductive,dfPersonalSnr$Group,"по репродуктивному статусу в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$BreastSurgeryBefore,dfPersonalSnr$Group,"по операциям в анамнезе в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$hormonalMedications,dfPersonalSnr$Group,"по приему гормональных препаратов в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$genetics,dfPersonalSnr$Group,"по генетической предрасположенности в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$MutationBRCA,dfPersonalSnr$Group,"по выявлению мутации BRCA в выборке после 40")

pvalueQualitativeText(dfPersonalDiscrSnr$Side,dfPersonalDiscrSnr$Group,"по стороне поражения в выборке после 40") 
pvalueQualitativeText(dfPersonalDiscrSnr$skinSymptoms,dfPersonalDiscrSnr$Group,"по кожным симптомам в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$nippleRetraction,dfPersonalDiscrSnr$Group,"по симптому втягивания соска в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$nippleRelease,dfPersonalDiscrSnr$Group,"по симптому выделениям из соска в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$typeRtructureACR,dfPersonalDiscrSnr$Group,"по типу плотности по ACR при осмотре в выборке после 40")

pvalueQualitativeText(dfQuadrantSnr$quadrant,dfQuadrantSnr$Group,"по квадранту локализации в выборке после 40")



######Description 1st group#######
escribir ("2.4 Описание пациенток в первой группе")

dfPersonalGr1 <- subset(df_Personal, Group == gr_US)
dfDiagnosisGr1<- subset(df_Diagnosis, Group == gr_US)
dfPersonalDiscrGr1 <- subset(df_PersonalDiscr, Group == gr_US)
dfСomplaintsGr1 <- subset(df_Сomplaints, Group == gr_US)
dfQuadrantGr1 <- subset(df_Quadrant, Group == gr_US)



How_many(dfPersonalGr1$Name,"Пациенток в первой группе в исследование вошло")
Describe_numeric (dfPersonalGr1$Age, "возраста ","пациенток выборке в первой группе составил "," лет")
Describe_numeric (dfPersonalGr1$height, "роста ","пациенток выборке в первой группе составил "," см")
Describe_numeric (dfPersonalGr1$weight, "веса ","пациенток выборке в первой группе составил "," кг")

Quantity_discr("В выборке в первой группе были поставлены диагнозы ",dfDiagnosisGr1$DiagnosisPrimary)

Quantity_discr("В выборке в первой группе были выялены следующие жалобы ", dfСomplaintsGr1$Сomplaints)

Quantity_discr("В выборке в первой группе репродуктивный статус был ",dfPersonalGr1$SatusReproductive)
Quantity_discr("В выборке в первой группе операций на молочной железе в анамнезе ",dfPersonalGr1$BreastSurgeryBefore)
Quantity_discr("В выборке в первой группе прием гормональных препаратов ",dfPersonalGr1$hormonalMedications)
Quantity_discr("В выборке в первой группе генетическая предрасположенность ",dfPersonalGr1$genetics)
Quantity_discr("В выборке в первой группе было выявлена мутация BRCA ",dfPersonalGr1$MutationBRCA)

Quantity_discr("В выборке в первой группе сторона поражения при осмотре ",dfPersonalDiscrGr1$Side)
Quantity_discr("В выборке в первой группе кожные симптомы при осмотре ",dfPersonalDiscrGr1$skinSymptoms)
Quantity_discr("В выборке в первой группе втягивание соска при осмотре ",dfPersonalDiscrGr1$nippleRetraction)
Quantity_discr("В выборке в первой группе выделения из соска при осмотре ",dfPersonalDiscrGr1$nippleRelease)
Quantity_discr("В выборке в первой группе тип плотности по ACR при осмотре ",dfPersonalDiscrGr1$typeRtructureACR)

Quantity_discr("В выборке в первой группе квадрант локализации ",dfQuadrantGr1$quadrant)





######Description 2nd group#######
escribir ("2.5 Описание пациенток во второй группе")

dfPersonalGr2 <- subset(df_Personal, Group == gr_US_MMG)
dfDiagnosisGr2<- subset(df_Diagnosis, Group == gr_US_MMG)
dfPersonalDiscrGr2 <- subset(df_PersonalDiscr, Group == gr_US_MMG)
dfСomplaintsGr2 <- subset(df_Сomplaints, Group == gr_US_MMG)
dfQuadrantGr2 <- subset(df_Quadrant, Group == gr_US_MMG)



How_many(dfPersonalGr2$Name,"Пациенток в второй группе в исследование вошло")
Describe_numeric (dfPersonalGr2$Age, "возраста ","пациенток выборке в второй группе составил "," лет")
Describe_numeric (dfPersonalGr2$height, "роста ","пациенток выборке в второй группе составил "," см")
Describe_numeric (dfPersonalGr2$weight, "веса ","пациенток выборке в второй группе составил "," кг")

Quantity_discr("В выборке в второй группе были поставлены диагнозы ",dfDiagnosisGr2$DiagnosisPrimary)

Quantity_discr("В выборке в второй группе были выялены следующие жалобы ", dfСomplaintsGr2$Сomplaints)

Quantity_discr("В выборке в второй группе репродуктивный статус был ",dfPersonalGr2$SatusReproductive)
Quantity_discr("В выборке в второй группе операций на молочной железе в анамнезе ",dfPersonalGr2$BreastSurgeryBefore)
Quantity_discr("В выборке в второй группе прием гормональных препаратов ",dfPersonalGr2$hormonalMedications)
Quantity_discr("В выборке в второй группе генетическая предрасположенность ",dfPersonalGr2$genetics)
Quantity_discr("В выборке в второй группе было выявлена мутация BRCA ",dfPersonalGr2$MutationBRCA)

Quantity_discr("В выборке в второй группе сторона поражения при осмотре ",dfPersonalDiscrGr2$Side)
Quantity_discr("В выборке в второй группе кожные симптомы при осмотре ",dfPersonalDiscrGr2$skinSymptoms)
Quantity_discr("В выборке в второй группе втягивание соска при осмотре ",dfPersonalDiscrGr2$nippleRetraction)
Quantity_discr("В выборке в второй группе выделения из соска при осмотре ",dfPersonalDiscrGr2$nippleRelease)
Quantity_discr("В выборке в второй группе тип плотности по ACR при осмотре ",dfPersonalDiscrGr2$typeRtructureACR)

Quantity_discr("В выборке в второй группе квадрант локализации ",dfQuadrantGr2$quadrant)

######Description 3rd group#######
escribir ("2.6 Описание пациенток в третьей группе")
dfPersonalGr3 <- subset(df_Personal, Group == gr_US_ABUS)
dfDiagnosisGr3<- subset(df_Diagnosis, Group == gr_US_ABUS)
dfPersonalDiscrGr3 <- subset(df_PersonalDiscr, Group == gr_US_ABUS)
dfСomplaintsGr3 <- subset(df_Сomplaints, Group == gr_US_ABUS)
dfQuadrantGr3 <- subset(df_Quadrant, Group == gr_US_ABUS)



How_many(dfPersonalGr3$Name,"Пациенток в третьей группе в исследование вошло")
Describe_numeric (dfPersonalGr3$Age, "возраста ","пациенток выборке в третьей группе составил "," лет")
Describe_numeric (dfPersonalGr3$height, "роста ","пациенток выборке в третьей группе составил "," см")
Describe_numeric (dfPersonalGr3$weight, "веса ","пациенток выборке в третьей группе составил "," кг")

Quantity_discr("В выборке в третьей группе были поставлены диагнозы ",dfDiagnosisGr3$DiagnosisPrimary)

Quantity_discr("В выборке в третьей группе были выялены следующие жалобы ", dfСomplaintsGr3$Сomplaints)

Quantity_discr("В выборке в третьей группе репродуктивный статус был ",dfPersonalGr3$SatusReproductive)
Quantity_discr("В выборке в третьей группе операций на молочной железе в анамнезе ",dfPersonalGr3$BreastSurgeryBefore)
Quantity_discr("В выборке в третьей группе прием гормональных препаратов ",dfPersonalGr3$hormonalMedications)
Quantity_discr("В выборке в третьей группе генетическая предрасположенность ",dfPersonalGr3$genetics)
Quantity_discr("В выборке в третьей группе было выявлена мутация BRCA ",dfPersonalGr3$MutationBRCA)

Quantity_discr("В выборке в третьей группе сторона поражения при осмотре ",dfPersonalDiscrGr3$Side)
Quantity_discr("В выборке в третьей группе кожные симптомы при осмотре ",dfPersonalDiscrGr3$skinSymptoms)
Quantity_discr("В выборке в третьей группе втягивание соска при осмотре ",dfPersonalDiscrGr3$nippleRetraction)
Quantity_discr("В выборке в третьей группе выделения из соска при осмотре ",dfPersonalDiscrGr3$nippleRelease)
Quantity_discr("В выборке в третьей группе тип плотности по ACR при осмотре ",dfPersonalDiscrGr3$typeRtructureACR)

Quantity_discr("В выборке в третьей группе квадрант локализации ",dfQuadrantGr3$quadrant)


######Description 4th group#######
escribir ("2.7 Описание пациенток в четвертой группе")

dfPersonalGr4 <- subset(df_Personal, Group == gr_US_MMG_ABUS)
dfDiagnosisGr4<- subset(df_Diagnosis, Group == gr_US_MMG_ABUS)
dfPersonalDiscrGr4 <- subset(df_PersonalDiscr, Group == gr_US_MMG_ABUS)
dfСomplaintsGr4 <- subset(df_Сomplaints, Group == gr_US_MMG_ABUS)
dfQuadrantGr4 <- subset(df_Quadrant, Group == gr_US_MMG_ABUS)



How_many(dfPersonalGr4$Name,"Пациенток в четвертой группе в исследование вошло")
Describe_numeric (dfPersonalGr4$Age, "возраста ","пациенток выборке в четвертой группе составил "," лет")
Describe_numeric (dfPersonalGr4$height, "роста ","пациенток выборке в четвертой группе составил "," см")
Describe_numeric (dfPersonalGr4$weight, "веса ","пациенток выборке в четвертой группе составил "," кг")

Quantity_discr("В выборке в четвертой группе были поставлены диагнозы ",dfDiagnosisGr4$DiagnosisPrimary)

Quantity_discr("В выборке в четвертой группе были выялены следующие жалобы ", dfСomplaintsGr4$Сomplaints)

Quantity_discr("В выборке в четвертой группе репродуктивный статус был ",dfPersonalGr4$SatusReproductive)
Quantity_discr("В выборке в четвертой группе операций на молочной железе в анамнезе ",dfPersonalGr4$BreastSurgeryBefore)
Quantity_discr("В выборке в четвертой группе прием гормональных препаратов ",dfPersonalGr4$hormonalMedications)
Quantity_discr("В выборке в четвертой группе генетическая предрасположенность ",dfPersonalGr4$genetics)
Quantity_discr("В выборке в четвертой группе было выявлена мутация BRCA ",dfPersonalGr4$MutationBRCA)

Quantity_discr("В выборке в четвертой группе сторона поражения при осмотре ",dfPersonalDiscrGr4$Side)
Quantity_discr("В выборке в четвертой группе кожные симптомы при осмотре ",dfPersonalDiscrGr4$skinSymptoms)
Quantity_discr("В выборке в четвертой группе втягивание соска при осмотре ",dfPersonalDiscrGr4$nippleRetraction)
Quantity_discr("В выборке в четвертой группе выделения из соска при осмотре ",dfPersonalDiscrGr4$nippleRelease)
Quantity_discr("В выборке в четвертой группе тип плотности по ACR при осмотре ",dfPersonalDiscrGr4$typeRtructureACR)

Quantity_discr("В выборке в четвертой группе квадрант локализации ",dfQuadrantGr4$quadrant)

