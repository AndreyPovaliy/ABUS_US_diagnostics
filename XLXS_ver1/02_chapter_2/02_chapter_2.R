# source("~/Статиьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)



######General description#######
escribir ("2.1 Общее Описание пациенток, вошедших в исследование")
How_many(dfXlsx$name_patient,"Всего в исследование вошло")
Describe_numeric (dfXlsx$age_patient, "возраста ","пациентов по всей выборке составил "," лет")
Describe_numeric (dfXlsx$height_patient, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (dfXlsx$weight_patient, "веса ","пациентов по всей выборке составил "," кг")

Quantity_discr("Во всей выборке были поставлены диагнозы ",dfXlsx$diagnosis_primary)

Quantity_discr("Во всей выборке были выялены следующие жалобы ", dfXlsx$complaints)

Quantity_discr("Во всей выборке репродуктивный статус был ",dfXlsx$satus_reproductive)
Quantity_discr("Во всей выборке операций на молочной железе в анамнезе ",dfXlsx$breast_surgery_before)
Quantity_discr("Во всей выборке прием гормональных препаратов ",dfXlsx$hormonal_medications)
Quantity_discr("Во всей выборке генетическая предрасположенность ",dfXlsx$genetics)
Quantity_discr("Во всей выборке было выявлена мутация BRCA ",dfXlsx$mutation_brca)

Quantity_discr("Во всей выборке сторона поражения при осмотре ",dfXlsx$side)
Quantity_discr("Во всей выборке кожные симптомы при осмотре ",dfXlsx$skin_symptoms)
Quantity_discr("Во всей выборке втягивание соска при осмотре ",dfXlsx$nipple_retractionn)
Quantity_discr("Во всей выборке выделения из соска при осмотре ",dfXlsx$nipple_release)
Quantity_discr("Во всей выборке тип плотности по ACR при осмотре ",dfXlsx$type_structure_ACR)

Quantity_discr("Во всей выборке квадрант локализации ",dfXlsx$quadrant)


pvalueQualitativeText(dfXlsx$diagnosis_primary,dfXlsx$group_separation,"по первичному диагнозу")
pvalueQualitativeText(dfXlsx$complaints,dfXlsx$group_separation,"по выявленным жалобам")
pvalueQualitativeText(dfXlsx$satus_reproductive,dfXlsx$group_separation,"по репродуктивному статусу")
pvalueQualitativeText(dfXlsx$breast_surgery_before,dfXlsx$group_separation,"по операциям в анамнезе")
pvalueQualitativeText(dfXlsx$hormonal_medications,dfXlsx$group_separation,"по приему гормональных препаратов")
pvalueQualitativeText(dfXlsx$genetics,dfXlsx$group_separation,"по генетической предрасположенности")
pvalueQualitativeText(dfXlsx$mutation_brca,dfXlsx$group_separation,"по выявлению мутации BRCA")

pvalueQualitativeText(dfXlsx$side,dfXlsx$group_separation,"по стороне поражения")
pvalueQualitativeText(dfXlsx$skin_symptoms,dfXlsx$group_separation,"по кожным симптомам")
pvalueQualitativeText(dfXlsx$nipple_retraction,dfXlsx$group_separation,"по симптому втягивания соска")
pvalueQualitativeText(dfXlsx$nipple_release,dfXlsx$group_separation,"по симптому выделениям из соска")
pvalueQualitativeText(dfXlsx$type_structure_acr,dfXlsx$group_separation,"по типу плотности по ACR при осмотре")

pvalueQualitativeText(dfXlsx$quadrant,dfXlsx$group_separation,"по квадранту локализации")




######Description younger group#######
escribir ("2.2 Описание пациенток до 40 лет")

How_many(dfXlsxJun$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxJun$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxJun$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxJun$age_patient), "лет"))



