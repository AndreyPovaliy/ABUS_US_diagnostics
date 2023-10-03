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



#####General#######
######US#######
escribir ("##4.1 Общее Описание результатов исследования УЗИ в выборке 40 лет и старше ")
How_many(dfXlsxSnr$name_patient,"Всего в исследование вошло")
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ кожа была ",dfXlsxSnr$us_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ протоки были ",dfXlsxSnr$us_ducts)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ фон был ",dfXlsxSnr$us_background)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ образование находилось ",dfXlsxSnr$us_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ образование было ",dfXlsxSnr$us_form)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ размер узла ",dfXlsxSnr$us_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ контуры узлов были ",dfXlsxSnr$us_nodle_contour)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ эхогенность образования былы ",dfXlsxSnr$us_echogenicity_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ структура узла ",dfXlsxSnr$us_structure)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ кровоток в образовании ",dfXlsxSnr$us_formation_blood_flow)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ элатография ",dfXlsxSnr$us_elastography)   
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxSnr$us_region_lymph_nodes)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ была установлена категория BIRADS ",dfXlsxSnr$us_category_birads)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ количество узлов было ",dfXlsxSnr$us_number_nodles)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ был поставлен диагноз ",dfXlsxSnr$us_diagnosis)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ найдены кальцинаты ",dfXlsxSnr$us_calcinates_micro_pure)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ был поставлен диагноз рак ",dfXlsxSnr$us_is_tumor)



######MMG#######
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ кожа ",dfXlsxSnr$mmg_conclusion_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ ареола ",dfXlsxSnr$mmg_areola)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ сосок ",dfXlsxSnr$mmg_nipple)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ фон ",dfXlsxSnr$mmg_background_breast)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ узлы ",dfXlsxSnr$mmg_nodle)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ контур узлов ",dfXlsxSnr$mmg_nodle_contour)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ размер узлов ",dfXlsxSnr$mmg_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ кальцификаты ",dfXlsxSnr$mmg_calcifications)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ количество визуализыруемых образований ",dfXlsxSnr$mmg_number_formations_visualized)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ подмышечные лимфоузлы ",dfXlsxSnr$mmg_axillary_lymph_nodes)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ количество узлов ",dfXlsxSnr$mmg_number_nodles)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ категория BIRADS ",dfXlsxSnr$mmg_category_birads)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ заключение ММГ ",dfXlsxSnr$mmg_conclusion)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ поставлен рак ",dfXlsxSnr$mmg_is_tumor)


######ABUS#######
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS кожа была ",dfXlsxSnr$abus_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS размеры узлов были ",dfXlsxSnr$abus_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS контуры узлов были ",dfXlsxSnr$abus_nodle_contours)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS эхогенность образования ",dfXlsxSnr$abus_echogenicity_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS структура узлов ",dfXlsxSnr$abus_structure)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS симптом ретракции ",dfXlsxSnr$abus_symptom_retraction)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS была установлена категория BIRADS ",dfXlsxSnr$abus_category_birads)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS количество узлов ",dfXlsxSnr$abus_number_nodles )
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS был поставлен диагноз ",dfXlsxSnr$abus_diagnosis)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS были найдены кальцинаты ",dfXlsxSnr$abus_calcinates)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS был поставлен диагноз рак ",dfXlsxSnr$abus_is_tumor)


