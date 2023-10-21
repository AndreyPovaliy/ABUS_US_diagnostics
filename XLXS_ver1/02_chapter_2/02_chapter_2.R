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
escribir ("x.x Общее Описание пациенток, вошедших в исследование")
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
escribir ("### 2.5.1 Общее описание выборки пациенток до 40 лет")

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


escribir ("### 2.5.2 Описание групп в выборке пациенток до 40 лет")
How_many(dfXlsxGr1$name_patient,"В группу A")
How_many(dfXlsxGr3$name_patient,"В группу B")

chapter_3_4_text("Первичный диагноз ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$diagnosis_primary,
                 dfXlsxGr3$diagnosis_primary,
                 dfXlsxJun$diagnosis_primary,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$diagnosis_primary,dfXlsxJun$group_separation,"Первичный диагноз ")

chapter_3_4_text("Осложнение ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$complaints,
                 dfXlsxGr3$complaints,
                 dfXlsxJun$complaints,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$complaints,dfXlsxJun$group_separation,"Осложнение ")

chapter_3_4_text("Репродуктивный статус ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$satus_reproductive,
                 dfXlsxGr3$satus_reproductive,
                 dfXlsxJun$satus_reproductive,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$satus_reproductive,dfXlsxJun$group_separation,"Репродуктивный статус ")

chapter_3_4_text("Операции на молочной железе ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$breast_surgery_before,
                 dfXlsxGr3$breast_surgery_before,
                 dfXlsxJun$breast_surgery_before,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$breast_surgery_before,dfXlsxJun$group_separation,"Операции на молочной железе")

chapter_3_4_text("Прием гормональных препаратов ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$hormonal_medications,
                 dfXlsxGr3$hormonal_medications,
                 dfXlsxJun$hormonal_medications,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$hormonal_medications,dfXlsxJun$group_separation,"Прием гормональных препаратов ")

chapter_3_4_text("Генетика ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$genetics,
                 dfXlsxGr3$genetics,
                 dfXlsxJun$genetics,
                 dfXlsxJun$group_separation)

GeomBar(dfXlsxJun,dfXlsxJun$genetics,dfXlsxJun$group_separation,"Генетика ")

chapter_3_4_text("Мутация BRCA ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mutation_brca,
                 dfXlsxGr3$mutation_brca,
                 dfXlsxJun$mutation_brca,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$mutation_brca !="Оценка не проводилась")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$mutation_brca,dfXlsxJun_variable$group_separation,"Мутация BRCA ")

chapter_3_4_text("Сторона ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$side,
                 dfXlsxGr3$side,
                 dfXlsxJun$side,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$side !="не пальпируются")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$side,dfXlsxJun_variable$group_separation,"Сторона ")


chapter_3_4_text("Кожные симптомы ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$skin_symptoms,
                 dfXlsxGr3$skin_symptoms,
                 dfXlsxJun$skin_symptoms,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$skin_symptoms,dfXlsxJun$group_separation,"Кожные симптомы ")


chapter_3_4_text("Симптом втягивания соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_retraction,
                 dfXlsxGr3$nipple_retraction,
                 dfXlsxJun$nipple_retraction,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$nipple_retraction,dfXlsxJun$group_separation,"Симптом втягивания соска ")

chapter_3_4_text("Симптом выделения из соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_release,
                 dfXlsxGr3$nipple_release,
                 dfXlsxJun$nipple_release,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$nipple_release,dfXlsxJun$group_separation,"Симптом выделения из соска ")

chapter_3_4_text("Тип структуры ACR ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$type_structure_acr,
                 dfXlsxGr3$type_structure_acr,
                 dfXlsxJun$type_structure_acr,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$type_structure_acr,dfXlsxJun$group_separation,"Тип структуры ACR ")

chapter_3_4_text("Квадрант ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$quadrant,
                 dfXlsxGr3$quadrant,
                 dfXlsxJun$quadrant,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$quadrant !="нет")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$quadrant,dfXlsxJun_variable$group_separation,"Квадрант ")