Describe_numeric (dfXlsxJun$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxJun$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

Quantity_discr("В выборке до 40 лет были поставлены диагнозы ",dfXlsxJun$diagnosis_primary)

Quantity_discr("В выборке до 40 лет были выялены следующие жалобы ", dfXlsxJun$complaints)

Quantity_discr("В выборке до 40 лет репродуктивный статус был ",dfXlsxJun$satus_reproductive)
Quantity_discr("В выборке до 40 лет операций на молочной железе в анамнезе ",dfXlsxJun$breast_surgery_before)
Quantity_discr("В выборке до 40 лет прием гормональных препаратов ",dfXlsxJun$hormonal_medications)
Quantity_discr("В выборке до 40 лет генетическая предрасположенность ",dfXlsxJun$genetics)
Quantity_discr("В выборке до 40 лет было выявлена мутация BRCA ",dfXlsxJun$mutation_brca)

Quantity_discr("В выборке до 40 лет сторона поражения при осмотре ",dfXlsxJun$side)
Quantity_discr("В выборке до 40 лет кожные симптомы при осмотре ",dfXlsxJun$skin_symptoms)
Quantity_discr("В выборке до 40 лет втягивание соска при осмотре ",dfXlsxJun$nipple_retraction)
Quantity_discr("В выборке до 40 лет выделения из соска при осмотре ",dfXlsxJun$nipple_release)
Quantity_discr("В выборке до 40 лет тип плотности по ACR при осмотре ",dfXlsxJun$type_structure_acr)

Quantity_discr("В выборке до 40 лет квадрант локализации ",dfXlsxJun$quadrant)





######Description older group#######
escribir ("2.3 Описание пациенток после 40 лет")




How_many(dfXlsxSnr$name_patient,"Пациенток после 40 лет в исследование вошло")



Describe_numeric (dfXlsxSnr$age_patient, "возраста ","пациенток выборке после 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxSnr$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxSnr$age_patient), "лет"))
Describe_numeric (dfXlsxSnr$height_patient, "роста ","пациенток выборке после 40 лет составил "," см")
Describe_numeric (dfXlsxSnr$weight_patient, "веса ","пациенток выборке после 40 лет составил "," кг")

Quantity_discr("В выборке после 40 лет были поставлены диагнозы ",dfXlsxSnr$diagnosis_primary)

Quantity_discr("В выборке после 40 лет были выялены следующие жалобы ", dfXlsxSnr$complaints)

Quantity_discr("В выборке после 40 лет репродуктивный статус был ",dfXlsxSnr$satus_reproductive)
Quantity_discr("В выборке после 40 лет операций на молочной железе в анамнезе ",dfXlsxSnr$breast_surgery_before)
Quantity_discr("В выборке после 40 лет прием гормональных препаратов ",dfXlsxSnr$hormonal_medications)
Quantity_discr("В выборке после 40 лет генетическая предрасположенность ",dfXlsxSnr$genetics)
Quantity_discr("В выборке после 40 лет было выявлена мутация BRCA ",dfXlsxSnr$mutation_brca)

Quantity_discr("В выборке после 40 лет сторона поражения при осмотре ",dfXlsxSnr$side)
Quantity_discr("В выборке после 40 лет кожные симптомы при осмотре ",dfXlsxSnr$skin_symptoms)
Quantity_discr("В выборке после 40 лет втягивание соска при осмотре ",dfXlsxSnr$nipple_retraction)
Quantity_discr("В выборке после 40 лет выделения из соска при осмотре ",dfXlsxSnr$nipple_release)
Quantity_discr("В выборке после 40 лет тип плотности по ACR при осмотре ",dfXlsxSnr$type_structure_acr)

Quantity_discr("В выборке после 40 лет квадрант локализации ",dfXlsxSnr$quadrant)




######Description 1st group#######
escribir ("2.4 Описание пациенток в первой группе")

How_many(dfXlsxGr1$name_patient,"Пациенток в первой группе в исследование вошло")
Describe_numeric (dfXlsxGr1$age_patient, "возраста ","пациенток выборке в первой группе составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxGr1$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr1$age_patient), "лет"))
Describe_numeric (dfXlsxGr1$height_patient, "роста ","пациенток выборке в первой группе составил "," см")
Describe_numeric (dfXlsxGr1$weight_patient, "веса ","пациенток выборке в первой группе составил "," кг")



######Description 2nd group#######
escribir ("2.5 Описание пациенток во второй группе")

How_many(dfXlsxGr2$name_patient,"Пациенток в второй группе в исследование вошло")
Describe_numeric (dfXlsxGr2$age_patient, "возраста ","пациенток выборке в второй группе составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxGr2$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr2$age_patient), "лет"))
Describe_numeric (dfXlsxGr2$height_patient, "роста ","пациенток выборке в второй группе составил "," см")
Describe_numeric (dfXlsxGr2$weight_patient, "веса ","пациенток выборке в второй группе составил "," кг")

Quantity_discr("В выборке в второй группе были поставлены диагнозы ",dfXlsxGr2$diagnosis_primary)
Quantity_discr("В выборке в второй группе были выялены следующие жалобы ", dfXlsxGr2$complaints)
Quantity_discr("В выборке в второй группе репродуктивный статус был ",dfXlsxGr2$satus_reproductive)
Quantity_discr("В выборке в второй группе операций на молочной железе в анамнезе ",dfXlsxGr2$breast_surgery_before)
Quantity_discr("В выборке в второй группе прием гормональных препаратов ",dfXlsxGr2$hormonal_medications)
Quantity_discr("В выборке в второй группе генетическая предрасположенность ",dfXlsxGr2$genetics)
Quantity_discr("В выборке в второй группе было выявлена мутация BRCA ",dfXlsxGr2$mutation_brca)
Quantity_discr("В выборке в второй группе сторона поражения при осмотре ",dfXlsxGr2$side)
Quantity_discr("В выборке в второй группе кожные симптомы при осмотре ",dfXlsxGr2$skin_symptoms)
Quantity_discr("В выборке в второй группе втягивание соска при осмотре ",dfXlsxGr2$nipple_retraction)
Quantity_discr("В выборке в второй группе выделения из соска при осмотре ",dfXlsxGr2$nipple_release)
Quantity_discr("В выборке в второй группе тип плотности по ACR при осмотре ",dfXlsxGr2$type_structure_acr)
Quantity_discr("В выборке в второй группе квадрант локализации ",dfXlsxGr2$quadrant)




######Description 3rd group#######
escribir ("2.6 Описание пациенток в третьей группе")


How_many(dfXlsxGr3$name_patient,"Пациенток в третьей группе в исследование вошло")
Describe_numeric (dfXlsxGr3$age_patient, "возраста ","пациенток выборке в третьей группе составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxGr3$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr3$age_patient), "лет"))
Describe_numeric (dfXlsxGr3$height_patient, "роста ","пациенток выборке в третьей группе составил "," см")
Describe_numeric (dfXlsxGr3$weight_patient, "веса ","пациенток выборке в третьей группе составил "," кг")

Quantity_discr("В выборке в третьей группе были поставлены диагнозы ",dfXlsxGr3$diagnosis_primary)

Quantity_discr("В выборке в третьей группе были выялены следующие жалобы ", dfXlsxGr3$complaints)

Quantity_discr("В выборке в третьей группе репродуктивный статус был ",dfXlsxGr3$satus_reproductive)
Quantity_discr("В выборке в третьей группе операций на молочной железе в анамнезе ",dfXlsxGr3$breast_surgery_before)
Quantity_discr("В выборке в третьей группе прием гормональных препаратов ",dfXlsxGr3$hormonal_medications)
Quantity_discr("В выборке в третьей группе генетическая предрасположенность ",dfXlsxGr3$genetics)
Quantity_discr("В выборке в третьей группе было выявлена мутация BRCA ",dfXlsxGr3$mutation_brca)

Quantity_discr("В выборке в третьей группе сторона поражения при осмотре ",dfXlsxGr3$side)
Quantity_discr("В выборке в третьей группе кожные симптомы при осмотре ",dfXlsxGr3$skin_symptoms)
Quantity_discr("В выборке в третьей группе втягивание соска при осмотре ",dfXlsxGr3$nipple_retraction)
Quantity_discr("В выборке в третьей группе выделения из соска при осмотре ",dfXlsxGr3$nipple_release)
Quantity_discr("В выборке в третьей группе тип плотности по ACR при осмотре ",dfXlsxGr3$type_structure_acr)

Quantity_discr("В выборке в третьей группе квадрант локализации ",dfXlsxGr3$quadrant)


######Description 4th group#######
escribir ("2.7 Описание пациенток в четвертой группе")

How_many(dfXlsxGr4$name_patient,"Пациенток в четвертой группе в исследование вошло")
Describe_numeric (dfXlsxGr4$age_patient, "возраста ","пациенток выборке в четвертой группе составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxGr4$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr4$age_patient), "лет"))
Describe_numeric (dfXlsxGr4$height_patient, "роста ","пациенток выборке в четвертой группе составил "," см")
Describe_numeric (dfXlsxGr4$weight_patient, "веса ","пациенток выборке в четвертой группе составил "," кг")

Quantity_discr("В выборке в четвертой группе были поставлены диагнозы ",dfXlsxGr4$diagnosis_primary)

Quantity_discr("В выборке в четвертой группе были выялены следующие жалобы ", dfXlsxGr4$complaints)

Quantity_discr("В выборке в четвертой группе репродуктивный статус был ",dfXlsxGr4$satus_reproductive)
Quantity_discr("В выборке в четвертой группе операций на молочной железе в анамнезе ",dfXlsxGr4$breast_surgery_before)
Quantity_discr("В выборке в четвертой группе прием гормональных препаратов ",dfXlsxGr4$hormonal_medications)
Quantity_discr("В выборке в четвертой группе генетическая предрасположенность ",dfXlsxGr4$genetics)
Quantity_discr("В выборке в четвертой группе было выявлена мутация BRCA ",dfXlsxGr4$mutation_brca)

Quantity_discr("В выборке в четвертой группе сторона поражения при осмотре ",dfXlsxGr4$side)
Quantity_discr("В выборке в четвертой группе кожные симптомы при осмотре ",dfXlsxGr4$skin_symptoms)
Quantity_discr("В выборке в четвертой группе втягивание соска при осмотре ",dfXlsxGr4$nipple_retraction)
Quantity_discr("В выборке в четвертой группе выделения из соска при осмотре ",dfXlsxGr4$nipple_release)
Quantity_discr("В выборке в четвертой группе тип плотности по ACR при осмотре ",dfXlsxGr4$type_structure_acr)

Quantity_discr("В выборке в четвертой группе квадрант локализации ",dfXlsxGr4$quadrant)






# Tables|Plots|Compare -------------------------------------------------------------------

######Compare younger group#######

pvalueParaWxText(dfXlsxJun,dfXlsxJun$age_patient,dfXlsxJun$group_separation,"по возрасту")

# dfXlsxJun_variable <- subset(dfXlsxJun,
#                              dfXlsxJun$diagnosis_primary =="Рак"|
#                                dfXlsxJun$diagnosis_primary =="Без патологии"
#                              )
# 
# 
# pvalueQualitativeText(dfXlsxJun_variable$diagnosis_primary,dfXlsxJun_variable$group_separation,"по первичному диагнозу в выборке до 40")

pvalueQualitativeText(dfXlsxJun$diagnosis_primary,dfXlsxJun$group_separation,"по первичному диагнозу в выборке до 40")
pvalueQualitativeText(dfXlsxJun$complaints,dfXlsxJun$group_separation,"по выявленным жалобам в выборке до 40")
pvalueQualitativeText(dfXlsxJun$satus_reproductive,dfXlsxJun$group_separation,"по репродуктивному статусу в выборке до 40")
pvalueQualitativeText(dfXlsxJun$breast_surgery_before,dfXlsxJun$group_separation,"по операциям в анамнезе в выборке до 40")
pvalueQualitativeText(dfXlsxJun$hormonal_medications,dfXlsxJun$group_separation,"по приему гормональных препаратов в выборке до 40")
pvalueQualitativeText(dfXlsxJun$genetics,dfXlsxJun$group_separation,"по генетической предрасположенности в выборке до 40")
pvalueQualitativeText(dfXlsxJun$mutation_brca,dfXlsxJun$group_separation,"по выявлению мутации BRCA в выборке до 40")
pvalueQualitativeText(dfXlsxJun$side,dfXlsxJun$group_separation,"по стороне поражения в выборке до 40") 
# pvalueQualitativeText(dfXlsxJun$skin_symptoms,dfXlsxJun$group_separation,"по кожным симптомам в выборке до 40")
# Note BENE!
escribir("Разница между группами по кожным симптомам  составила 1.")
pvalueQualitativeText(dfXlsxJun$nipple_retraction,dfXlsxJun$group_separation,"по симптому втягивания соска в выборке до 40")
pvalueQualitativeText(dfXlsxJun$nipple_release,dfXlsxJun$group_separation,"по симптому выделениям из соска в выборке до 40")
pvalueQualitativeText(dfXlsxJun$type_structure_acr,dfXlsxJun$group_separation,"по типу плотности по ACR при осмотре в выборке до 40")
pvalueQualitativeText(dfXlsxJun$quadrant,dfXlsxJun$group_separation,"по квадранту локализации в выборке до 40")


GeomBar(dfXlsxJun,dfXlsxJun$diagnosis_primary,dfXlsxJun$group_separation,"Диагноз")
GeomBar(dfXlsxJun,dfXlsxJun$complaints,dfXlsxJun$group_separation,"Жалобы")
GeomBar(dfXlsxJun,dfXlsxJun$satus_reproductive,dfXlsxJun$group_separation,"Репродуктивный статус")
GeomBar(dfXlsxJun,dfXlsxJun$breast_surgery_before,dfXlsxJun$group_separation,"Операции на МЖ")
GeomBar(dfXlsxJun,dfXlsxJun$hormonal_medications,dfXlsxJun$group_separation,"Гормональные препараты")
GeomBar(dfXlsxJun,dfXlsxJun$genetics,dfXlsxJun$group_separation,"Генетическая предрасположенность")
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$mutation_brca !="Оценка не проводилась")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$mutation_brca,dfXlsxJun_variable$group_separation,"Мутация BRCA")
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$side !="не пальпируются")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$side,dfXlsxJun_variable$group_separation,"Сторона поражения")
# dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$skin_symptoms !="нет")
# GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$skin_symptoms,dfXlsxJun_variable$group_separation,"Кожные симптомы")
# Note BENE!
GeomBar(dfXlsxJun,dfXlsxJun$nipple_retraction,dfXlsxJun$group_separation,"Втягивание соска")
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$nipple_release !="нет")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$nipple_release,dfXlsxJun_variable$group_separation,"Выделения из соска")
GeomBar(dfXlsxJun,dfXlsxJun$type_structure_acr,dfXlsxJun$group_separation,"Структрура ACR")
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$quadrant !="нет")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$quadrant,dfXlsxJun_variable$group_separation,"Квадрант")