######MRSI#######
Quantity_discr("В выборке 40 лет и старше при выполнении МРТ   ",dfXlsxSnr$mrsi_data)
Quantity_discr("В выборке 40 лет и старше при выполнении МРТ количество узлов  ",dfXlsxSnr$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В выборке 40 лет и старше была морфологическая структура  ",dfXlsxSnr$tumor_morphology_structure)
Quantity_discr("В выборке 40 лет и старше при выполнении цитологии было заключение  ",dfXlsxSnr$cytological_conclusion)
Quantity_discr("В выборке 40 лет и старше был определен уровень злокачественности  ",dfXlsxSnr$degree_malignancy)
Quantity_discr("В выборке 40 лет и старше был определены рецеторы  ",dfXlsxSnr$tumor_receptors)
Quantity_discr("В выборке 40 лет и старше гистологически поставлен рак  ",dfXlsxSnr$hist_is_tumor)




#####Comparison#######
######US#######
escribir ("##4.2 Характеристика результатов по группам")
How_many(dfXlsxGr2$name_patient,"В группу C")
How_many(dfXlsxGr4$name_patient,"В группу D")

escribir ("*Исследование УЗИ*")
chapter_3_4_text("Кожа при выполнении УЗИ",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_skin,
                 dfXlsxGr4$us_skin,
                 dfXlsxSnr$us_skin,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_skin,dfXlsxSnr$group_separation,"Кожа при выполнении УЗИ")
chapter_3_4_text("Протоки при выполнении УЗИ",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_ducts,
                 dfXlsxGr4$us_ducts,
                 dfXlsxSnr$us_ducts,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_ducts,dfXlsxSnr$group_separation,"Протоки при выполнении УЗИ")
chapter_3_4_text("УЗ-фон",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_background,
                 dfXlsxGr4$us_background,
                 dfXlsxSnr$us_background,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_background,dfXlsxSnr$group_separation,"УЗ-фон")

chapter_3_4_text("Образование находилось",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_formation,
                 dfXlsxGr4$us_formation,
                 dfXlsxSnr$us_formation,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_formation,dfXlsxSnr$group_separation,"Образование находилось")

chapter_3_4_text("Форма образования",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_form,
                 dfXlsxGr4$us_form,
                 dfXlsxSnr$us_form,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_form,dfXlsxSnr$group_separation,"Форма образования")

chapter_3_4_text("Размер образования",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_nodle_size,
                 dfXlsxGr4$us_nodle_size,
                 dfXlsxSnr$us_nodle_size,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_nodle_size,dfXlsxSnr$group_separation,"Размер образования")

chapter_3_4_text("Края образования",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_nodle_contour,
                 dfXlsxGr4$us_nodle_contour,
                 dfXlsxSnr$us_nodle_contour,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_nodle_contour,dfXlsxSnr$group_separation,"Края образования")

chapter_3_4_text("Эхогенность образования",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_echogenicity_formation,
                 dfXlsxGr4$us_echogenicity_formation,
                 dfXlsxSnr$us_echogenicity_formation,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_echogenicity_formation,dfXlsxSnr$group_separation,"Эхогенность образования")

chapter_3_4_text("УЗ-структура образования",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_structure,
                 dfXlsxGr4$us_structure,
                 dfXlsxSnr$us_structure,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_structure,dfXlsxSnr$group_separation,"УЗ-структура образования")

chapter_3_4_text("Количество узлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_number_nodles,
                 dfXlsxGr4$us_number_nodles,
                 dfXlsxSnr$us_number_nodles,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_number_nodles,dfXlsxSnr$group_separation,"Количество узлов")

chapter_3_4_text("Кровоток в образовании",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_formation_blood_flow,
                 dfXlsxGr4$us_formation_blood_flow,
                 dfXlsxSnr$us_formation_blood_flow,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_formation_blood_flow,dfXlsxSnr$group_separation,"Кровоток в образовании")

chapter_3_4_text("Эластография",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_elastography,
                 dfXlsxGr4$us_elastography,
                 dfXlsxSnr$us_elastography,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_elastography,dfXlsxSnr$group_separation,"Эластография")

chapter_3_4_text("Увеличение регинарных лимфоузлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_region_lymph_nodes,
                 dfXlsxGr4$us_region_lymph_nodes,
                 dfXlsxSnr$us_region_lymph_nodes,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_region_lymph_nodes,dfXlsxSnr$group_separation,"Увеличение регинарных лимфоузлов")

chapter_3_4_text("Категория BI-RADS",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_category_birads,
                 dfXlsxGr4$us_category_birads,
                 dfXlsxSnr$us_category_birads,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_category_birads,dfXlsxSnr$group_separation,"Категория BI-RADS")


chapter_3_4_text("УЗ-диагноз",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_diagnosis,
                 dfXlsxGr4$us_diagnosis,
                 dfXlsxSnr$us_diagnosis,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_diagnosis,dfXlsxSnr$group_separation,"УЗ-диагноз")

chapter_3_4_text("Кальцинаты",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_calcinates_micro_pure,
                 dfXlsxGr4$us_calcinates_micro_pure,
                 dfXlsxSnr$us_calcinates_micro_pure,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_calcinates_micro_pure,dfXlsxSnr$group_separation,"Кальцинаты")

chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$us_is_tumor,
                 dfXlsxGr4$us_is_tumor,
                 dfXlsxSnr$us_is_tumor,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_is_tumor,dfXlsxSnr$group_separation,"УЗ диагноз злокачественное образование")






