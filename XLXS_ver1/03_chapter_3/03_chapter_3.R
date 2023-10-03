#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
library(caret)


# gr_US
# gr_US_ABUS




#####General#######
######US#######
escribir ("##3.1 Общее Описание результатов исследования УЗИ в выборке до 40 лет ")
How_many(dfXlsxJun$name_patient,"Всего в исследование вошло")
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кожа была ",dfXlsxJun$us_skin)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ протоки были ",dfXlsxJun$us_ducts)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ фон был ",dfXlsxJun$us_background)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование находилось ",dfXlsxJun$us_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование было ",dfXlsxJun$us_form)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ размер узла ",dfXlsxJun$us_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ контуры узлов были ",dfXlsxJun$us_nodle_contour)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ эхогенность образования былы ",dfXlsxJun$us_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ структура узла ",dfXlsxJun$us_structure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кровоток в образовании ",dfXlsxJun$us_formation_blood_flow)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ элатография ",dfXlsxJun$us_elastography)   
Quantity_discr("В выборке до 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxJun$us_region_lymph_nodes)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfXlsxJun$us_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ количество узлов было ",dfXlsxJun$us_number_nodles)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз ",dfXlsxJun$us_diagnosis)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfXlsxJun$us_calcinates_micro_pure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз рак ",dfXlsxJun$us_is_tumor)



######MMG#######
# Quantity_discr("В выборке до 40 лет при выполнении ММГ кожа ",dfXlsxJun$mmg_conclusion_skin)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ ареола ",dfXlsxJun$mmg_areola)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ сосок ",dfXlsxJun$mmg_nipple)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ фон ",dfXlsxJun$mmg_background_breast)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ узлы ",dfXlsxJun$mmg_nodle)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ контур узлов ",dfXlsxJun$mmg_nodle_contour)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ размер узлов ",dfXlsxJun$mmg_nodle_size)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ кальцификаты ",dfMmgCalcificationsJun$mmg_calcifications)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ количество визуализыруемых образований ",dfXlsxJun$mmg_number_formations_visualized)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ подмышечные лимфоузлы ",dfXlsxJun$mmg_axillary_lymph_nodes)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ количество узлов ",dfXlsxJun$mmg_number_nodles)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ категория BIRADS ",dfXlsxJun$mmg_category_birads)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ заключение ММГ ",dfXlsxJun$mmg_conclusion)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ поставлен рак ",dfXlsxJun$mmg_is_tumor)


