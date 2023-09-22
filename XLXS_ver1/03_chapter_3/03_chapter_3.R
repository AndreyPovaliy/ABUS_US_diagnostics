source("~/Статиьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

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
escribir ("3.1 Общее Описание результатов исследования УЗИ в выборке до 40 лет ")
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

# ######MMG#######
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




#####gr1#######
######US#######
escribir ("3.2 Общее Описание результатов исследования УЗИ В первой группе ")
How_many(dfXlsxGr1$name_patient,"Всего в исследование вошло")
Quantity_discr("В первой группе при выполнении УЗИ кожа была ",dfXlsxGr1$us_skin)
Quantity_discr("В первой группе при выполнении УЗИ протоки были ",dfXlsxGr1$us_ducts)
Quantity_discr("В первой группе при выполнении УЗИ фон был ",dfXlsxGr1$us_background)
Quantity_discr("В первой группе при выполнении УЗИ образование находилось ",dfXlsxGr1$us_formation)
Quantity_discr("В первой группе при выполнении УЗИ образование было ",dfXlsxGr1$us_form)
Quantity_discr("В первой группе при выполнении УЗИ размер узла ",dfXlsxGr1$us_nodle_size)
Quantity_discr("В первой группе при выполнении УЗИ контуры узлов были ",dfXlsxGr1$us_nodle_contour)
Quantity_discr("В первой группе при выполнении УЗИ эхогенность образования былы ",dfXlsxGr1$us_echogenicity_formation)
Quantity_discr("В первой группе при выполнении УЗИ структура узла ",dfXlsxGr1$us_structure)
Quantity_discr("В первой группе при выполнении УЗИ кровоток в образовании ",dfXlsxGr1$us_formation_blood_flow)
Quantity_discr("В первой группе при выполнении УЗИ элатография ",dfXlsxGr1$us_elastography)   
Quantity_discr("В первой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxGr1$us_region_lymph_nodes)
Quantity_discr("В первой группе при выполнении УЗИ была установлена категория BIRADS ",dfXlsxGr1$us_category_birads )
Quantity_discr("В первой группе при выполнении УЗИ количество узлов было ",dfXlsxGr1$us_number_nodles)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз ",dfXlsxGr1$us_diagnosis)
Quantity_discr("В первой группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr1$us_calcinates_micro_pure)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз рак ",dfXlsxGr1$us_is_tumor)

# ######MMG#######
# Quantity_discr("В первой группе лет при выполнении ММГ кожа ",dfXlsxGr1$mmg_conclusion_skin)
# Quantity_discr("В первой группе лет при выполнении ММГ ареола ",dfXlsxGr1$mmg_areola)
# Quantity_discr("В первой группе лет при выполнении ММГ сосок ",dfXlsxGr1$mmg_nipple)
# Quantity_discr("В первой группе лет при выполнении ММГ фон ",dfXlsxGr1$mmg_background_breast)
# Quantity_discr("В первой группе лет при выполнении ММГ узлы ",dfXlsxGr1$mmg_nodle)
# Quantity_discr("В первой группе лет при выполнении ММГ контур узлов ",dfXlsxGr1$mmg_nodle_contour)
# Quantity_discr("В первой группе лет при выполнении ММГ размер узлов ",dfXlsxGr1$mmg_nodle_size)
# Quantity_discr("В первой группе лет при выполнении ММГ кальцификаты ",dfXlsxGr1$mmg_calcifications)
# Quantity_discr("В первой группе лет при выполнении ММГ количество визуализыруемых образований ",dfXlsxGr1$mmg_number_formations_visualized)
# Quantity_discr("В первой группе лет при выполнении ММГ подмышечные лимфоузлы ",dfXlsxGr1$mmg_axillary_lymph_nodes)
# Quantity_discr("В первой группе лет при выполнении ММГ количество узлов ",dfXlsxGr1$mmg_number_nodles)
# Quantity_discr("В первой группе лет при выполнении ММГ категория BIRADS ",dfXlsxGr1$mmg_category_birads)
# Quantity_discr("В первой группе лет при выполнении ММГ заключение ММГ ",dfXlsxGr1$mmg_conclusion)
# Quantity_discr("В первой группе лет при выполнении ММГ поставлен рак ",dfXlsxGr1$mmg_is_tumor)


######ABUS#######
Quantity_discr("В первой группе при выполнении ABUS кожа была ",dfXlsxGr1$abus_skin)
Quantity_discr("В первой группе при выполнении ABUS размеры узлов были ",dfXlsxGr1$abus_nodle_size)
Quantity_discr("В первой группе при выполнении ABUS контуры узлов были ",dfXlsxGr1$abus_nodle_contours)
Quantity_discr("В первой группе при выполнении ABUS эхогенность образования ",dfXlsxGr1$abus_echogenicity_formation)
Quantity_discr("В первой группе при выполнении ABUS структура узлов ",dfXlsxGr1$abus_structure)
Quantity_discr("В первой группе при выполнении ABUS симптом ретракции ",dfXlsxGr1$abus_symptom_retraction)
Quantity_discr("В первой группе при выполнении ABUS была установлена категория BIRADS ",dfXlsxGr1$abus_category_birads)
Quantity_discr("В первой группе при выполнении ABUS количество узлов ",dfXlsxGr1$abus_number_nodles)
Quantity_discr("В первой группе при выполнении ABUS был поставлен диагноз ",dfXlsxGr1$abus_diagnosis)
Quantity_discr("В первой группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr1$abus_calcinates)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз рак ",dfXlsxGr1$abus_is_tumor)

######MRSI#######
Quantity_discr("В первой группе при выполнении МРТ были  ",dfXlsxGr1$mrsi_data)
Quantity_discr("В первой группе при выполнении МРТ были  ",dfXlsxGr1$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В первой группе была морфологическая структура  ",dfXlsxGr1$tumor_morphology_structure)
Quantity_discr("В первой группе при выполнении цитологии было заключение  ",dfXlsxGr1$cytological_conclusion)
Quantity_discr("В первой группе был определен уровень злокачественности  ",dfXlsxGr1$degree_malignancy)
Quantity_discr("В первой группе был определены рецеторы   ",dfXlsxGr1$tumor_receptors)
Quantity_discr("В первой группе гистологически поставлен рак ",dfXlsxGr1$hist_is_tumor)



#####gr3######
######US#######
escribir ("3.3 Общее Описание результатов исследования УЗИ В третьей группе ")
How_many(dfXlsxGr3$name_patient,"Всего в исследование вошло")
Quantity_discr("В третьей группе при выполнении УЗИ кожа была ",dfXlsxGr3$us_skin)
Quantity_discr("В третьей группе при выполнении УЗИ протоки были ",dfXlsxGr3$us_ducts)
Quantity_discr("В третьей группе при выполнении УЗИ фон был ",dfXlsxGr3$us_background)
Quantity_discr("В третьей группе при выполнении УЗИ образование находилось ",dfXlsxGr3$us_formation)
Quantity_discr("В третьей группе при выполнении УЗИ образование было ",dfXlsxGr3$us_form)
Quantity_discr("В третьей группе при выполнении УЗИ размер узла ",dfXlsxGr3$us_nodle_size)
Quantity_discr("В третьей группе при выполнении УЗИ контуры узлов были ",dfXlsxGr3$us_nodle_contour)
Quantity_discr("В третьей группе при выполнении УЗИ эхогенность образования былы ",dfXlsxGr3$us_echogenicity_formation)
Quantity_discr("В третьей группе при выполнении УЗИ структура узла ",dfXlsxGr3$us_structure)
Quantity_discr("В третьей группе при выполнении УЗИ кровоток в образовании ",dfXlsxGr3$us_formation_blood_flow)
Quantity_discr("В третьей группе при выполнении УЗИ элатография ",dfXlsxGr3$us_elastography)   
Quantity_discr("В третьей группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxGr3$us_region_lymph_nodes)
Quantity_discr("В третьей группе при выполнении УЗИ была установлена категория BIRADS ",dfXlsxGr3$us_category_birads)
Quantity_discr("В третьей группе при выполнении УЗИ количество узлов было ",dfXlsxGr3$us_number_nodles)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfXlsxGr3$us_diagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr3$us_calcinates_micro_pure)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfXlsxGr3$us_diagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз рак ",dfXlsxGr3$us_is_tumor)

######MMG#######
# Quantity_discr("В третьей группе лет при выполнении ММГ кожа ",dfXlsxGr3$mmg_conclusion_skin)
# Quantity_discr("В третьей группе лет при выполнении ММГ ареола ",dfXlsxGr3$mmg_areola)
# Quantity_discr("В третьей группе лет при выполнении ММГ сосок ",dfXlsxGr3$mmg_nipple)
# Quantity_discr("В третьей группе лет при выполнении ММГ фон ",dfXlsxGr3$mmg_background_breast)
# Quantity_discr("В третьей группе лет при выполнении ММГ узлы ",dfXlsxGr3$mmg_nodle)
# Quantity_discr("В третьей группе лет при выполнении ММГ контур узлов ",dfXlsxGr3$mmg_nodle_contour)
# Quantity_discr("В третьей группе лет при выполнении ММГ размер узлов ",dfXlsxGr3$mmg_nodle_size)
# Quantity_discr("В третьей группе лет при выполнении ММГ кальцификаты ",dfXlsxGr3$mmg_calcifications)
# Quantity_discr("В третьей группе лет при выполнении ММГ количество визуализыруемых образований ",dfXlsxGr3$mmg_number_formations_visualized)
# Quantity_discr("В третьей группе лет при выполнении ММГ подмышечные лимфоузлы ",dfXlsxGr3$mmg_axillary_lymph_nodes)
# Quantity_discr("В третьей группе лет при выполнении ММГ количество узлов ",dfXlsxGr3$mmg_number_nodles)
# Quantity_discr("В третьей группе лет при выполнении ММГ категория BIRADS ",dfXlsxGr3$mmg_category_birads)
# Quantity_discr("В третьей группе лет при выполнении ММГ заключение ММГ ",dfXlsxGr3$mmg_conclusion)
# Quantity_discr("В третьей группе лет при выполнении ММГ поставлен рак ",dfXlsxGr3$mmg_is_tumor)


######ABUS#######
Quantity_discr("В третьей группе при выполнении ABUS кожа была ",dfXlsxGr3$abus_skin)
Quantity_discr("В третьей группе при выполнении ABUS размеры узлов были ",dfXlsxGr3$abus_nodle_size)
Quantity_discr("В третьей группе при выполнении ABUS контуры узлов были ",dfXlsxGr3$abus_nodle_contours)
Quantity_discr("В третьей группе при выполнении ABUS эхогенность образования ",dfXlsxGr3$abus_echogenicity_formation)
Quantity_discr("В третьей группе при выполнении ABUS структура узлов ",dfXlsxGr3$abus_structure)
Quantity_discr("В третьей группе при выполнении ABUS симптом ретракции ",dfXlsxGr3$abus_symptom_retraction)
Quantity_discr("В третьей группе при выполнении ABUS была установлена категория BIRADS ",dfXlsxGr3$abus_category_birads)
Quantity_discr("В третьей группе при выполнении ABUS количество узлов ",dfXlsxGr3$abus_number_nodles)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз ",dfXlsxGr3$abus_diagnosis)
Quantity_discr("В третьей группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr3$abus_calcinates)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз рак ",dfXlsxGr3$is_tumor)




######MRSI#######
Quantity_discr("В третьей группе при выполнении МРТ были  ",dfXlsxGr3$mrsi_data)
Quantity_discr("В третьей группе при выполнении МРТ были  ",dfXlsxGr3$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В третьей группе была морфологическая структура  ",dfXlsxGr3$tumor_morphology_structure)
Quantity_discr("В третьей группе при выполнении цитологии было заключение  ",dfXlsxGr3$cytological_conclusion)
Quantity_discr("В третьей группе был определен уровень злокачественности  ",dfXlsxGr3$degree_malignancy)
Quantity_discr("В третьей группе был определены рецеторы ",dfXlsxGr3$tumor_receptors)
Quantity_discr("В третьей группе гистологически поставлен диагноз рак ",dfXlsxGr3$is_tumor)





#####Comparison#######
##US
# pvalueQualitativeText(dfXlsxJun$us_skin,dfXlsxJun$group_separation,"при выполнении УЗИ по кожа в выборке до 40")
escribir ("Разница между группами при выполнении УЗИ по кожа в выборке до 40  составила 1 .")
pvalueQualitativeText(dfXlsxJun$us_ducts,dfXlsxJun$group_separation,"при выполнении УЗИ по протокам в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_background,dfXlsxJun$group_separation,"при выполнении УЗИ по фону в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_formation,dfXlsxJun$group_separation,"при выполнении УЗИ по нахождению узла в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_form,dfXlsxJun$group_separation,"при выполнении УЗИ по форме образования в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_nodle_size,dfXlsxJun$group_separation,"при выполнении УЗИ по размеру образования в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_nodle_contour,dfXlsxJun$group_separation,"при выполнении УЗИ по контуру образования в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_echogenicity_formation,dfXlsxJun$group_separation,"при выполнении УЗИ по эхогенности образования в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_structure,dfXlsxJun$group_separation,"при выполнении УЗИ по структуре узла в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_formation_blood_flow,dfXlsxJun$group_separation,"при выполнении УЗИ по кровотоку в образовании в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_elastography,dfXlsxJun$group_separation,"при выполнении УЗИ элатогарфия в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_region_lymph_nodes,dfXlsxJun$group_separation,"при выполнении УЗИ регионарные лимфоузлы в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_category_birads,dfXlsxJun$group_separation,"при выполнении УЗИ категория BIRADS в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_number_nodles,dfXlsxJun$group_separation,"при выполнении УЗИ количество узлов в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_diagnosis,dfXlsxJun$group_separation,"при выполнении УЗИ диагноз в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_calcinates_micro_pure,dfXlsxJun$group_separation,"при выполнении УЗИ кальцинаты в выборке до 40")
pvalueQualitativeText(dfXlsxJun$us_is_tumor,dfXlsxJun$group_separation,"при выполнении УЗИ поставлен рак в выборке до 40")


#Tumor
pvalueQualitativeText(dfXlsxJun$tumor_morphology_structure,dfXlsxJun$group_separation,"морфологическая структура найденных опухолей в выборке до 40")
pvalueQualitativeText(dfXlsxJun$cytological_conclusion,dfXlsxJun$group_separation,"цитология найденных опухолей в выборке до 40")
pvalueQualitativeText(dfXlsxJun$degree_malignancy,dfXlsxJun$group_separation,"уровень злокачественности найденных опухолей в выборке до 40")
pvalueQualitativeText(dfXlsxJun$tumor_receptors,dfXlsxJun$group_separation,"рецепторы найденных опухолей в выборке до 40")
pvalueQualitativeText(dfXlsxJun$hist_is_tumor,dfXlsxJun$group_separation,"гистологически поставлен рак в выборке до 40")


#####Sensitivity, Specifcity, Accuracy#######
#predicted_value, expected_value

SSA(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor)
# SSA(dfXlsxJun$mmg_is_tumor,dfXlsxJun$hist_is_tumor)
SSA(dfXlsxJun$abus_is_tumor,dfXlsxJun$hist_is_tumor)


SSA(dfXlsxGr1$us_is_tumor,dfXlsxGr1$hist_is_tumor)
# SSA(dfXlsxGr1$mmg_is_tumor,dfXlsxGr1$hist_is_tumor)
# SSA(dfXlsxGr1$abus_is_tumor,dfXlsxGr1$hist_is_tumor)




SSA(dfXlsxGr3$us_is_tumor,dfXlsxGr3$hist_is_tumor)
# SSA(dfXlsxGr3$mmg_is_tumor,dfXlsxGr3$hist_is_tumor)
SSA(dfXlsxGr3$abus_is_tumor,dfXlsxGr3$hist_is_tumor)



#####ROC cruve#######
library(pROC)



pROC_obj_usGr1 <- roc(dfXlsxGr1$hist_is_tumor,dfXlsxGr1$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

pROC_obj_usGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$us_probability,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)


pROC_obj_abusGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$abus_probability,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)