######MMG#######
escribir ("*Исследование ММГ*")
chapter_3_4_text("Кожа",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_conclusion_skin,
                 dfXlsxGr4$mmg_conclusion_skin,
                 dfXlsxSnr$mmg_conclusion_skin,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_conclusion_skin,dfXlsxSnr$group_separation,"Кожа")

chapter_3_4_text("Ареола",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_areola,
                 dfXlsxGr4$mmg_areola,
                 dfXlsxSnr$mmg_areola,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_areola,dfXlsxSnr$group_separation,"Ареола")

chapter_3_4_text("Сосок",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_nipple,
                 dfXlsxGr4$mmg_nipple,
                 dfXlsxSnr$mmg_nipple,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_nipple,dfXlsxSnr$group_separation,"Сосок")

chapter_3_4_text("ММГ-фон",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_background_breast,
                 dfXlsxGr4$mmg_background_breast,
                 dfXlsxSnr$mmg_background_breast,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_background_breast,dfXlsxSnr$group_separation,"ММГ-фон")

chapter_3_4_text("Узлы",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_nodle,
                 dfXlsxGr4$mmg_nodle,
                 dfXlsxSnr$mmg_nodle,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_nodle,dfXlsxSnr$group_separation,"Узлы")

chapter_3_4_text("Края узлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_nodle_contour,
                 dfXlsxGr4$mmg_nodle_contour,
                 dfXlsxSnr$mmg_nodle_contour,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_nodle_contour,dfXlsxSnr$group_separation,"Края узлов")

chapter_3_4_text("Размер узлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_nodle_contour,
                 dfXlsxGr4$mmg_nodle_contour,
                 dfXlsxSnr$mmg_nodle_contour,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_nodle_contour,dfXlsxSnr$group_separation,"Размер узлов")

chapter_3_4_text("Кальльцификаты",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_calcifications,
                 dfXlsxGr4$mmg_calcifications,
                 dfXlsxSnr$mmg_calcifications,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_calcifications,dfXlsxSnr$group_separation,"Кальльцификаты")

chapter_3_4_text("Количество визуализируемых узлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_number_formations_visualized,
                 dfXlsxGr4$mmg_number_formations_visualized,
                 dfXlsxSnr$mmg_number_formations_visualized,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_number_formations_visualized,dfXlsxSnr$group_separation,"Кальльцификаты")

chapter_3_4_text("Количество узлов",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_number_nodles,
                 dfXlsxGr4$mmg_number_nodles,
                 dfXlsxSnr$mmg_number_nodles,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_number_nodles,dfXlsxSnr$group_separation,"Подмышечные лимфоузлы")

chapter_3_4_text("Подмышечные лимфоузлы",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_axillary_lymph_nodes,
                 dfXlsxGr4$mmg_axillary_lymph_nodes,
                 dfXlsxSnr$mmg_axillary_lymph_nodes,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_axillary_lymph_nodes,dfXlsxSnr$group_separation,"Подмышечные лимфоузлы")

chapter_3_4_text("Категория BI-RADS",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_category_birads,
                 dfXlsxGr4$mmg_category_birads,
                 dfXlsxSnr$mmg_category_birads,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_category_birads,dfXlsxSnr$group_separation,"Категория BI-RADS")


chapter_3_4_text("ММГ заключение",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_conclusion,
                 dfXlsxGr4$mmg_conclusion,
                 dfXlsxSnr$mmg_conclusion,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_conclusion,dfXlsxSnr$group_separation,"ММГ заключение")

chapter_3_4_text("ММГ диагноз злокачественное образование",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mmg_is_tumor,
                 dfXlsxGr4$mmg_is_tumor,
                 dfXlsxSnr$mmg_is_tumor,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_is_tumor,dfXlsxSnr$group_separation,"ММГ диагноз злокачественное образование")






######MRSI#######
escribir ("*Исследование МРТ*")
chapter_3_4_text("Данные МРТ",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mrsi_data,
                 dfXlsxGr4$mrsi_data,
                 dfXlsxSnr$mrsi_data,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mrsi_data,dfXlsxSnr$group_separation,"Данные МРТ")