######Description older group#######
escribir ("2.5.3 Общее описание выборки пациенток 40 лет и старше")

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



escribir ("### 2.5.4 Описание групп в выборке пациенток 40 лет с старше")
How_many(dfXlsxGr1$name_patient,"В группу C")
How_many(dfXlsxGr3$name_patient,"В группу D")

chapter_3_4_text("Первичный диагноз ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$diagnosis_primary,
                 dfXlsxGr4$diagnosis_primary,
                 dfXlsxSnr$diagnosis_primary,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$diagnosis_primary,dfXlsxSnr$group_separation,"Первичный диагноз ")

chapter_3_4_text("Осложнение ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$complaints,
                 dfXlsxGr4$complaints,
                 dfXlsxSnr$complaints,
                 dfXlsxSnr$group_separation)

GeomBar(dfXlsxSnr,dfXlsxSnr$complaints,dfXlsxSnr$group_separation,"Осложнение ")

chapter_3_4_text("Репродуктивный статус ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$satus_reproductive,
                 dfXlsxGr4$satus_reproductive,
                 dfXlsxSnr$satus_reproductive,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$satus_reproductive,dfXlsxSnr$group_separation,"Репродуктивный статус ")

chapter_3_4_text("Операции на молочной железе ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$breast_surgery_before,
                 dfXlsxGr4$breast_surgery_before,
                 dfXlsxSnr$breast_surgery_before,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$breast_surgery_before,dfXlsxSnr$group_separation,"Операции на молочной железе")

chapter_3_4_text("Прием гормональных препаратов ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$hormonal_medications,
                 dfXlsxGr4$hormonal_medications,
                 dfXlsxSnr$hormonal_medications,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$hormonal_medications,dfXlsxSnr$group_separation,"Прием гормональных препаратов ")

chapter_3_4_text("Генетика ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$genetics,
                 dfXlsxGr4$genetics,
                 dfXlsxSnr$genetics,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$genetics,dfXlsxSnr$group_separation,"Генетика ")

chapter_3_4_text("Мутация BRCA ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$mutation_brca,
                 dfXlsxGr4$mutation_brca,
                 dfXlsxSnr$mutation_brca,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$mutation_brca !="Оценка не проводилась")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$mutation_brca,dfXlsxSnr_variable$group_separation,"Мутация BRCA ")

chapter_3_4_text("Сторона ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$side,
                 dfXlsxGr4$side,
                 dfXlsxSnr$side,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$side !="не пальпируются")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$side,dfXlsxSnr_variable$group_separation,"Сторона ")


chapter_3_4_text("Кожные симптомы ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$skin_symptoms,
                 dfXlsxGr4$skin_symptoms,
                 dfXlsxSnr$skin_symptoms,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$skin_symptoms,dfXlsxSnr$group_separation,"Кожные симптомы ")


chapter_3_4_text("Симптом втягивания соска ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$nipple_retraction,
                 dfXlsxGr4$nipple_retraction,
                 dfXlsxSnr$nipple_retraction,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$nipple_retraction,dfXlsxSnr$group_separation,"Симптом втягивания соска ")

chapter_3_4_text("Симптом выделения из соска ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$nipple_release,
                 dfXlsxGr4$nipple_release,
                 dfXlsxSnr$nipple_release,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$nipple_release !="нет")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$nipple_release,dfXlsxSnr_variable$group_separation,"Симптом выделения из соска ")

chapter_3_4_text("Тип структуры ACR ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$type_structure_acr,
                 dfXlsxGr4$type_structure_acr,
                 dfXlsxSnr$type_structure_acr,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$type_structure_acr,dfXlsxSnr$group_separation,"Тип структуры ACR ")

chapter_3_4_text("Квадрант ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$quadrant,
                 dfXlsxGr4$quadrant,
                 dfXlsxSnr$quadrant,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$quadrant !="нет")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$quadrant,dfXlsxSnr_variable$group_separation,"Квадрант ")








