#source("~/Статиьи и диссертации/ABUS_US_diagnostics/01. Preprocessing data/scripts/02. Real.R")
#source("~/Статиьи и диссертации/ABUS_US_diagnostics/01. Preprocessing data/scripts/01. Model.R")

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
How_many(dfUsDescribe$name_patient,"Всего в исследование вошло")
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кожа была ",dfUsDescribe$us_skin)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ протоки были ",dfUsDescribe$us_ducts)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ фон был ",dfUsBackgroundJun$us_background)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование находилось ",dfUsFormationJun$us_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование было ",dfUsDescribe$us_form)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ размер узла ",dfUsNodleSizeJun$us_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ контуры узлов были ",dfUsNodleContourJun$us_nodle_contour)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ эхогенность образования былы ",dfUsDescribe$us_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ структура узла ",dfUsStructureJun$us_structure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowJun$us_formation_blood_flow)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ элатография ",dfUsElastographyJun$us_elastography)   
Quantity_discr("В выборке до 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribe$us_region_lymph_nodes)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribe$us_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ количество узлов было ",dfUsDescribe$us_number_nodles)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisJun$us_diagnosis)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureJun$us_calcinates_micro_pure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз рак ",dfUsDiagnosisJun$is_tumor)

######MMG#######
Quantity_discr("В выборке до 40 лет при выполнении ММГ кожа ",dfMmgDescribeJun$mmg_conclusion_skin)
Quantity_discr("В выборке до 40 лет при выполнении ММГ ареола ",dfMmgDescribeJun$mmg_areola)
Quantity_discr("В выборке до 40 лет при выполнении ММГ сосок ",dfMmgDescribeJun$mmg_nipple)
Quantity_discr("В выборке до 40 лет при выполнении ММГ фон ",dfMmgDescribeJun$mmg_background_breast)
Quantity_discr("В выборке до 40 лет при выполнении ММГ узлы ",dfMmgNodleJun$mmg_nodle)
Quantity_discr("В выборке до 40 лет при выполнении ММГ контур узлов ",dfMmgNodleContourJun$mmg_nodle_contour)
Quantity_discr("В выборке до 40 лет при выполнении ММГ размер узлов ",dfMmgNodleSizeJun$mmg_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении ММГ кальцификаты ",dfMmgCalcificationsJun$mmg_calcifications)
Quantity_discr("В выборке до 40 лет при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeJun$mmg_number_formations_visualized)
Quantity_discr("В выборке до 40 лет при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeJun$mmg_axillary_lymph_nodes)
Quantity_discr("В выборке до 40 лет при выполнении ММГ количество узлов ",dfMmgDescribeJun$mmg_number_nodles)
Quantity_discr("В выборке до 40 лет при выполнении ММГ категория BIRADS ",dfMmgDescribeJun$mmg_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении ММГ заключение ММГ ",dfMmgConclusionJun$mmg_conclusion)
Quantity_discr("В выборке до 40 лет при выполнении ММГ поставлен рак ",dfMmgConclusionJun$is_tumor)


######ABUS#######
Quantity_discr("В выборке до 40 лет при выполнении ABUS кожа была ",dfAbusDescribeJun$abus_skin)
Quantity_discr("В выборке до 40 лет при выполнении ABUS размеры узлов были ",dfAbusNodleSizeJun$abus_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении ABUS контуры узлов были ",dfAbusNodleContoursJun$abus_nodle_contours)
Quantity_discr("В выборке до 40 лет при выполнении ABUS эхогенность образования ",dfAbusDescribeJun$abus_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении ABUS структура узлов ",dfAbusStructureJun$abus_structure)
Quantity_discr("В выборке до 40 лет при выполнении ABUS симптом ретракции ",dfAbusDescribeJun$abus_symptom_retraction)
Quantity_discr("В выборке до 40 лет при выполнении ABUS была установлена категория BIRADS ",dfAbusDescribeJun$abus_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении ABUS количество узлов ",dfAbusDescribeJun$abus_number_nodles )
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз ",dfAbusDiagnosisJun$abus_diagnosis)
Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeJun$abus_calcinates)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз рак ",dfAbusDiagnosisJun$is_tumor)


######MRSI#######
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",dfMrsiDescribeJun$mrsi_data)
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",dfMrsiDescribeJun$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В выборке до 40 лет была морфологическая структура  ",dfMorphologyStructureTumorJun$tumor_morphology_structure)
Quantity_discr("В выборке до 40 лет при выполнении цитологии было заключение  ",dfDescrTumorJun$cytological_conclusion)
Quantity_discr("В выборке до 40 лет был определен уровень злокачественности  ",dfDescrTumorJun$degree_malignancy)
Quantity_discr("В выборке до 40 лет был определены рецеторы  ",dfReceptorsJun$tumor_receptors)
Quantity_discr("В выборке до 40 лет гистологически поставлен рак  ",dfMorphologyStructureTumorJun$is_tumor)




#####gr1#######
######US#######
escribir ("3.2 Общее Описание результатов исследования УЗИ В первой группе ")
How_many(dfUsDescribeGr1$name_patient,"Всего в исследование вошло")
Quantity_discr("В первой группе при выполнении УЗИ кожа была ",dfUsDescribeGr1$us_skin)
Quantity_discr("В первой группе при выполнении УЗИ протоки были ",dfUsDescribeGr1$us_ducts)
Quantity_discr("В первой группе при выполнении УЗИ фон был ",dfUsBackgroundGr1$us_background)
Quantity_discr("В первой группе при выполнении УЗИ образование находилось ",dfUsFormationGr1$us_formation)
Quantity_discr("В первой группе при выполнении УЗИ образование было ",dfUsDescribeGr1$us_form)
Quantity_discr("В первой группе при выполнении УЗИ размер узла ",dfUsNodleSizeGr1$us_nodle_size)
Quantity_discr("В первой группе при выполнении УЗИ контуры узлов были ",dfUsNodleContourGr1$us_nodle_contour)
Quantity_discr("В первой группе при выполнении УЗИ эхогенность образования былы ",dfUsDescribeGr1$us_echogenicity_formation)
Quantity_discr("В первой группе при выполнении УЗИ структура узла ",dfUsStructureGr1$us_structure)
Quantity_discr("В первой группе при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowGr1$us_formation_blood_flow)
Quantity_discr("В первой группе при выполнении УЗИ элатография ",dfUsElastographyGr1$us_elastography)   
Quantity_discr("В первой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribeGr1$us_region_lymph_nodes)
Quantity_discr("В первой группе при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribeGr1$us_category_birads )
Quantity_discr("В первой группе при выполнении УЗИ количество узлов было ",dfUsDescribeGr1$us_number_nodles)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisGr1$us_diagnosis)
Quantity_discr("В первой группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr1$us_calcinates_micro_pure)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз рак ",dfUsDiagnosisGr1$is_tumor)

######MMG#######
Quantity_discr("В первой группе лет при выполнении ММГ кожа ",dfMmgDescribeGr1$mmg_conclusion_skin)
Quantity_discr("В первой группе лет при выполнении ММГ ареола ",dfMmgDescribeGr1$mmg_areola)
Quantity_discr("В первой группе лет при выполнении ММГ сосок ",dfMmgDescribeGr1$mmg_nipple)
Quantity_discr("В первой группе лет при выполнении ММГ фон ",dfMmgDescribeGr1$mmg_background_breast)
Quantity_discr("В первой группе лет при выполнении ММГ узлы ",dfMmgNodleGr1$mmg_nodle)
Quantity_discr("В первой группе лет при выполнении ММГ контур узлов ",dfMmgNodleContourGr1$mmg_nodle_contour)
Quantity_discr("В первой группе лет при выполнении ММГ размер узлов ",dfMmgNodleSizeGr1$mmg_nodle_size)
Quantity_discr("В первой группе лет при выполнении ММГ кальцификаты ",dfMmgCalcificationsGr1$mmg_calcifications)
Quantity_discr("В первой группе лет при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeGr1$mmg_number_formations_visualized)
Quantity_discr("В первой группе лет при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeGr1$mmg_axillary_lymph_nodes)
Quantity_discr("В первой группе лет при выполнении ММГ количество узлов ",dfMmgDescribeGr1$mmg_number_nodles)
Quantity_discr("В первой группе лет при выполнении ММГ категория BIRADS ",dfMmgDescribeGr1$mmg_category_birads)
Quantity_discr("В первой группе лет при выполнении ММГ заключение ММГ ",dfMmgConclusionGr1$mmg_conclusion)
Quantity_discr("В первой группе лет при выполнении ММГ поставлен рак ",dfMmgConclusionGr1$is_tumor)


######ABUS#######
Quantity_discr("В первой группе при выполнении ABUS кожа была ",dfAbusDescribeGr1$abus_skin)
Quantity_discr("В первой группе при выполнении ABUS размеры узлов были ",dfAbusNodleSizeGr1$abus_nodle_size)
Quantity_discr("В первой группе при выполнении ABUS контуры узлов были ",dfAbusNodleContoursGr1$abus_nodle_contours)
Quantity_discr("В первой группе при выполнении ABUS эхогенность образования ",dfAbusDescribeGr1$abus_echogenicity_formation)
Quantity_discr("В первой группе при выполнении ABUS структура узлов ",dfAbusStructureGr1$abus_structure)
Quantity_discr("В первой группе при выполнении ABUS симптом ретракции ",dfAbusDescribeGr1$abus_symptom_retraction)
Quantity_discr("В первой группе при выполнении ABUS была установлена категория BIRADS ",dfAbusDescribeGr1$abus_category_birads)
Quantity_discr("В первой группе при выполнении ABUS количество узлов ",dfAbusDescribeGr1$abus_number_nodles)
Quantity_discr("В первой группе при выполнении ABUS был поставлен диагноз ",dfAbusDiagnosisGr1$abus_diagnosis)
Quantity_discr("В первой группе при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeGr1$abus_calcinates)


######MRSI#######
Quantity_discr("В первой группе при выполнении МРТ были  ",dfMrsiDescribeGr1$mrsi_data)
Quantity_discr("В первой группе при выполнении МРТ были  ",dfMrsiDescribeGr1$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В первой группе была морфологическая структура  ",dfMorphologyStructureTumorGr1$tumor_morphology_structure)
Quantity_discr("В первой группе при выполнении цитологии было заключение  ",dfDescrTumorGr1$cytological_conclusion)
Quantity_discr("В первой группе был определен уровень злокачественности  ",dfDescrTumorGr1$degree_malignancy)
Quantity_discr("В первой группе был определены рецеторы   ",dfReceptorsGr1$tumor_receptors)
Quantity_discr("В первой группе гистологически поставлен рак ",dfMorphologyStructureTumorGr1$is_tumor)



#####gr3######
######US#######
escribir ("3.3 Общее Описание результатов исследования УЗИ В третьей группе ")
How_many(dfUsDescribeGr3$name_patient,"Всего в исследование вошло")
Quantity_discr("В третьей группе при выполнении УЗИ кожа была ",dfUsDescribeGr3$us_skin)
Quantity_discr("В третьей группе при выполнении УЗИ протоки были ",dfUsDescribeGr3$us_ducts)
Quantity_discr("В третьей группе при выполнении УЗИ фон был ",dfUsBackgroundGr3$us_background)
Quantity_discr("В третьей группе при выполнении УЗИ образование находилось ",dfUsFormationGr3$us_formation)
Quantity_discr("В третьей группе при выполнении УЗИ образование было ",dfUsDescribeGr3$us_form)
Quantity_discr("В третьей группе при выполнении УЗИ размер узла ",dfUsNodleSizeGr3$us_nodle_size)
Quantity_discr("В третьей группе при выполнении УЗИ контуры узлов были ",dfUsNodleContourGr3$us_nodle_contour)
Quantity_discr("В третьей группе при выполнении УЗИ эхогенность образования былы ",dfUsDescribeGr3$us_echogenicity_formation)
Quantity_discr("В третьей группе при выполнении УЗИ структура узла ",dfUsStructureGr3$us_structure)
Quantity_discr("В третьей группе при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowGr3$us_formation_blood_flow)
Quantity_discr("В третьей группе при выполнении УЗИ элатография ",dfUsElastographyGr3$us_elastography)   
Quantity_discr("В третьей группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribeGr3$us_region_lymph_nodes)
Quantity_discr("В третьей группе при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribeGr3$us_category_birads)
Quantity_discr("В третьей группе при выполнении УЗИ количество узлов было ",dfUsDescribeGr3$us_number_nodles)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisGr3$us_diagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr3$us_calcinates_micro_pure)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisGr3$us_diagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз рак ",dfUsDiagnosisGr3$is_tumor)

######MMG#######
Quantity_discr("В третьей группе лет при выполнении ММГ кожа ",dfMmgDescribeGr3$mmg_conclusion_skin)
Quantity_discr("В третьей группе лет при выполнении ММГ ареола ",dfMmgDescribeGr3$mmg_areola)
Quantity_discr("В третьей группе лет при выполнении ММГ сосок ",dfMmgDescribeGr3$mmg_nipple)
Quantity_discr("В третьей группе лет при выполнении ММГ фон ",dfMmgDescribeGr3$mmg_background_breast)
Quantity_discr("В третьей группе лет при выполнении ММГ узлы ",dfMmgNodleGr3$mmg_nodle)
Quantity_discr("В третьей группе лет при выполнении ММГ контур узлов ",dfMmgNodleContourGr3$mmg_nodle_contour)
Quantity_discr("В третьей группе лет при выполнении ММГ размер узлов ",dfMmgNodleSizeGr3$mmg_nodle_size)
Quantity_discr("В третьей группе лет при выполнении ММГ кальцификаты ",dfMmgCalcificationsGr3$mmg_calcifications)
Quantity_discr("В третьей группе лет при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeGr3$mmg_number_formations_visualized)
Quantity_discr("В третьей группе лет при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeGr3$mmg_axillary_lymph_nodes)
Quantity_discr("В третьей группе лет при выполнении ММГ количество узлов ",dfMmgDescribeGr3$mmg_number_nodles)
Quantity_discr("В третьей группе лет при выполнении ММГ категория BIRADS ",dfMmgDescribeGr3$mmg_category_birads)
Quantity_discr("В третьей группе лет при выполнении ММГ заключение ММГ ",dfMmgConclusionGr3$mmg_conclusion)
Quantity_discr("В третьей группе лет при выполнении ММГ поставлен рак ",dfMmgConclusionGr3$is_tumor)


######ABUS#######
Quantity_discr("В третьей группе при выполнении ABUS кожа была ",dfAbusDescribeGr3$abus_skin)
Quantity_discr("В третьей группе при выполнении ABUS размеры узлов были ",dfAbusNodleSizeGr3$abus_nodle_size)
Quantity_discr("В третьей группе при выполнении ABUS контуры узлов были ",dfAbusNodleContoursGr3$abus_nodle_contours)
Quantity_discr("В третьей группе при выполнении ABUS эхогенность образования ",dfAbusDescribeGr3$abus_echogenicity_formation)
Quantity_discr("В третьей группе при выполнении ABUS структура узлов ",dfAbusStructureGr3$abus_structure)
Quantity_discr("В третьей группе при выполнении ABUS симптом ретракции ",dfAbusDescribeGr3$abus_symptom_retraction)
Quantity_discr("В третьей группе при выполнении ABUS была установлена категория BIRADS ",dfAbusDescribeGr3$abus_category_birads)
Quantity_discr("В третьей группе при выполнении ABUS количество узлов ",dfAbusDescribeGr3$abus_number_nodles)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз ",dfAbusDiagnosisGr3$abus_diagnosis)
Quantity_discr("В третьей группе при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeGr3$abus_calcinates)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз рак ",dfAbusDiagnosisGr3$is_tumor)




######MRSI#######
Quantity_discr("В третьей группе при выполнении МРТ были  ",dfMrsiDescribeGr3$mrsi_data)
Quantity_discr("В третьей группе при выполнении МРТ были  ",dfMrsiDescribeGr3$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В третьей группе была морфологическая структура  ",dfMorphologyStructureTumorGr3$tumor_morphology_structure)
Quantity_discr("В третьей группе при выполнении цитологии было заключение  ",dfDescrTumorGr3$cytological_conclusion)
Quantity_discr("В третьей группе был определен уровень злокачественности  ",dfDescrTumorGr3$degree_malignancy)
Quantity_discr("В третьей группе был определены рецеторы ",dfReceptorsGr3$tumor_receptors)
Quantity_discr("В третьей группе гистологически поставлен диагноз рак ",dfMorphologyStructureTumorGr3$is_tumor)





#####Comparison#######
##US
# pvalueQualitativeText(dfUsDescribeJun$us_skin,dfUsDescribeJun$group_separation,"при выполнении УЗИ по кожа в выборке до 40")
escribir ("Разница между группами при выполнении УЗИ по кожа в выборке до 40  составила 1 .")
pvalueQualitativeText(dfUsDescribeJun$us_ducts,dfUsDescribeJun$group_separation,"при выполнении УЗИ по протокам в выборке до 40")
pvalueQualitativeText(dfUsBackgroundJun$us_background,dfUsBackgroundJun$group_separation,"при выполнении УЗИ по фону в выборке до 40")
pvalueQualitativeText(dfUsFormationJun$us_formation,dfUsFormationJun$group_separation,"при выполнении УЗИ по нахождению узла в выборке до 40")
pvalueQualitativeText(dfUsDescribeJun$us_form,dfUsDescribeJun$group_separation,"при выполнении УЗИ по форме образования в выборке до 40")
pvalueQualitativeText(dfUsNodleSizeJun$us_nodle_size,dfUsNodleSizeJun$group_separation,"при выполнении УЗИ по размеру образования в выборке до 40")
pvalueQualitativeText(dfUsNodleContourJun$us_nodle_contour,dfUsNodleContourJun$group_separation,"при выполнении УЗИ по контуру образования в выборке до 40")
pvalueQualitativeText(dfUsDescribeJun$us_echogenicity_formation,dfUsDescribeJun$group_separation,"при выполнении УЗИ по эхогенности образования в выборке до 40")
pvalueQualitativeText(dfUsStructureJun$us_structure,dfUsStructureJun$group_separation,"при выполнении УЗИ по структуре узла в выборке до 40")
pvalueQualitativeText(dfUsFormationBloodFlowJun$us_formation_blood_flow,dfUsFormationBloodFlowJun$group_separation,"при выполнении УЗИ по кровотоку в образовании в выборке до 40")
pvalueQualitativeText(dfUsElastographyJun$us_elastography,dfUsElastographyJun$group_separation,"при выполнении УЗИ элатогарфия в выборке до 40")
pvalueQualitativeText(dfUsDescribeJun$us_region_lymph_nodes,dfUsDescribeJun$group_separation,"при выполнении УЗИ регионарные лимфоузлы в выборке до 40")
pvalueQualitativeText(dfUsDescribeJun$us_category_birads,dfUsDescribeJun$group_separation,"при выполнении УЗИ категория BIRADS в выборке до 40")
pvalueQualitativeText(dfUsDescribeJun$us_number_nodles,dfUsDescribeJun$group_separation,"при выполнении УЗИ количество узлов в выборке до 40")
pvalueQualitativeText(dfUsDiagnosisJun$us_diagnosis,dfUsDiagnosisJun$group_separation,"при выполнении УЗИ диагноз в выборке до 40")
pvalueQualitativeText(dfUsCalcinatesMicroPureJun$us_calcinates_micro_pure,dfUsCalcinatesMicroPureJun$group_separation,"при выполнении УЗИ кальцинаты в выборке до 40")
pvalueQualitativeText(dfUsDiagnosisJun$is_tumor,dfUsDiagnosisJun$group_separation,"при выполнении УЗИ поставлен рак в выборке до 40")


#Tumor
pvalueQualitativeText(dfMorphologyStructureTumorJun$tumor_morphology_structure,dfMorphologyStructureTumorJun$group_separation,"морфологическая структура найденных опухолей в выборке до 40")
pvalueQualitativeText(dfDescrTumorJun$cytological_conclusion,dfDescrTumorJun$group_separation,"цитология найденных опухолей в выборке до 40")
pvalueQualitativeText(dfDescrTumorJun$degree_malignancy,dfDescrTumorJun$group_separation,"уровень злокачественности найденных опухолей в выборке до 40")
pvalueQualitativeText(dfReceptorsJun$tumor_receptors,dfReceptorsJun$group_separation,"рецепторы найденных опухолей в выборке до 40")
pvalueQualitativeText(dfMorphologyStructureTumorJun$is_tumor,dfMorphologyStructureTumorJun$group_separation,"гистологически поставлен рак в выборке до 40")


#####Sensitivity, Specifcity, Accuracy#######

tumor_gr1 <-  binary_table (dfIsTumorGr1$tumor_is)
us_tumor_gr1 <- binary_table (dfUsIsTumorGr1$us_is_tumor)
mmg_tumor_gr1 <- binary_table (dfMmgIsTumorGr1$mmg_is_tumor)

SSA(us_tumor_gr1,tumor_gr1)
SSA(mmg_tumor_gr1,tumor_gr1)

tumor_gr3 <-  binary_table (dfIsTumorGr3$tumor_is)
us_tumor_gr3 <- binary_table (dfUsIsTumorGr3$us_is_tumor)
mmg_tumor_gr3 <- binary_table (dfMmgIsTumorGr3$mmg_is_tumor)
abus_tumor_gr3 <- binary_table (dfAbusIsTumorGr3$abus_is_tumor)

SSA(us_tumor_gr3,tumor_gr3)
SSA(mmg_tumor_gr3,tumor_gr3)
SSA(abus_tumor_gr3,tumor_gr3)


tumor_gr1_3 <-  binary_table (dfIsTumor$tumor_is)
us_tumor_gr1_3 <- binary_table (dfUsIsTumor$us_is_tumor)
mmg_tumor_gr1_3 <- binary_table (dfMmgIsTumor$mmg_is_tumor)
abus_tumor_gr1_3 <- binary_table (dfAbusIsTumor$abus_is_tumor)

SSA(us_tumor_gr1_3,tumor_gr1_3)
SSA(mmg_tumor_gr1_3,tumor_gr1_3)
SSA(abus_tumor_gr1_3,tumor_gr1_3)