Quantity_table("Диагноз",dfXlsxGr1$diagnosis_primary,dfXlsxGr3$diagnosis_primary)
Quantity_table("Жалобы",dfXlsxGr1$complaints,dfXlsxGr3$complaints)
Quantity_table("Репродуктивный статус",dfXlsxGr1$satus_reproductive,dfXlsxGr3$satus_reproductive)
Quantity_table("Операции на МЖ",dfXlsxGr1$breast_surgery_before,dfXlsxGr3$breast_surgery_before)
Quantity_table("Гормональные препараты",dfXlsxGr1$hormonal_medications,dfXlsxGr3$hormonal_medications)
Quantity_table("Генетическая предрасположенность",dfXlsxGr1$genetics,dfXlsxGr3$genetics)
Quantity_table("Мутация BRCA",dfXlsxGr1$mutation_brca,dfXlsxGr3$mutation_brca)
Quantity_table("Сторона поражения",dfXlsxGr1$side,dfXlsxGr3$side)
#Quantity_table("Кожные симптомы",dfXlsxGr1$skin_symptoms,dfXlsxGr3$skin_symptoms)
Quantity_table("Втягивание соска",dfXlsxGr1$nipple_retraction,dfXlsxGr3$nipple_retraction)
Quantity_table("Выделения из соска",dfXlsxGr1$nipple_release,dfXlsxGr3$nipple_release)
Quantity_table("Структрура ACR",dfXlsxGr1$type_structure_acr,dfXlsxGr3$type_structure_acr)
Quantity_table("Квадрант",dfXlsxGr1$quadrant,dfXlsxGr3$quadrant)