chapter_3_4_text("Количество узлов на МРТ",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$mrsi_number_nodles,
                 dfXlsxGr4$mrsi_number_nodles,
                 dfXlsxSnr$mrsi_number_nodles,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$mrsi_number_nodles,dfXlsxSnr$group_separation,"Количество узлов на МРТ")



######Tumor#######
escribir ("*Гистологическая оценка*")

chapter_3_4_text("Морфологическая структура",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$tumor_morphology_structure,
                 dfXlsxGr4$tumor_morphology_structure,
                 dfXlsxSnr$tumor_morphology_structure,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$tumor_morphology_structure !="не проводилось")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$tumor_morphology_structure,dfXlsxSnr_variable$group_separation,"Морфологическая структура")


chapter_3_4_text("Цитологическое заключение",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$cytological_conclusion,
                 dfXlsxGr4$cytological_conclusion,
                 dfXlsxSnr$cytological_conclusion,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$cytological_conclusion !="не проводилось")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$cytological_conclusion,dfXlsxSnr_variable$group_separation,"Цитологическое заключение")

chapter_3_4_text("Рецепторы опухоли",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$tumor_receptors,
                 dfXlsxGr4$tumor_receptors,
                 dfXlsxSnr$tumor_receptors,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$tumor_receptors !="не проводилось")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$tumor_receptors,dfXlsxSnr_variable$group_separation,"Резепторы опухоли")


chapter_3_4_text("Гистологически обнаружено злокачественное образование",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$hist_is_tumor,
                 dfXlsxGr4$hist_is_tumor,
                 dfXlsxSnr$hist_is_tumor,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$hist_is_tumor,dfXlsxSnr$group_separation,"Злокачественное образование")


chapter_3_4_text("Уровень злокачественности",
                 "В группе C",
                 "В группе D ",
                 dfXlsxGr2$tumor_redegree_malignancyceptors,
                 dfXlsxGr4$degree_malignancy,
                 dfXlsxSnr$degree_malignancy,
                 dfXlsxSnr$group_separation)
dfXlsxSnr_variable <- subset(dfXlsxSnr,dfXlsxSnr$degree_malignancy !="не проводилось")
GeomBar(dfXlsxSnr_variable,dfXlsxSnr_variable$degree_malignancy,dfXlsxSnr_variable$group_separation,"Уровень злокачественности")




#####Sensitivity, Specificity, Accuracy#######
#predicted_value, expected_value
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("##3.3 Определение чувствительности, спецефичности и точности методов")

SSA_text(dfXlsxGr2$us_is_tumor,dfXlsxGr2$hist_is_tumor, "УЗИ в группе C")
SSA_text(dfXlsxGr2$mmg_is_tumor,dfXlsxGr2$hist_is_tumor, "ММГ в группе C")

SSA_text(dfXlsxGr4$us_is_tumor,dfXlsxGr4$hist_is_tumor, "УЗИ В группе D")
SSA_text(dfXlsxGr4$abus_is_tumor,dfXlsxGr4$hist_is_tumor, "ABUS В группе D")
SSA_text(dfXlsxGr4$mmg_is_tumor,dfXlsxGr4$hist_is_tumor, "ММГ в группе D")

SSA_text(dfXlsxSnr$us_is_tumor,dfXlsxSnr$hist_is_tumor, "УЗИ в выборке пациенток 40 лет и старше")
SSA_text(dfXlsxSnr$abus_is_tumor,dfXlsxSnr$hist_is_tumor, "ABUS в выборке пациенток 40 лет и старше")
SSA_text(dfXlsxSnr$mmg_is_tumor,dfXlsxSnr$hist_is_tumor, "ММГ в выборке пациенток 40 лет и старше")


#####ROC curve#######
library(pROC)
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
)
escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным В группе C представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ММГ, по данным полученным В группе C представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_mmgGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$mmg_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным В группе D представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ММГ, по данным полученным В группе D представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_mmgGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$mmg_probability,
                       smoothed = TRUE,
                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                       print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным В группе D представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$abus_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ММГ, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_mmgSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$mmg_probability,
                       smoothed = TRUE,
                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                       print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$abus_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