######ABUS#######
Quantity_discr("В выборке до 40 лет при выполнении ABUS кожа была ",dfXlsxJun$abus_skin)
Quantity_discr("В выборке до 40 лет при выполнении ABUS размеры узлов были ",dfXlsxJun$abus_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении ABUS контуры узлов были ",dfXlsxJun$abus_nodle_contours)
Quantity_discr("В выборке до 40 лет при выполнении ABUS эхогенность образования ",dfXlsxJun$abus_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении ABUS структура узлов ",dfXlsxJun$abus_structure)
Quantity_discr("В выборке до 40 лет при выполнении ABUS симптом ретракции ",dfXlsxJun$abus_symptom_retraction)
Quantity_discr("В выборке до 40 лет при выполнении ABUS была установлена категория BIRADS ",dfXlsxJun$abus_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении ABUS количество узлов ",dfXlsxJun$abus_number_nodles )
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз ",dfXlsxJun$abus_diagnosis)
Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfXlsxJun$abus_calcinates)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз рак ",dfXlsxJun$abus_is_tumor)


######MRSI#######
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",dfXlsxJun$mrsi_data)
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",dfXlsxJun$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В выборке до 40 лет была морфологическая структура  ",dfXlsxJun$tumor_morphology_structure)
Quantity_discr("В выборке до 40 лет при выполнении цитологии было заключение  ",dfXlsxJun$cytological_conclusion)
Quantity_discr("В выборке до 40 лет был определен уровень злокачественности  ",dfXlsxJun$degree_malignancy)
Quantity_discr("В выборке до 40 лет был определены рецеторы  ",dfXlsxJun$tumor_receptors)
Quantity_discr("В выборке до 40 лет гистологически поставлен рак  ",dfXlsxJun$hist_is_tumor)




#####Comparison#######
######US#######
escribir ("##3.2 Характеристика результатов по группам")
How_many(dfXlsxGr1$name_patient,"В группу A")
How_many(dfXlsxGr3$name_patient,"В группу B")

escribir ("*Исследование УЗИ*")
chapter_3_4_text("Кожа при выполнении УЗИ",
                  "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_skin,
                 dfXlsxGr3$us_skin,
                 dfXlsxJun$us_skin,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_skin,dfXlsxJun$group_separation,"Кожа при выполнении УЗИ")
chapter_3_4_text("Протоки при выполнении УЗИ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_ducts,
                 dfXlsxGr3$us_ducts,
                 dfXlsxJun$us_ducts,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_ducts,dfXlsxJun$group_separation,"Протоки при выполнении УЗИ")
chapter_3_4_text("УЗ-фон",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_background,
                 dfXlsxGr3$us_background,
                 dfXlsxJun$us_background,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_background,dfXlsxJun$group_separation,"УЗ-фон")

chapter_3_4_text("Образование находилось",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_formation,
                 dfXlsxGr3$us_formation,
                 dfXlsxJun$us_formation,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_formation,dfXlsxJun$group_separation,"Образование находилось")

chapter_3_4_text("Форма образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_form,
                 dfXlsxGr3$us_form,
                 dfXlsxJun$us_form,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_form,dfXlsxJun$group_separation,"Форма образования")

chapter_3_4_text("Размер образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_nodle_size,
                 dfXlsxGr3$us_nodle_size,
                 dfXlsxJun$us_nodle_size,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_nodle_size,dfXlsxJun$group_separation,"Размер образования")

chapter_3_4_text("Края образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_nodle_contour,
                 dfXlsxGr3$us_nodle_contour,
                 dfXlsxJun$us_nodle_contour,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_nodle_contour,dfXlsxJun$group_separation,"Края образования")

chapter_3_4_text("Эхогенность образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_echogenicity_formation,
                 dfXlsxGr3$us_echogenicity_formation,
                 dfXlsxJun$us_echogenicity_formation,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_echogenicity_formation,dfXlsxJun$group_separation,"Эхогенность образования")

chapter_3_4_text("УЗ-структура образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_structure,
                 dfXlsxGr3$us_structure,
                 dfXlsxJun$us_structure,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_structure,dfXlsxJun$group_separation,"УЗ-структура образования")

chapter_3_4_text("Количество узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_number_nodles,
                 dfXlsxGr3$us_number_nodles,
                 dfXlsxJun$us_number_nodles,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_number_nodles,dfXlsxJun$group_separation,"Количество узлов")

chapter_3_4_text("Кровоток в образовании",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_formation_blood_flow,
                 dfXlsxGr3$us_formation_blood_flow,
                 dfXlsxJun$us_formation_blood_flow,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_formation_blood_flow,dfXlsxJun$group_separation,"Кровоток в образовании")

chapter_3_4_text("Эластография",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_elastography,
                 dfXlsxGr3$us_elastography,
                 dfXlsxJun$us_elastography,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_elastography,dfXlsxJun$group_separation,"Эластография")

chapter_3_4_text("Увеличение регинарных лимфоузлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_region_lymph_nodes,
                 dfXlsxGr3$us_region_lymph_nodes,
                 dfXlsxJun$us_region_lymph_nodes,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_region_lymph_nodes,dfXlsxJun$group_separation,"Увеличение регинарных лимфоузлов")

chapter_3_4_text("Категория BI-RADS",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_category_birads,
                 dfXlsxGr3$us_category_birads,
                 dfXlsxJun$us_category_birads,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_category_birads,dfXlsxJun$group_separation,"Категория BI-RADS")


chapter_3_4_text("УЗ-диагноз",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_diagnosis,
                 dfXlsxGr3$us_diagnosis,
                 dfXlsxJun$us_diagnosis,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_diagnosis,dfXlsxJun$group_separation,"УЗ-диагноз")

chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_calcinates_micro_pure,
                 dfXlsxGr3$us_calcinates_micro_pure,
                 dfXlsxJun$us_calcinates_micro_pure,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_calcinates_micro_pure,dfXlsxJun$group_separation,"Кальцинаты")

chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_is_tumor,
                 dfXlsxGr3$us_is_tumor,
                 dfXlsxJun$us_is_tumor,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_is_tumor,dfXlsxJun$group_separation,"УЗ диагноз злокачественное образование")






######MMG#######
escribir ("*Исследование ММГ*")
chapter_3_4_text("Кожа",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_conclusion_skin,
                 dfXlsxGr3$mmg_conclusion_skin,
                 dfXlsxJun$mmg_conclusion_skin,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_conclusion_skin,dfXlsxJun$group_separation,"Кожа")

chapter_3_4_text("Ареола",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_areola,
                 dfXlsxGr3$mmg_areola,
                 dfXlsxJun$mmg_areola,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_areola,dfXlsxJun$group_separation,"Ареола")

chapter_3_4_text("Сосок",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_nipple,
                 dfXlsxGr3$mmg_nipple,
                 dfXlsxJun$mmg_nipple,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_nipple,dfXlsxJun$group_separation,"Сосок")

chapter_3_4_text("ММГ-фон",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_background_breast,
                 dfXlsxGr3$mmg_background_breast,
                 dfXlsxJun$mmg_background_breast,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_background_breast,dfXlsxJun$group_separation,"ММГ-фон")

chapter_3_4_text("Узлы",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_nodle,
                 dfXlsxGr3$mmg_nodle,
                 dfXlsxJun$mmg_nodle,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_nodle,dfXlsxJun$group_separation,"Узлы")

chapter_3_4_text("Края узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_nodle_contour,
                 dfXlsxGr3$mmg_nodle_contour,
                 dfXlsxJun$mmg_nodle_contour,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_nodle_contour,dfXlsxJun$group_separation,"Края узлов")

chapter_3_4_text("Размер узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_nodle_contour,
                 dfXlsxGr3$mmg_nodle_contour,
                 dfXlsxJun$mmg_nodle_contour,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_nodle_contour,dfXlsxJun$group_separation,"Размер узлов")

chapter_3_4_text("Кальльцификаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_calcifications,
                 dfXlsxGr3$mmg_calcifications,
                 dfXlsxJun$mmg_calcifications,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_calcifications,dfXlsxJun$group_separation,"Кальльцификаты")

chapter_3_4_text("Количество визуализируемых узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_number_formations_visualized,
                 dfXlsxGr3$mmg_number_formations_visualized,
                 dfXlsxJun$mmg_number_formations_visualized,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_number_formations_visualized,dfXlsxJun$group_separation,"Кальльцификаты")

chapter_3_4_text("Количество узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_number_nodles,
                 dfXlsxGr3$mmg_number_nodles,
                 dfXlsxJun$mmg_number_nodles,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_number_nodles,dfXlsxJun$group_separation,"Подмышечные лимфоузлы")

chapter_3_4_text("Подмышечные лимфоузлы",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_axillary_lymph_nodes,
                 dfXlsxGr3$mmg_axillary_lymph_nodes,
                 dfXlsxJun$mmg_axillary_lymph_nodes,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_axillary_lymph_nodes,dfXlsxJun$group_separation,"Подмышечные лимфоузлы")

chapter_3_4_text("Категория BI-RADS",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_category_birads,
                 dfXlsxGr3$mmg_category_birads,
                 dfXlsxJun$mmg_category_birads,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_category_birads,dfXlsxJun$group_separation,"Категория BI-RADS")