######Compare older group#######

pvalueQualitativeText(dfXlsxSnr$diagnosis_primary,dfXlsxSnr$group_separation,"по первичному диагнозу в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$complaints,dfXlsxSnr$group_separation,"по выявленным жалобам в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$satus_reproductive,dfXlsxSnr$group_separation,"по репродуктивному статусу в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$breast_surgery_before,dfXlsxSnr$group_separation,"по операциям в анамнезе в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$hormonal_medications,dfXlsxSnr$group_separation,"по приему гормональных препаратов в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$genetics,dfXlsxSnr$group_separation,"по генетической предрасположенности в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$mutation_brca,dfXlsxSnr$group_separation,"по выявлению мутации BRCA в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$side,dfXlsxSnr$group_separation,"по стороне поражения в выборке после 40") 
pvalueQualitativeText(dfXlsxSnr$skin_symptoms,dfXlsxSnr$group_separation,"по кожным симптомам в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$nipple_retraction,dfXlsxSnr$group_separation,"по симптому втягивания соска в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$nipple_release,dfXlsxSnr$group_separation,"по симптому выделениям из соска в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$type_structure_acr,dfXlsxSnr$group_separation,"по типу плотности по ACR при осмотре в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$quadrant,dfXlsxSnr$group_separation,"по квадранту локализации в выборке после 40")

GeomBar(dfXlsxSnr,dfXlsxSnr$diagnosis_primary,dfXlsxSnr$group_separation,"Диагноз")
GeomBar(dfXlsxSnr,dfXlsxSnr$complaints,dfXlsxSnr$group_separation,"Жалобы")
GeomBar(dfXlsxSnr,dfXlsxSnr$satus_reproductive,dfXlsxSnr$group_separation,"Репродуктивный статус")
GeomBar(dfXlsxSnr,dfXlsxSnr$breast_surgery_before,dfXlsxSnr$group_separation,"Операции на МЖ")
GeomBar(dfXlsxSnr,dfXlsxSnr$hormonal_medications,dfXlsxSnr$group_separation,"Гормональные препараты")
GeomBar(dfXlsxSnr,dfXlsxSnr$genetics,dfXlsxSnr$group_separation,"Генетическая предрасположенность")
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$mutation_brca !="Оценка не проводилась")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$mutation_brca,dfXlsxSnr_variable$group_separation,"Мутация BRCA")
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$side !="не пальпируются")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$side,dfXlsxSnr_variable$group_separation,"Сторона поражения")
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$skin_symptoms !="нет")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$skin_symptoms,dfXlsxSnr_variable$group_separation,"Кожные симптомы")
GeomBar(dfXlsxSnr,dfXlsxSnr$nipple_retraction,dfXlsxSnr$group_separation,"Втягивание соска")
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$nipple_release !="нет")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$nipple_release,dfXlsxSnr_variable$group_separation,"Выделения из соска")
GeomBar(dfXlsxSnr,dfXlsxSnr$type_structure_acr,dfXlsxSnr$group_separation,"Структрура ACR")
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$quadrant !="нет")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$quadrant,dfXlsxSnr_variable$group_separation,"Квадрант")


