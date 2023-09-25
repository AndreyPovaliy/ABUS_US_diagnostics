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
escribir ("4.1 Общее Описание результатов исследований в выборке после 40 лет ")
How_many(dfXlsxSnr$name_patient,"Всего в выборкe после 40 лет вошло")
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кожа была ",dfXlsxSnr$us_skin)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ протоки были ",dfXlsxSnr$us_ducts)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ фон был ",dfXlsxSnr$us_background)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование находилось ",dfXlsxSnr$us_formation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование было ",dfXlsxSnr$us_form)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ размер узла ",dfXlsxSnr$us_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ контуры узлов были ",dfXlsxSnr$us_nodle_contour)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ эхогенность образования былы ",dfXlsxSnr$us_echogenicity_formation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ структура узла ",dfXlsxSnr$us_structure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кровоток в образовании ",dfXlsxSnr$us_formation_blood_flow)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ элатография ",dfXlsxSnr$us_elastography)   
Quantity_discr("В выборке после 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxSnr$us_region_lymph_nodes)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfXlsxSnr$us_category_birads)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ количество узлов было ",dfXlsxSnr$us_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ был поставлен диагноз ",dfXlsxSnr$us_diagnosis)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ найдены кальцинаты ",dfXlsxSnr$us_calcinates_micro_pure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ поставлен рак ",dfXlsxSnr$us_is_tumor)

######MMG#######
Quantity_discr("В выборке после 40 лет при выполнении ММГ кожа ",dfXlsxSnr$mmg_conclusion_skin)
Quantity_discr("В выборке после 40 лет при выполнении ММГ ареола ",dfXlsxSnr$mmg_areola)
Quantity_discr("В выборке после 40 лет при выполнении ММГ сосок ",dfXlsxSnr$mmg_nipple)
Quantity_discr("В выборке после 40 лет при выполнении ММГ фон ",dfXlsxSnr$mmg_background_breast)
Quantity_discr("В выборке после 40 лет при выполнении ММГ узлы ",dfXlsxSnr$mmg_nodle)
Quantity_discr("В выборке после 40 лет при выполнении ММГ контур узлов ",dfXlsxSnr$mmg_nodle_contour)
Quantity_discr("В выборке после 40 лет при выполнении ММГ размер узлов ",dfXlsxSnr$mmg_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении ММГ кальцификаты ",dfXlsxSnr$mmg_calcifications)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество визуализыруемых образований ",dfXlsxSnr$mmg_number_formations_visualized)
Quantity_discr("В выборке после 40 лет при выполнении ММГ подмышечные лимфоузлы ",dfXlsxSnr$mmg_axillary_lymph_nodes)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество узлов ",dfXlsxSnr$mmg_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении ММГ категория BIRADS ",dfXlsxSnr$mmg_category_birads)
Quantity_discr("В выборке после 40 лет при выполнении ММГ заключение ММГ ",dfXlsxSnr$mmg_conclusion )
Quantity_discr("В выборке после 40 лет при выполнении ММГ поставлен рак ",dfXlsxSnr$mmg_is_tumor)


