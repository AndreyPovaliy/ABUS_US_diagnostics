#source("~/Статиьи и диссертации/ABUS_US_diagnostics/01. Preprocessing data/scripts/02. Real.R")
#source("~/Статиьи и диссертации/ABUS_US_diagnostics/01. Preprocessing data/scripts/01. Model.R")

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)



######General description#######
escribir ("2.1 Общее Описание пациенток, вошедших в исследование")
How_many(dfPersonal$name_patient,"Всего в исследование вошло")
Describe_numeric (dfPersonal$age_patient, "возраста ","пациентов по всей выборке составил "," лет")
Describe_numeric (dfPersonal$height_patient, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (dfPersonal$weight_patient, "веса ","пациентов по всей выборке составил "," кг")

Quantity_discr("Во всей выборке были поставлены диагнозы ",dfDiagnosis$diagnosis_primary)

Quantity_discr("Во всей выборке были выялены следующие жалобы ", dfСomplaints$complaints)

Quantity_discr("Во всей выборке репродуктивный статус был ",dfPersonal$satus_reproductive)
Quantity_discr("Во всей выборке операций на молочной железе в анамнезе ",dfPersonal$breast_surgery_before)
Quantity_discr("Во всей выборке прием гормональных препаратов ",dfPersonal$hormonal_medications)
Quantity_discr("Во всей выборке генетическая предрасположенность ",dfPersonal$genetics)
Quantity_discr("Во всей выборке было выявлена мутация BRCA ",dfPersonal$mutation_brca)

Quantity_discr("Во всей выборке сторона поражения при осмотре ",dfPatientDescribe$side)
Quantity_discr("Во всей выборке кожные симптомы при осмотре ",dfPatientDescribe$skin_symptoms)
Quantity_discr("Во всей выборке втягивание соска при осмотре ",dfPatientDescribe$nipple_retractionn)
Quantity_discr("Во всей выборке выделения из соска при осмотре ",dfPatientDescribe$nipple_release)
Quantity_discr("Во всей выборке тип плотности по ACR при осмотре ",dfPatientDescribe$type_structure_ACR)

Quantity_discr("Во всей выборке квадрант локализации ",dfQuadrant$quadrant)


pvalueQualitativeText(dfDiagnosis$diagnosis_primary,dfDiagnosis$group_separation,"по первичному диагнозу")
pvalueQualitativeText(dfСomplaints$complaints,dfСomplaints$group_separation,"по выявленным жалобам")
pvalueQualitativeText(dfPersonal$satus_reproductive,dfPersonal$group_separation,"по репродуктивному статусу")
pvalueQualitativeText(dfPersonal$breast_surgery_before,dfPersonal$group_separation,"по операциям в анамнезе")
pvalueQualitativeText(dfPersonal$hormonal_medications,dfPersonal$group_separation,"по приему гормональных препаратов")
pvalueQualitativeText(dfPersonal$genetics,dfPersonal$group_separation,"по генетической предрасположенности")
pvalueQualitativeText(dfPersonal$mutation_brca,dfPersonal$group_separation,"по выявлению мутации BRCA")

pvalueQualitativeText(dfPatientDescribe$side,dfPatientDescribe$group_separation,"по стороне поражения")
pvalueQualitativeText(dfPatientDescribe$skin_symptoms,dfPatientDescribe$group_separation,"по кожным симптомам")
pvalueQualitativeText(dfPatientDescribe$nipple_retraction,dfPatientDescribe$group_separation,"по симптому втягивания соска")
pvalueQualitativeText(dfPatientDescribe$nipple_release,dfPatientDescribe$group_separation,"по симптому выделениям из соска")
pvalueQualitativeText(dfPatientDescribe$type_structure_acr,dfPatientDescribe$group_separation,"по типу плотности по ACR при осмотре")

pvalueQualitativeText(dfQuadrant$quadrant,dfQuadrant$group_separation,"по квадранту локализации")




######Description younger group#######
escribir ("2.2 Описание пациенток до 40 лет")

How_many(dfPersonalJun$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfPersonalJun$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfPersonalJun$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfPersonalJun$age_patient), "лет"))
AgeLimitaionJun <-  subset(dfPersonalJun, age_patient > 39)
How_many(AgeLimitaionJun$Name,"Пациенток старше 40 вошли в группу 1 и 3: ")