Quantity_table("Диагноз",dfXlsxGr2$diagnosis_primary,dfXlsxGr4$diagnosis_primary)
Quantity_table("Жалобы",dfXlsxGr2$complaints,dfXlsxGr4$complaints)
Quantity_table("Репродуктивный статус",dfXlsxGr2$satus_reproductive,dfXlsxGr4$satus_reproductive)
Quantity_table("Операции на МЖ",dfXlsxGr2$breast_surgery_before,dfXlsxGr4$breast_surgery_before)
Quantity_table("Гормональные препараты",dfXlsxGr2$hormonal_medications,dfXlsxGr4$hormonal_medications)
Quantity_table("Генетическая предрасположенность",dfXlsxGr2$genetics,dfXlsxGr4$genetics)
Quantity_table("Мутация BRCA",dfXlsxGr2$mutation_brca,dfXlsxGr4$mutation_brca)
Quantity_table("Сторона поражения",dfXlsxGr2$side,dfXlsxGr4$side)
Quantity_table("Кожные симптомы",dfXlsxGr2$skin_symptoms,dfXlsxGr4$skin_symptoms)
Quantity_table("Втягивание соска",dfXlsxGr2$nipple_retraction,dfXlsxGr4$nipple_retraction)
Quantity_table("Выделения из соска",dfXlsxGr2$nipple_release,dfXlsxGr4$nipple_release)
Quantity_table("Структрура ACR",dfXlsxGr2$type_structure_acr,dfXlsxGr4$type_structure_acr)
Quantity_table("Квадрант",dfXlsxGr2$quadrant,dfXlsxGr4$quadrant)