chapter_3_4_text("ММГ заключение",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_conclusion,
                 dfXlsxGr3$mmg_conclusion,
                 dfXlsxJun$mmg_conclusion,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_conclusion,dfXlsxJun$group_separation,"ММГ заключение")

chapter_3_4_text("ММГ диагноз злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mmg_is_tumor,
                 dfXlsxGr3$mmg_is_tumor,
                 dfXlsxJun$mmg_is_tumor,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mmg_is_tumor,dfXlsxJun$group_separation,"ММГ диагноз злокачественное образование")






######MRSI#######
escribir ("*Исследование МРТ*")
chapter_3_4_text("Данные МРТ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mrsi_data,
                 dfXlsxGr3$mrsi_data,
                 dfXlsxJun$mrsi_data,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mrsi_data,dfXlsxJun$group_separation,"Данные МРТ")

chapter_3_4_text("Количество узлов на МРТ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mrsi_number_nodles,
                 dfXlsxGr3$mrsi_number_nodles,
                 dfXlsxJun$mrsi_number_nodles,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$mrsi_number_nodles,dfXlsxJun$group_separation,"Количество узлов на МРТ")



######Tumor#######
escribir ("*Гистологическая оценка*")

chapter_3_4_text("Морфологическая структура",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$tumor_morphology_structure,
                 dfXlsxGr3$tumor_morphology_structure,
                 dfXlsxJun$tumor_morphology_structure,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$tumor_morphology_structure !="не проводилось")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$tumor_morphology_structure,dfXlsxJun_variable$group_separation,"Морфологическая структура")


chapter_3_4_text("Цитологическое заключение",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$cytological_conclusion,
                 dfXlsxGr3$cytological_conclusion,
                 dfXlsxJun$cytological_conclusion,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$cytological_conclusion !="не проводилось")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$cytological_conclusion,dfXlsxJun_variable$group_separation,"Цитологическое заключение")

chapter_3_4_text("Рецепторы опухоли",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$tumor_receptors,
                 dfXlsxGr3$tumor_receptors,
                 dfXlsxJun$tumor_receptors,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$tumor_receptors !="не проводилось")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$tumor_receptors,dfXlsxJun_variable$group_separation,"Резепторы опухоли")


chapter_3_4_text("Гистологически обнаружено злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$hist_is_tumor,
                 dfXlsxGr3$hist_is_tumor,
                 dfXlsxJun$hist_is_tumor,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$hist_is_tumor,dfXlsxJun$group_separation,"Злокачественное образование")


chapter_3_4_text("Уровень злокачественности",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$tumor_redegree_malignancyceptors,
                 dfXlsxGr3$degree_malignancy,
                 dfXlsxJun$degree_malignancy,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$degree_malignancy !="не проводилось")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$degree_malignancy,dfXlsxJun_variable$group_separation,"Уровень злокачественности")




#####Sensitivity, Specificity, Accuracy#######
#predicted_value, expected_value
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("##3.3 Определение чувствительности, спецефичности и точности методов")

SSA_text(dfXlsxGr1$us_is_tumor,dfXlsxGr1$hist_is_tumor, "УЗИ в группе А")

SSA_text(dfXlsxGr3$us_is_tumor,dfXlsxGr3$hist_is_tumor, "УЗИ в группе B")
SSA_text(dfXlsxGr3$abus_is_tumor,dfXlsxGr3$hist_is_tumor, "ABUS в группе B")

SSA_text(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor, "УЗИ в группе B")
SSA_text(dfXlsxJun$abus_is_tumor,dfXlsxJun$hist_is_tumor, "ABUS в группе B")



#####ROC curve#######
library(pROC)
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
          )
escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr1 <- roc(dfXlsxGr1$hist_is_tumor,dfXlsxGr1$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$abus_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usJun <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusJun <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$abus_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)