Describe_numeric (dfPersonalJun$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfPersonalJun$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

Quantity_discr("В выборке до 40 лет были поставлены диагнозы ",dfDiagnosisJun$diagnosis_primary)

Quantity_discr("В выборке до 40 лет были выялены следующие жалобы ", dfСomplaintsJun$complaints)

Quantity_discr("В выборке до 40 лет репродуктивный статус был ",dfPersonalJun$satus_reproductive)
Quantity_discr("В выборке до 40 лет операций на молочной железе в анамнезе ",dfPersonalJun$breast_surgery_before)
Quantity_discr("В выборке до 40 лет прием гормональных препаратов ",dfPersonalJun$hormonal_medications)
Quantity_discr("В выборке до 40 лет генетическая предрасположенность ",dfPersonalJun$genetics)
Quantity_discr("В выборке до 40 лет было выявлена мутация BRCA ",dfPersonalJun$mutation_brca)

Quantity_discr("В выборке до 40 лет сторона поражения при осмотре ",dfPatientDescribeJun$side)
Quantity_discr("В выборке до 40 лет кожные симптомы при осмотре ",dfPatientDescribeJun$skin_symptoms)
Quantity_discr("В выборке до 40 лет втягивание соска при осмотре ",dfPatientDescribeJun$nipple_retraction)
Quantity_discr("В выборке до 40 лет выделения из соска при осмотре ",dfPatientDescribeJun$nipple_release)
Quantity_discr("В выборке до 40 лет тип плотности по ACR при осмотре ",dfPatientDescribeJun$type_structure_acr)

Quantity_discr("В выборке до 40 лет квадрант локализации ",dfQuadrantJun$quadrant)
LocaldfQuadrantJun <-  subset(dfQuadrantJun$quadrant, dfQuadrantJun$quadrant != "нет")
Quantity_discr("В выборке до 40 лет квадрант локализации ",LocaldfQuadrantJun)

pvalueQualitativeText(dfDiagnosisJun$diagnosis_primary,dfDiagnosisJun$group_separation,"по первичному диагнозу в выборке до 40")
pvalueQualitativeText(dfСomplaintsJun$complaints,dfСomplaintsJun$group_separation,"по выявленным жалобам в выборке до 40")
pvalueQualitativeText(dfPersonalJun$satus_reproductive,dfPersonalJun$group_separation,"по репродуктивному статусу в выборке до 40")
pvalueQualitativeText(dfPersonalJun$breast_surgery_before,dfPersonalJun$group_separation,"по операциям в анамнезе в выборке до 40")
pvalueQualitativeText(dfPersonalJun$hormonal_medications,dfPersonalJun$group_separation,"по приему гормональных препаратов в выборке до 40")
pvalueQualitativeText(dfPersonalJun$genetics,dfPersonalJun$group_separation,"по генетической предрасположенности в выборке до 40")
pvalueQualitativeText(dfPersonalJun$mutation_brca,dfPersonalJun$group_separation,"по выявлению мутации BRCA в выборке до 40")

pvalueQualitativeText(dfPatientDescribeJun$side,dfPatientDescribeJun$group_separation,"по стороне поражения в выборке до 40") 
pvalueQualitativeText(dfPatientDescribeJun$skin_symptoms,dfPatientDescribeJun$group_separation,"по кожным симптомам в выборке до 40")
pvalueQualitativeText(dfPatientDescribeJun$nipple_retraction,dfPatientDescribeJun$group_separation,"по симптому втягивания соска в выборке до 40")
pvalueQualitativeText(dfPatientDescribeJun$nipple_release,dfPatientDescribeJun$group_separation,"по симптому выделениям из соска в выборке до 40")
pvalueQualitativeText(dfPatientDescribeJun$type_structure_acr,dfPatientDescribeJun$group_separation,"по типу плотности по ACR при осмотре в выборке до 40")

pvalueQualitativeText(dfQuadrantJun$quadrant,dfQuadrantJun$group_separation,"по квадранту локализации в выборке до 40")


######Description older group#######
escribir ("2.3 Описание пациенток после 40 лет")




How_many(dfPersonalSnr$name_patient,"Пациенток после 40 лет в исследование вошло")

AgeLimitaionSnr <-  subset(dfPersonalSnr,  age_patient < 40)
How_many(AgeLimitaionSnr$Name,"Пациенток старше 40 вошли в группу 2 и 4: ")

Describe_numeric (dfPersonalSnr$age_patient, "возраста ","пациенток выборке после 40 лет составил "," лет")
Describe_numeric (dfPersonalSnr$height_patient, "роста ","пациенток выборке после 40 лет составил "," см")
Describe_numeric (dfPersonalSnr$weight_patient, "веса ","пациенток выборке после 40 лет составил "," кг")

Quantity_discr("В выборке после 40 лет были поставлены диагнозы ",dfDiagnosisSnr$diagnosis_primary)

Quantity_discr("В выборке после 40 лет были выялены следующие жалобы ", dfСomplaintsSnr$complaints)

Quantity_discr("В выборке после 40 лет репродуктивный статус был ",dfPersonalSnr$satus_reproductive)
Quantity_discr("В выборке после 40 лет операций на молочной железе в анамнезе ",dfPersonalSnr$breast_surgery_before)
Quantity_discr("В выборке после 40 лет прием гормональных препаратов ",dfPersonalSnr$hormonal_medications)
Quantity_discr("В выборке после 40 лет генетическая предрасположенность ",dfPersonalSnr$genetics)
Quantity_discr("В выборке после 40 лет было выявлена мутация BRCA ",dfPersonalSnr$mutation_brca)

Quantity_discr("В выборке после 40 лет сторона поражения при осмотре ",dfPersonalDiscrSnr$side)
Quantity_discr("В выборке после 40 лет кожные симптомы при осмотре ",dfPersonalDiscrSnr$skin_symptoms)
Quantity_discr("В выборке после 40 лет втягивание соска при осмотре ",dfPersonalDiscrSnr$nipple_retraction)
Quantity_discr("В выборке после 40 лет выделения из соска при осмотре ",dfPersonalDiscrSnr$nipple_release)
Quantity_discr("В выборке после 40 лет тип плотности по ACR при осмотре ",dfPersonalDiscrSnr$type_structure_acr)

Quantity_discr("В выборке после 40 лет квадрант локализации ",dfQuadrantSnr$quadrant)


pvalueQualitativeText(dfDiagnosisSnr$diagnosis_primary,dfDiagnosisSnr$group_separation,"по первичному диагнозу в выборке после 40")
pvalueQualitativeText(dfСomplaintsSnr$complaints,dfСomplaintsSnr$group_separation,"по выявленным жалобам в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$satus_reproductive,dfPersonalSnr$group_separation,"по репродуктивному статусу в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$breast_surgery_before,dfPersonalSnr$group_separation,"по операциям в анамнезе в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$hormonal_medications,dfPersonalSnr$group_separation,"по приему гормональных препаратов в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$genetics,dfPersonalSnr$group_separation,"по генетической предрасположенности в выборке после 40")
pvalueQualitativeText(dfPersonalSnr$mutation_brca,dfPersonalSnr$group_separation,"по выявлению мутации BRCA в выборке после 40")

pvalueQualitativeText(dfPersonalDiscrSnr$side,dfPersonalDiscrSnr$group_separation,"по стороне поражения в выборке после 40") 
pvalueQualitativeText(dfPersonalDiscrSnr$skin_symptoms,dfPersonalDiscrSnr$group_separation,"по кожным симптомам в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$nipple_retraction,dfPersonalDiscrSnr$group_separation,"по симптому втягивания соска в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$nipple_release,dfPersonalDiscrSnr$group_separation,"по симптому выделениям из соска в выборке после 40")
pvalueQualitativeText(dfPersonalDiscrSnr$type_structure_acr,dfPersonalDiscrSnr$group_separation,"по типу плотности по ACR при осмотре в выборке после 40")

pvalueQualitativeText(dfQuadrantSnr$quadrant,dfQuadrantSnr$group_separation,"по квадранту локализации в выборке после 40")



######Description 1st group#######
escribir ("2.4 Описание пациенток в первой группе")

How_many(dfPersonalGr1$name_patient,"Пациенток в первой группе в исследование вошло")
Describe_numeric (dfPersonalGr1$age_patient, "возраста ","пациенток выборке в первой группе составил "," лет")
Describe_numeric (dfPersonalGr1$height_patient, "роста ","пациенток выборке в первой группе составил "," см")
Describe_numeric (dfPersonalGr1$weight_patient, "веса ","пациенток выборке в первой группе составил "," кг")

Quantity_discr("В выборке в первой группе были поставлены диагнозы ",dfDiagnosisGr1$diagnosis_primary)

Quantity_discr("В выборке в первой группе были выялены следующие жалобы ", dfСomplaintsGr1$complaints)

Quantity_discr("В выборке в первой группе репродуктивный статус был ",dfPersonalGr1$satus_reproductive)
Quantity_discr("В выборке в первой группе операций на молочной железе в анамнезе ",dfPersonalGr1$breast_surgery_before)
Quantity_discr("В выборке в первой группе прием гормональных препаратов ",dfPersonalGr1$hormonal_medications)
Quantity_discr("В выборке в первой группе генетическая предрасположенность ",dfPersonalGr1$genetics)
Quantity_discr("В выборке в первой группе было выявлена мутация BRCA ",dfPersonalGr1$mutation_brca)

Quantity_discr("В выборке в первой группе сторона поражения при осмотре ",dfPatientDescribeGr1$side)
Quantity_discr("В выборке в первой группе кожные симптомы при осмотре ",dfPatientDescribeGr1$skin_symptoms)
Quantity_discr("В выборке в первой группе втягивание соска при осмотре ",dfPatientDescribeGr1$nipple_retraction)
Quantity_discr("В выборке в первой группе выделения из соска при осмотре ",dfPatientDescribeGr1$nipple_release)
Quantity_discr("В выборке в первой группе тип плотности по ACR при осмотре ",dfPatientDescribeGr1$type_structure_acr)

Quantity_discr("В выборке в первой группе квадрант локализации ",dfQuadrantGr1$quadrant)





######Description 2nd group#######
escribir ("2.5 Описание пациенток во второй группе")

How_many(dfPersonalGr2$name_patient,"Пациенток в второй группе в исследование вошло")
Describe_numeric (dfPersonalGr2$age_patient, "возраста ","пациенток выборке в второй группе составил "," лет")
Describe_numeric (dfPersonalGr2$height_patient, "роста ","пациенток выборке в второй группе составил "," см")
Describe_numeric (dfPersonalGr2$weight_patient, "веса ","пациенток выборке в второй группе составил "," кг")

Quantity_discr("В выборке в второй группе были поставлены диагнозы ",dfDiagnosisGr2$diagnosis_primary)

Quantity_discr("В выборке в второй группе были выялены следующие жалобы ", dfСomplaintsGr2$complaints)

Quantity_discr("В выборке в второй группе репродуктивный статус был ",dfPersonalGr2$satus_reproductive)
Quantity_discr("В выборке в второй группе операций на молочной железе в анамнезе ",dfPersonalGr2$breast_surgery_before)
Quantity_discr("В выборке в второй группе прием гормональных препаратов ",dfPersonalGr2$hormonal_medications)
Quantity_discr("В выборке в второй группе генетическая предрасположенность ",dfPersonalGr2$genetics)
Quantity_discr("В выборке в второй группе было выявлена мутация BRCA ",dfPersonalGr2$mutation_brca)

Quantity_discr("В выборке в второй группе сторона поражения при осмотре ",dfPatientDescribeGr2$side)
Quantity_discr("В выборке в второй группе кожные симптомы при осмотре ",dfPatientDescribeGr2$skin_symptoms)
Quantity_discr("В выборке в второй группе втягивание соска при осмотре ",dfPatientDescribeGr2$nipple_retraction)
Quantity_discr("В выборке в второй группе выделения из соска при осмотре ",dfPatientDescribeGr2$nipple_release)
Quantity_discr("В выборке в второй группе тип плотности по ACR при осмотре ",dfPatientDescribeGr2$type_structure_acr)

Quantity_discr("В выборке в второй группе квадрант локализации ",dfQuadrantGr2$quadrant)

######Description 3rd group#######
escribir ("2.6 Описание пациенток в третьей группе")


How_many(dfPersonalGr3$name_patient,"Пациенток в третьей группе в исследование вошло")
Describe_numeric (dfPersonalGr3$age_patient, "возраста ","пациенток выборке в третьей группе составил "," лет")
Describe_numeric (dfPersonalGr3$height_patient, "роста ","пациенток выборке в третьей группе составил "," см")
Describe_numeric (dfPersonalGr3$weight_patient, "веса ","пациенток выборке в третьей группе составил "," кг")

Quantity_discr("В выборке в третьей группе были поставлены диагнозы ",dfDiagnosisGr3$diagnosis_primary)

Quantity_discr("В выборке в третьей группе были выялены следующие жалобы ", dfСomplaintsGr3$complaints)

Quantity_discr("В выборке в третьей группе репродуктивный статус был ",dfPersonalGr3$satus_reproductive)
Quantity_discr("В выборке в третьей группе операций на молочной железе в анамнезе ",dfPersonalGr3$breast_surgery_before)
Quantity_discr("В выборке в третьей группе прием гормональных препаратов ",dfPersonalGr3$hormonal_medications)
Quantity_discr("В выборке в третьей группе генетическая предрасположенность ",dfPersonalGr3$genetics)
Quantity_discr("В выборке в третьей группе было выявлена мутация BRCA ",dfPersonalGr3$mutation_brca)

Quantity_discr("В выборке в третьей группе сторона поражения при осмотре ",dfPatientDescribeGr3$side)
Quantity_discr("В выборке в третьей группе кожные симптомы при осмотре ",dfPatientDescribeGr3$skin_symptoms)
Quantity_discr("В выборке в третьей группе втягивание соска при осмотре ",dfPatientDescribeGr3$nipple_retraction)
Quantity_discr("В выборке в третьей группе выделения из соска при осмотре ",dfPatientDescribeGr3$nipple_release)
Quantity_discr("В выборке в третьей группе тип плотности по ACR при осмотре ",dfPatientDescribeGr3$type_structure_acr)

Quantity_discr("В выборке в третьей группе квадрант локализации ",dfQuadrantGr3$quadrant)


######Description 4th group#######
escribir ("2.7 Описание пациенток в четвертой группе")

How_many(dfPersonalGr4$name_patient,"Пациенток в четвертой группе в исследование вошло")
Describe_numeric (dfPersonalGr4$age_patient, "возраста ","пациенток выборке в четвертой группе составил "," лет")
Describe_numeric (dfPersonalGr4$height_patient, "роста ","пациенток выборке в четвертой группе составил "," см")
Describe_numeric (dfPersonalGr4$weight_patient, "веса ","пациенток выборке в четвертой группе составил "," кг")

Quantity_discr("В выборке в четвертой группе были поставлены диагнозы ",dfDiagnosisGr4$diagnosis_primary)

Quantity_discr("В выборке в четвертой группе были выялены следующие жалобы ", dfСomplaintsGr4$complaints)

Quantity_discr("В выборке в четвертой группе репродуктивный статус был ",dfPersonalGr4$satus_reproductive)
Quantity_discr("В выборке в четвертой группе операций на молочной железе в анамнезе ",dfPersonalGr4$breast_surgery_before)
Quantity_discr("В выборке в четвертой группе прием гормональных препаратов ",dfPersonalGr4$hormonal_medications)
Quantity_discr("В выборке в четвертой группе генетическая предрасположенность ",dfPersonalGr4$genetics)
Quantity_discr("В выборке в четвертой группе было выявлена мутация BRCA ",dfPersonalGr4$mutation_brca)

Quantity_discr("В выборке в четвертой группе сторона поражения при осмотре ",dfPatientDescribeGr4$side)
Quantity_discr("В выборке в четвертой группе кожные симптомы при осмотре ",dfPatientDescribeGr4$skin_symptoms)
Quantity_discr("В выборке в четвертой группе втягивание соска при осмотре ",dfPatientDescribeGr4$nipple_retraction)
Quantity_discr("В выборке в четвертой группе выделения из соска при осмотре ",dfPatientDescribeGr4$nipple_release)
Quantity_discr("В выборке в четвертой группе тип плотности по ACR при осмотре ",dfPatientDescribeGr4$type_structure_acr)

Quantity_discr("В выборке в четвертой группе квадрант локализации ",dfQuadrantGr4$quadrant)