######ABUS#######
Quantity_discr("В выборке после 40 лет при выполнении ABUS кожа была ",dfXlsxSnr$abus_skin)
Quantity_discr("В выборке после 40 лет при выполнении ABUS размеры узлов были ",dfXlsxSnr$abus_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении ABUS контуры узлов были ",dfXlsxSnr$abus_nodle_contours)
Quantity_discr("В выборке после 40 лет при выполнении ABUS эхогенность образования ",dfXlsxSnr$abus_echogenicity_formation)
Quantity_discr("В выборке после 40 лет при выполнении ABUS структура узлов ",dfXlsxSnr$abus_structure)
Quantity_discr("В выборке после 40 лет при выполнении ABUS симптом ретракции ",dfXlsxSnr$abus_symptom_retractionn)
Quantity_discr("В выборке после 40 лет при выполнении ABUS была установлена категория BIRADS ",dfXlsxSnr$abus_category_birads )
Quantity_discr("В выборке после 40 лет при выполнении ABUS количество узлов ",dfXlsxSnr$abus_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз ",dfXlsxSnr$abus_diagnosis)
Quantity_discr("В выборке после 40 лет при выполнении ABUS были найдены кальцинаты ",dfXlsxSnr$abus_calcinates)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз рак ",dfXlsxSnr$abus_is_tumor)


######MRSI#######
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",dfXlsxSnr$mrsi_data)
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",dfXlsxSnr$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В выборке после 40 лет была морфологическая структура  ",dfXlsxSnr$tumor_morphology_structure)
Quantity_discr("В выборке после 40 лет при выполнении цитологии было заключение  ",dfXlsxSnr$cytological_conclusion)
Quantity_discr("В выборке после 40 лет был определен уровень злокачественности  ",dfXlsxSnr$degree_malignancy)
Quantity_discr("В выборке после 40 лет был определены рецеторы  ",dfXlsxSnr$tumor_receptors)
Quantity_discr("В выборке после 40 лет гистологически поставлен рак ",dfXlsxSnr$hist_is_tumor)



#####Gr2#######
######US#######
escribir ("4.2 Общее Описание результатов исследований Во второй группе ")
How_many(dfXlsxGr2$name_patient,"Всего во вторую группу вошло")
Quantity_discr("Во второй группе при выполнении УЗИ кожа была ",dfXlsxGr2$us_skin)
Quantity_discr("Во второй группе при выполнении УЗИ протоки были ",dfXlsxGr2$us_ducts)
Quantity_discr("Во второй группе при выполнении УЗИ фон был ",dfXlsxGr2$us_background)
Quantity_discr("Во второй группе при выполнении УЗИ образование находилось ",dfXlsxGr2$us_formation)
Quantity_discr("Во второй группе при выполнении УЗИ образование было ",dfXlsxGr2$us_form)
Quantity_discr("Во второй группе при выполнении УЗИ размер узла ",dfXlsxGr2$us_nodle_size)
Quantity_discr("Во второй группе при выполнении УЗИ контуры узлов были ",dfXlsxGr2$us_nodle_contour)
Quantity_discr("Во второй группе при выполнении УЗИ эхогенность образования былы ",dfXlsxGr2$us_echogenicity_formation)
Quantity_discr("Во второй группе при выполнении УЗИ структура узла ",dfXlsxGr2$us_structure)
Quantity_discr("Во второй группе при выполнении УЗИ кровоток в образовании ",dfXlsxGr2$us_formation_blood_flow)
Quantity_discr("Во второй группе при выполнении УЗИ элатография ",dfXlsxGr2$us_elastography)   
Quantity_discr("Во второй группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxGr2$us_region_lymph_nodes)
Quantity_discr("Во второй группе при выполнении УЗИ была установлена категория BIRADS ",dfXlsxGr2$us_category_birads)
Quantity_discr("Во второй группе при выполнении УЗИ количество узлов было ",dfXlsxGr2$us_number_nodles)
Quantity_discr("Во второй группе при выполнении УЗИ был поставлен диагноз ",dfXlsxGr2$us_diagnosis)
Quantity_discr("Во второй группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr2$us_calcinates_micro_pure)
Quantity_discr("Во второй группе при выполнении УЗИ поставлен рак ",dfXlsxGr2$us_is_tumor)

######MMG#######
Quantity_discr("Во второй группе при выполнении ММГ кожа ",dfXlsxGr2$mmg_conclusion_skin)
Quantity_discr("Во второй группе при выполнении ММГ ареола ",dfXlsxGr2$mmg_areola)
Quantity_discr("Во второй группе при выполнении ММГ сосок ",dfXlsxGr2$mmg_nipple)
Quantity_discr("Во второй группе при выполнении ММГ фон ",dfXlsxGr2$mmg_background_breast)
Quantity_discr("Во второй группе при выполнении ММГ узлы ",dfXlsxGr2$mmg_nodle)
Quantity_discr("Во второй группе при выполнении ММГ контур узлов ",dfXlsxGr2$mmg_nodle_contour)
Quantity_discr("Во второй группе при выполнении ММГ размер узлов ",dfXlsxGr2$mmg_nodle_size)
Quantity_discr("Во второй группе при выполнении ММГ кальцификаты ",dfXlsxGr2$mmg_calcifications)
Quantity_discr("Во второй группе при выполнении ММГ количество визуализыруемых образований ",dfXlsxGr2$mmg_number_formations_visualized)
Quantity_discr("Во второй группе при выполнении ММГ подмышечные лимфоузлы ",dfXlsxGr2$mmg_axillary_lymph_nodes)
Quantity_discr("Во второй группе при выполнении ММГ количество узлов ",dfXlsxGr2$mmg_number_nodles)
Quantity_discr("Во второй группе при выполнении ММГ категория BIRADS ",dfXlsxGr2$mmg_category_birads)
Quantity_discr("Во второй группе при выполнении ММГ заключение ММГ ",dfXlsxGr2$mmg_conclusion)
Quantity_discr("Во второй группе при выполнении ММГ поставлен рак ",dfXlsxGr2$mmg_is_tumor)


######ABUS#######
Quantity_discr("Во второй группе при выполнении ABUS кожа была ",dfXlsxGr2$abus_skin)
Quantity_discr("Во второй группе при выполнении ABUS размеры узлов были ",dfXlsxGr2$abus_nodle_size)
Quantity_discr("Во второй группе при выполнении ABUS контуры узлов были ",dfXlsxGr2$abus_nodle_contours)
Quantity_discr("Во второй группе при выполнении ABUS эхогенность образования ",dfXlsxGr2$abus_echogenicity_formation)
Quantity_discr("Во второй группе при выполнении ABUS структура узлов ",dfXlsxGr2$abus_structure)
Quantity_discr("Во второй группе при выполнении ABUS симптом ретракции ",dfXlsxGr2$abus_symptom_retraction)
Quantity_discr("Во второй группе при выполнении ABUS была установлена категория BIRADS ",dfXlsxGr2$abus_category_birads)
Quantity_discr("Во второй группе при выполнении ABUS количество узлов ",dfXlsxGr2$abus_number_nodles)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз ",dfXlsxGr2$abus_diagnosis)
Quantity_discr("Во второй группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr2$abus_calcinates)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз рак ",dfXlsxGr2$abus_is_tumor)


######MRSI#######
Quantity_discr("Во второй группе при выполнении МРТ были  ",dfXlsxGr2$mrsi_data)
Quantity_discr("Во второй группе при выполнении МРТ были  ",dfXlsxGr2$mrsi_number_nodles)

######Tumor#######
Quantity_discr("Во второй группе была морфологическая структура  ",dfXlsxGr2$tumor_morphology_structure)
Quantity_discr("Во второй группе при выполнении цитологии было заключение  ",dfXlsxGr2$cytological_conclusion)
Quantity_discr("Во второй группе был определен уровень злокачественности  ",dfXlsxGr2$degree_malignancy)
Quantity_discr("Во второй группе был определены рецеторы  ",dfXlsxGr2$tumor_receptors)
Quantity_discr("Во второй группе гистологически поставлен рак ",dfXlsxGr2$hist_is_tumor)

#####Gr4#######
######US#######
escribir ("4.3 Общее Описание результатов исследований Во четвертой группе ")
How_many(dfXlsxGr4$name_patient,"Всего в исследование вошло")
Quantity_discr("Во четвертой группе при выполнении УЗИ кожа была ",dfXlsxGr4$us_skin)
Quantity_discr("Во четвертой группе при выполнении УЗИ протоки были ",dfXlsxGr4$us_ducts)
Quantity_discr("Во четвертой группе при выполнении УЗИ фон был ",dfXlsxGr4$us_background)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование находилось ",dfXlsxGr4$us_formation)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование было ",dfXlsxGr4$us_form)
Quantity_discr("Во четвертой группе при выполнении УЗИ размер узла ",dfXlsxGr4$us_nodle_size)
Quantity_discr("Во четвертой группе при выполнении УЗИ контуры узлов были ",dfXlsxGr4$us_nodle_contour)
Quantity_discr("Во четвертой группе при выполнении УЗИ эхогенность образования былы ",dfXlsxGr4$us_echogenicity_formation)
Quantity_discr("Во четвертой группе при выполнении УЗИ структура узла ",dfXlsxGr4$us_structure)
Quantity_discr("Во четвертой группе при выполнении УЗИ кровоток в образовании ",dfXlsxGr4$us_formation_blood_flow)
Quantity_discr("Во четвертой группе при выполнении УЗИ элатография ",dfXlsxGr4$us_elastography)   
Quantity_discr("Во четвертой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxGr4$us_region_lymph_nodes)
Quantity_discr("Во четвертой группе при выполнении УЗИ была установлена категория BIRADS ",dfXlsxGr4$us_category_birads)
Quantity_discr("Во четвертой группе при выполнении УЗИ количество узлов было ",dfXlsxGr4$us_number_nodles)
Quantity_discr("Во четвертой группе при выполнении УЗИ был поставлен диагноз ",dfXlsxGr4$us_diagnosis)
Quantity_discr("Во четвертой группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr4$us_calcinates_micro_pure)
Quantity_discr("Во четвертой группе при выполнении УЗИ поставлен рак ",dfXlsxGr4$us_is_tumor)

######MMG#######
Quantity_discr("Во четвертой группе при выполнении ММГ кожа ",dfXlsxGr4$mmg_conclusion_skin)
Quantity_discr("Во четвертой группе при выполнении ММГ ареола ",dfXlsxGr4$mmg_areola)
Quantity_discr("Во четвертой группе при выполнении ММГ сосок ",dfXlsxGr4$mmg_nipple)
Quantity_discr("Во четвертой группе при выполнении ММГ фон ",dfXlsxGr4$mmg_background_breast)
Quantity_discr("Во четвертой группе при выполнении ММГ узлы ",dfXlsxGr4$mmg_nodle)
Quantity_discr("Во четвертой группе при выполнении ММГ контур узлов ",dfXlsxGr4$mmg_nodle_contour)
Quantity_discr("Во четвертой группе при выполнении ММГ размер узлов ",dfXlsxGr4$mmg_nodle_size)
Quantity_discr("Во четвертой группе при выполнении ММГ кальцификаты ",dfXlsxGr4$mmg_calcifications)
Quantity_discr("Во четвертой группе при выполнении ММГ количество визуализыруемых образований ",dfXlsxGr4$mmg_number_formations_visualized)
Quantity_discr("Во четвертой группе при выполнении ММГ подмышечные лимфоузлы ",dfXlsxGr4$mmg_axillary_lymph_nodes)
Quantity_discr("Во четвертой группе при выполнении ММГ количество узлов ",dfXlsxGr4$mmg_number_nodles)
Quantity_discr("Во четвертой группе при выполнении ММГ категория BIRADS ",dfXlsxGr4$mmg_category_birads)
Quantity_discr("Во четвертой группе при выполнении ММГ заключение ММГ ",dfXlsxGr4$mmg_conclusion)
Quantity_discr("Во четвертой группе при выполнении ММГ поставлен рак ",dfXlsxGr4$hist_is_tumor)


######ABUS#######
Quantity_discr("Во четвертой группе при выполнении ABUS кожа была ",dfXlsxGr4$abus_skin)
Quantity_discr("Во четвертой группе при выполнении ABUS размеры узлов были ",dfXlsxGr4$abus_nodle_size)
Quantity_discr("Во четвертой группе при выполнении ABUS контуры узлов были ",dfXlsxGr4$abus_nodle_contours)
Quantity_discr("Во четвертой группе при выполнении ABUS эхогенность образования ",dfXlsxGr4$abus_echogenicity_formation)
Quantity_discr("Во четвертой группе при выполнении ABUS структура узлов ",dfXlsxGr4$abus_structure)
Quantity_discr("Во четвертой группе при выполнении ABUS симптом ретракции ",dfXlsxGr4$abus_symptom_retraction)
Quantity_discr("Во четвертой группе при выполнении ABUS была установлена категория BIRADS ",dfXlsxGr4$abus_category_birads)
Quantity_discr("Во четвертой группе при выполнении ABUS количество узлов ",dfXlsxGr4$ABUSnumberNodles)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз ",dfXlsxGr4$abus_diagnosis)
Quantity_discr("Во четвертой группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr4$abus_calcinates)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз рак ",dfXlsxGr4$is_tumor)


######MRSI#######
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",dfXlsxGr4$mrsi_data)
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",dfXlsxGr4$mrsi_number_nodles)

######Tumor#######
Quantity_discr("Во четвертой группе была морфологическая структура  ",dfXlsxGr4$tumor_morphology_structure)
Quantity_discr("Во четвертой группе при выполнении цитологии было заключение  ",dfXlsxGr4$cytological_conclusion)
Quantity_discr("Во четвертой группе был определен уровень злокачественности  ",dfXlsxGr4$degree_malignancy)
Quantity_discr("Во четвертой группе был определены рецеторы  ",dfXlsxGr4$tumor_receptors)
Quantity_discr("Во четвертой группе гистологически поставлен рак ",dfXlsxGr4$is_tumor)



#####Comparison#######
##US
pvalueQualitativeText(dfXlsxSnr$us_skin,dfXlsxSnr$group_separation,"при выполнении УЗИ по кожа в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_ducts,dfXlsxSnr$group_separation,"при выполнении УЗИ по протокам в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_background,dfXlsxSnr$group_separation,"при выполнении УЗИ по фону в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_formation,dfXlsxSnr$group_separation,"при выполнении УЗИ по нахождению узла в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_form,dfXlsxSnr$group_separation,"при выполнении УЗИ по форме образования в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_nodle_size,dfXlsxSnr$group_separation,"при выполнении УЗИ по размеру образования в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_nodle_contour,dfXlsxSnr$group_separation,"при выполнении УЗИ по контуру образования в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_echogenicity_formation,dfXlsxSnr$group_separation,"при выполнении УЗИ по эхогенности образования в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_structure,dfXlsxSnr$group_separation,"при выполнении УЗИ по структуре узла в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_formation_blood_flow,dfXlsxSnr$group_separation,"при выполнении УЗИ по кровотоку в образовании в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_elastography,dfXlsxSnr$group_separation,"при выполнении УЗИ элатогарфия в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_region_lymph_nodes,dfXlsxSnr$group_separation,"при выполнении УЗИ регионарные лимфоузлы в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_category_birads,dfXlsxSnr$group_separation,"при выполнении УЗИ категория BIRADS в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_number_nodles,dfXlsxSnr$group_separation,"при выполнении УЗИ количество узлов в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_diagnosis,dfXlsxSnr$group_separation,"при выполнении УЗИ диагноз в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$us_calcinates_micro_pure,dfXlsxSnr$group_separation,"при выполнении УЗИ кальцинаты в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$is_tumor,dfXlsxSnr$group_separation,"при выполнении УЗИ поставлен рак в выборке после 40")


#Tumor
pvalueQualitativeText(dfXlsxSnr$tumor_morphology_structure,dfXlsxSnr$group_separation,"морфологическая структура найденных опухолей в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$cytological_conclusion,dfXlsxSnr$group_separation,"цитология найденных опухолей в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$degree_malignancy,dfXlsxSnr$group_separation,"уровень злокачественности найденных опухолей в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$tumor_receptors,dfXlsxSnr$group_separation,"рецепторы найденных опухолей в выборке после 40")
pvalueQualitativeText(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$group_separation,"гистологически поставлен рак в выборке после 40")

#####Sensitivity, Specifcity, Accuracy#######
SSA(dfXlsxSnr$us_is_tumor,dfXlsxSnr$hist_is_tumor)
SSA(dfXlsxSnr$mmg_is_tumor,dfXlsxSnr$hist_is_tumor)
SSA(dfXlsxSnr$abus_is_tumor,dfXlsxSnr$hist_is_tumor)


SSA(dfXlsxGr2$us_is_tumor,dfXlsxGr2$hist_is_tumor)
SSA(dfXlsxGr2$mmg_is_tumor,dfXlsxGr2$hist_is_tumor)
SSA(dfXlsxGr2$abus_is_tumor,dfXlsxGr2$hist_is_tumor)




SSA(dfXlsxGr4$us_is_tumor,dfXlsxGr4$hist_is_tumor)
SSA(dfXlsxGr4$mmg_is_tumor,dfXlsxGr4$hist_is_tumor)
SSA(dfXlsxGr4$abus_is_tumor,dfXlsxGr4$hist_is_tumor)


#####ROC cruve#######
library(pROC)



pROC_obj_usGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$us_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)

pROC_obj_mmgGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$mmg_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

pROC_obj_usGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$us_probability,
                smoothed = TRUE,
                ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                print.auc=TRUE, show.thres=TRUE)

pROC_obj_mmgGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$mmg_probability,
                       smoothed = TRUE,
                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                       print.auc=TRUE, show.thres=TRUE)


pROC_obj_abusGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$abus_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
