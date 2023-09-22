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



#####General#######
######US#######
escribir ("4.1 Общее Описание результатов исследований в выборке после 40 лет ")
How_many(dfUsDescribeSin$name_patient,"Всего в выборкe после 40 лет вошло")
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кожа была ",dfUsDescribeSin$us_skin)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ протоки были ",dfUsDescribeSin$us_ducts)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ фон был ",dfUsBackgroundSin$us_background)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование находилось ",dfUsFormationSin$us_formation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование было ",dfUsDescribeSin$us_form)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ размер узла ",dfUsNodleSizeSin$us_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ контуры узлов были ",dfUsNodleContourSin$us_nodle_contour)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ эхогенность образования былы ",dfUsDescribeSin$us_echogenicity_formation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ структура узла ",dfUsStructureSin$us_structure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowSin$us_formation_blood_flow)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ элатография ",dfUsElastographySin$us_elastography)   
Quantity_discr("В выборке после 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribeSin$us_region_lymph_nodes)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribeSin$us_category_birads)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ количество узлов было ",dfUsDescribeSin$us_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisSin$us_diagnosis)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureSin$us_calcinates_micro_pure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ поставлен рак ",dfUsDiagnosisSin$is_tumor)

######MMG#######
Quantity_discr("В выборке после 40 лет при выполнении ММГ кожа ",dfMmgDescribeSin$mmg_conclusion_skin)
Quantity_discr("В выборке после 40 лет при выполнении ММГ ареола ",dfMmgDescribeSin$mmg_areola)
Quantity_discr("В выборке после 40 лет при выполнении ММГ сосок ",dfMmgDescribeSin$mmg_nipple)
Quantity_discr("В выборке после 40 лет при выполнении ММГ фон ",dfMmgDescribeSin$mmg_background_breast)
Quantity_discr("В выборке после 40 лет при выполнении ММГ узлы ",dfMmgNodleSin$mmg_nodle)
Quantity_discr("В выборке после 40 лет при выполнении ММГ контур узлов ",dfMmgNodleContourSin$mmg_nodle_contour)
Quantity_discr("В выборке после 40 лет при выполнении ММГ размер узлов ",dfMmgNodleSizeSin$mmg_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении ММГ кальцификаты ",dfMmgCalcificationsSin$mmg_calcifications)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeSin$mmg_number_formations_visualized)
Quantity_discr("В выборке после 40 лет при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeSin$mmg_axillary_lymph_nodes)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество узлов ",dfMmgDescribeSin$mmg_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении ММГ категория BIRADS ",dfMmgDescribeSin$mmg_category_birads)
Quantity_discr("В выборке после 40 лет при выполнении ММГ заключение ММГ ",dfMmgConclusionSin$mmg_conclusion )
Quantity_discr("В выборке после 40 лет при выполнении ММГ поставлен рак ",dfMmgConclusionSin$is_tumor)


######ABUS#######
Quantity_discr("В выборке после 40 лет при выполнении ABUS кожа была ",dfAbusDescribeSin$abus_skin)
Quantity_discr("В выборке после 40 лет при выполнении ABUS размеры узлов были ",dfAbusNodleSizeSin$abus_nodle_size)
Quantity_discr("В выборке после 40 лет при выполнении ABUS контуры узлов были ",dfAbusNodleContoursSin$abus_nodle_contours)
Quantity_discr("В выборке после 40 лет при выполнении ABUS эхогенность образования ",dfAbusDescribeSin$abus_echogenicity_formation)
Quantity_discr("В выборке после 40 лет при выполнении ABUS структура узлов ",dfAbusStructureSin$abus_structure)
Quantity_discr("В выборке после 40 лет при выполнении ABUS симптом ретракции ",dfAbusDescribeSin$abus_symptom_retractionn)
Quantity_discr("В выборке после 40 лет при выполнении ABUS была установлена категория BIRADS ",dfAbusDescribeSin$abus_category_birads )
Quantity_discr("В выборке после 40 лет при выполнении ABUS количество узлов ",dfAbusDescribeSin$abus_number_nodles)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз ",dfAbusDiagnosisSin$abus_diagnosis)
Quantity_discr("В выборке после 40 лет при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeSin$abus_calcinates)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз рак ",dfAbusDiagnosisSin$is_tumor)


######MRSI#######
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",dfMrsiDescribeSin$mrsi_data)
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",dfMrsiDescribeSin$mrsi_number_nodles)

######Tumor#######
Quantity_discr("В выборке после 40 лет была морфологическая структура  ",dfMorphologyStructureTumorSin$tumor_morphology_structure)
Quantity_discr("В выборке после 40 лет при выполнении цитологии было заключение  ",dfDescrTumorSin$cytological_conclusion)
Quantity_discr("В выборке после 40 лет был определен уровень злокачественности  ",dfDescrTumorSin$degree_malignancy)
Quantity_discr("В выборке после 40 лет был определены рецеторы  ",dfReceptorsSin$tumor_receptors)
Quantity_discr("В выборке после 40 лет гистологически поставлен рак ",dfMorphologyStructureTumorSin$is_tumor)



#####Gr2#######
######US#######
escribir ("4.2 Общее Описание результатов исследований Во второй группе ")
How_many(dfUsDescribeGr2$name_patient,"Всего во вторую группу вошло")
Quantity_discr("Во второй группе при выполнении УЗИ кожа была ",dfUsDescribeGr2$us_skin)
Quantity_discr("Во второй группе при выполнении УЗИ протоки были ",dfUsDescribeGr2$us_ducts)
Quantity_discr("Во второй группе при выполнении УЗИ фон был ",dfUsBackgroundGr2$us_background)
Quantity_discr("Во второй группе при выполнении УЗИ образование находилось ",dfUsFormationGr2$us_formation)
Quantity_discr("Во второй группе при выполнении УЗИ образование было ",dfUsDescribeGr2$us_form)
Quantity_discr("Во второй группе при выполнении УЗИ размер узла ",dfUsNodleSizeGr2$us_nodle_size)
Quantity_discr("Во второй группе при выполнении УЗИ контуры узлов были ",dfUsNodleContourGr2$us_nodle_contour)
Quantity_discr("Во второй группе при выполнении УЗИ эхогенность образования былы ",dfUsDescribeGr2$us_echogenicity_formation)
Quantity_discr("Во второй группе при выполнении УЗИ структура узла ",dfUsStructureGr2$us_structure)
Quantity_discr("Во второй группе при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowGr2$us_formation_blood_flow)
Quantity_discr("Во второй группе при выполнении УЗИ элатография ",dfUsElastographyGr2$us_elastography)   
Quantity_discr("Во второй группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribeGr2$us_region_lymph_nodes)
Quantity_discr("Во второй группе при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribeGr2$CategoryBiradsUltrasound)
Quantity_discr("Во второй группе при выполнении УЗИ количество узлов было ",dfUsDescribeGr2$us_number_nodles)
Quantity_discr("Во второй группе при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisGr2$us_diagnosis)
Quantity_discr("Во второй группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr2$us_calcinates_micro_pure)
Quantity_discr("Во второй группе при выполнении УЗИ поставлен рак ",dfUsDiagnosisGr2$is_tumor)

######MMG#######
Quantity_discr("Во второй группе при выполнении ММГ кожа ",dfMmgDescribeGr2$mmg_conclusion_skin)
Quantity_discr("Во второй группе при выполнении ММГ ареола ",dfMmgDescribeGr2$mmg_areola)
Quantity_discr("Во второй группе при выполнении ММГ сосок ",dfMmgDescribeGr2$mmg_nipple)
Quantity_discr("Во второй группе при выполнении ММГ фон ",dfMmgDescribeGr2$mmg_background_breast)
Quantity_discr("Во второй группе при выполнении ММГ узлы ",dfMmgNodleGr2$mmg_nodle)
Quantity_discr("Во второй группе при выполнении ММГ контур узлов ",dfMmgNodleContourGr2$mmg_nodle_contour)
Quantity_discr("Во второй группе при выполнении ММГ размер узлов ",dfMmgNodleSizeGr2$mmg_nodle_size)
Quantity_discr("Во второй группе при выполнении ММГ кальцификаты ",dfMmgCalcificationsGr2$mmg_calcifications)
Quantity_discr("Во второй группе при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeGr2$mmg_number_formations_visualized)
Quantity_discr("Во второй группе при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeGr2$mmg_axillary_lymph_nodes)
Quantity_discr("Во второй группе при выполнении ММГ количество узлов ",dfMmgDescribeGr2$mmg_number_nodles)
Quantity_discr("Во второй группе при выполнении ММГ категория BIRADS ",dfMmgDescribeGr2$mmg_category_birads)
Quantity_discr("Во второй группе при выполнении ММГ заключение ММГ ",dfMmgConclusionGr2$mmg_conclusion)
Quantity_discr("Во второй группе при выполнении ММГ поставлен рак ",dfMmgConclusionGr2$is_tumor)


######ABUS#######
Quantity_discr("Во второй группе при выполнении ABUS кожа была ",dfAbusDescribeGr2$abus_skin)
Quantity_discr("Во второй группе при выполнении ABUS размеры узлов были ",dfAbusNodleSizeGr2$abus_nodle_size)
Quantity_discr("Во второй группе при выполнении ABUS контуры узлов были ",dfAbusNodleContoursGr2$abus_nodle_contours)
Quantity_discr("Во второй группе при выполнении ABUS эхогенность образования ",dfAbusDescribeGr2$abus_echogenicity_formation)
Quantity_discr("Во второй группе при выполнении ABUS структура узлов ",dfAbusStructureGr2$abus_structure)
Quantity_discr("Во второй группе при выполнении ABUS симптом ретракции ",dfAbusDescribeGr2$abus_symptom_retraction)
Quantity_discr("Во второй группе при выполнении ABUS была установлена категория BIRADS ",dfAbusDescribeGr2$abus_category_birads)
Quantity_discr("Во второй группе при выполнении ABUS количество узлов ",dfAbusDescribeGr2$abus_number_nodles)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз ",dfAbusDiagnosisGr2$abus_diagnosis)
Quantity_discr("Во второй группе при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeGr2$abus_calcinates)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз рак ",dfAbusDiagnosisGr2$is_tumor)


######MRSI#######
Quantity_discr("Во второй группе при выполнении МРТ были  ",dfMrsiDescribeGr2$mrsi_data)
Quantity_discr("Во второй группе при выполнении МРТ были  ",dfMrsiDescribeGr2$mrsi_number_nodles)

######Tumor#######
Quantity_discr("Во второй группе была морфологическая структура  ",dfMorphologyStructureTumorGr2$tumor_morphology_structure)
Quantity_discr("Во второй группе при выполнении цитологии было заключение  ",dfDescrTumorGr2$cytological_conclusion)
Quantity_discr("Во второй группе был определен уровень злокачественности  ",dfDescrTumorGr2$degree_malignancy)
Quantity_discr("Во второй группе был определены рецеторы  ",dfReceptorsGr2$tumor_receptors)
Quantity_discr("Во второй группе гистологически поставлен рак ",dfMorphologyStructureTumorGr2$is_tumor)

#####Gr4#######
######US#######
escribir ("4.3 Общее Описание результатов исследований Во четвертой группе ")
How_many(dfUsDescribeGr4$name_patient,"Всего в исследование вошло")
Quantity_discr("Во четвертой группе при выполнении УЗИ кожа была ",dfUsDescribeGr4$us_skin)
Quantity_discr("Во четвертой группе при выполнении УЗИ протоки были ",dfUsDescribeGr4$us_ducts)
Quantity_discr("Во четвертой группе при выполнении УЗИ фон был ",dfUsBackgroundGr4$us_background)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование находилось ",dfUsFormationGr4$us_formation)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование было ",dfUsDescribeGr4$us_form)
Quantity_discr("Во четвертой группе при выполнении УЗИ размер узла ",dfUsNodleSizeGr4$us_nodle_size)
Quantity_discr("Во четвертой группе при выполнении УЗИ контуры узлов были ",dfUsNodleContourGr4$us_nodle_contour)
Quantity_discr("Во четвертой группе при выполнении УЗИ эхогенность образования былы ",dfUsDescribeGr4$us_echogenicity_formation)
Quantity_discr("Во четвертой группе при выполнении УЗИ структура узла ",dfUsStructureGr4$us_structure)
Quantity_discr("Во четвертой группе при выполнении УЗИ кровоток в образовании ",dfUsFormationBloodFlowGr4$us_formation_blood_flow)
Quantity_discr("Во четвертой группе при выполнении УЗИ элатография ",dfUsElastographyGr4$us_elastography)   
Quantity_discr("Во четвертой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUsDescribeGr4$us_region_lymph_nodes)
Quantity_discr("Во четвертой группе при выполнении УЗИ была установлена категория BIRADS ",dfUsDescribeGr4$us_category_birads)
Quantity_discr("Во четвертой группе при выполнении УЗИ количество узлов было ",dfUsDescribeGr4$us_number_nodles)
Quantity_discr("Во четвертой группе при выполнении УЗИ был поставлен диагноз ",dfUsDiagnosisGr4$us_diagnosis)
Quantity_discr("Во четвертой группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr4$us_calcinates_micro_pure)
Quantity_discr("Во четвертой группе при выполнении УЗИ поставлен рак ",dfUsDiagnosisGr4$is_tumor)

######MMG#######
Quantity_discr("Во четвертой группе при выполнении ММГ кожа ",dfMmgDescribeGr4$mmg_conclusion_skin)
Quantity_discr("Во четвертой группе при выполнении ММГ ареола ",dfMmgDescribeGr4$mmg_areola)
Quantity_discr("Во четвертой группе при выполнении ММГ сосок ",dfMmgDescribeGr4$mmg_nipple)
Quantity_discr("Во четвертой группе при выполнении ММГ фон ",dfMmgDescribeGr4$mmg_background_breast)
Quantity_discr("Во четвертой группе при выполнении ММГ узлы ",dfMMGnodleGr4$mmg_nodle)
Quantity_discr("Во четвертой группе при выполнении ММГ контур узлов ",dfMMGnodleContourGr4$mmg_nodle_contour)
Quantity_discr("Во четвертой группе при выполнении ММГ размер узлов ",dfMMGnodleSizeGr4$mmg_nodle_size)
Quantity_discr("Во четвертой группе при выполнении ММГ кальцификаты ",dfMMGcalcificationsGr4$mmg_calcifications)
Quantity_discr("Во четвертой группе при выполнении ММГ количество визуализыруемых образований ",dfMmgDescribeGr4$mmg_number_formations_visualized)
Quantity_discr("Во четвертой группе при выполнении ММГ подмышечные лимфоузлы ",dfMmgDescribeGr4$mmg_axillary_lymph_nodes)
Quantity_discr("Во четвертой группе при выполнении ММГ количество узлов ",dfMmgDescribeGr4$mmg_number_nodles)
Quantity_discr("Во четвертой группе при выполнении ММГ категория BIRADS ",dfMmgDescribeGr4$mmg_category_birads)
Quantity_discr("Во четвертой группе при выполнении ММГ заключение ММГ ",dfconclusionMMGGr4$mmg_conclusion)
Quantity_discr("Во четвертой группе при выполнении ММГ поставлен рак ",dfconclusionMMGGr4$is_tumor)


######ABUS#######
Quantity_discr("Во четвертой группе при выполнении ABUS кожа была ",dfAbusDescribeGr4$abus_skin)
Quantity_discr("Во четвертой группе при выполнении ABUS размеры узлов были ",dfABUSnodleSizeGr4$abus_nodle_size)
Quantity_discr("Во четвертой группе при выполнении ABUS контуры узлов были ",dfABUSnodleContoursGr4$abus_nodle_contours)
Quantity_discr("Во четвертой группе при выполнении ABUS эхогенность образования ",dfABUSdiscrGr4$abus_echogenicity_formation)
Quantity_discr("Во четвертой группе при выполнении ABUS структура узлов ",dfABUSstructureGr4$abus_structure)
Quantity_discr("Во четвертой группе при выполнении ABUS симптом ретракции ",dfABUSdiscrGr4$abus_symptom_retraction)
Quantity_discr("Во четвертой группе при выполнении ABUS была установлена категория BIRADS ",dfABUSdiscrGr4$abus_category_birads)
Quantity_discr("Во четвертой группе при выполнении ABUS количество узлов ",dfABUSdiscrGr4$ABUSnumberNodles)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз ",dfABUSdiagnosisGr4$abus_diagnosis)
Quantity_discr("Во четвертой группе при выполнении ABUS были найдены кальцинаты ",dfABUSdiscrGr4$abus_calcinates)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз рак ",dfABUSdiagnosisGr4$is_tumor)


######MRSI#######
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",dfMrsiDescribeGr4$mrsi_data)
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",dfMrsiDescribeGr4$mrsi_number_nodles)

######Tumor#######
Quantity_discr("Во четвертой группе была морфологическая структура  ",dfMorphologyStructureTumorGr4$tumor_morphology_structure)
Quantity_discr("Во четвертой группе при выполнении цитологии было заключение  ",dfDescrTumorGr4$cytological_conclusion)
Quantity_discr("Во четвертой группе был определен уровень злокачественности  ",dfDescrTumorGr4$degree_malignancy)
Quantity_discr("Во четвертой группе был определены рецеторы  ",dfReceptorsGr4$tumor_receptors)
Quantity_discr("Во четвертой группе гистологически поставлен рак ",dfmorphologyStructureTumorGr4$is_tumor)



#####Comparison#######
##US
pvalueQualitativeText(dfUsDescribeSin$us_skin,dfUsDescribeSin$group_separation,"при выполнении УЗИ по кожа в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_ducts,dfUsDescribeSin$group_separation,"при выполнении УЗИ по протокам в выборке после 40")
pvalueQualitativeText(dfUsBackgroundSin$us_background,dfUsBackgroundSin$group_separation,"при выполнении УЗИ по фону в выборке после 40")
pvalueQualitativeText(dfUsFormationSin$us_formation,dfUsFormationSin$group_separation,"при выполнении УЗИ по нахождению узла в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_form,dfUsDescribeSin$group_separation,"при выполнении УЗИ по форме образования в выборке после 40")
pvalueQualitativeText(dfUsNodleSizeSin$us_nodle_size,dfUsNodleSizeSin$group_separation,"при выполнении УЗИ по размеру образования в выборке после 40")
pvalueQualitativeText(dfUsNodleContourSin$us_nodle_contour,dfUsNodleContourSin$group_separation,"при выполнении УЗИ по контуру образования в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_echogenicity_formation,dfUsDescribeSin$group_separation,"при выполнении УЗИ по эхогенности образования в выборке после 40")
pvalueQualitativeText(dfUsStructureSin$us_structure,dfUsStructureSin$group_separation,"при выполнении УЗИ по структуре узла в выборке после 40")
pvalueQualitativeText(dfUsFormationBloodFlowSin$us_formation_blood_flow,dfUsFormationBloodFlowSin$group_separation,"при выполнении УЗИ по кровотоку в образовании в выборке после 40")
pvalueQualitativeText(dfUsElastographySin$us_elastography,dfUsElastographySin$group_separation,"при выполнении УЗИ элатогарфия в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_region_lymph_nodes,dfUsDescribeSin$group_separation,"при выполнении УЗИ регионарные лимфоузлы в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_category_birads,dfUsDescribeSin$group_separation,"при выполнении УЗИ категория BIRADS в выборке после 40")
pvalueQualitativeText(dfUsDescribeSin$us_number_nodles,dfUsDescribeSin$group_separation,"при выполнении УЗИ количество узлов в выборке после 40")
pvalueQualitativeText(dfUsDiagnosisSin$us_diagnosis,dfUsDiagnosisSin$group_separation,"при выполнении УЗИ диагноз в выборке после 40")
pvalueQualitativeText(dfUsCalcinatesMicroPureSin$us_calcinates_micro_pure,dfUsCalcinatesMicroPureSin$group_separation,"при выполнении УЗИ кальцинаты в выборке после 40")
pvalueQualitativeText(dfUsDiagnosisSin$is_tumor,dfUsDiagnosisSin$group_separation,"при выполнении УЗИ поставлен рак в выборке после 40")


#Tumor
pvalueQualitativeText(df_morphologyStructureTumorSin$morphologyStructureTumor,df_morphologyStructureTumorSin$Group,"морфологическая структура найденных опухолей в выборке после 40")
pvalueQualitativeText(df_DescrTumorSin$cytological_conclusion,df_DescrTumorSin$Group,"цитология найденных опухолей в выборке после 40")
pvalueQualitativeText(df_DescrTumorSin$degree_malignancy,df_DescrTumorSin$Group,"уровень злокачественности найденных опухолей в выборке после 40")
pvalueQualitativeText(df_ReceptorsSin$Receptors,df_ReceptorsSin$Group,"рецепторы найденных опухолей в выборке после 40")
pvalueQualitativeText(df_morphologyStructureTumorSin$isTumor,df_morphologyStructureTumorSin$Group,"гистологически поставлен рак в выборке после 40")

#####Sensitivity, Specifcity, Accuracy#######

tumor_gr2 <-  binary_table (dfIsTumorGr2$tumor_is)
us_tumor_gr2 <- binary_table (dfUsIsTumorGr2$us_is_tumor)
mmg_tumor_gr2 <- binary_table (dfMmgIsTumorGr2$mmg_is_tumor)

SSA(tumor_gr2,us_tumor_gr2)
SSA(tumor_gr2,mmg_tumor_gr2)


tumor_gr4 <-  binary_table (dfIsTumorGr4$tumor_is)
us_tumor_gr4 <- binary_table (dfUsIsTumorGr4$us_is_tumor)
mmg_tumor_gr4 <- binary_table (dfMmgIsTumorGr4$mmg_is_tumor)
abus_tumor_gr4 <- binary_table (dfAbusIsTumorGr4$abus_is_tumor)

SSA(us_tumor_gr4,tumor_gr4)
SSA(mmg_tumor_gr4,tumor_gr4)
SSA(abus_tumor_gr4,tumor_gr4)


tumor_gr2_4 <-  binary_table (dfIsTumor$tumor_is)
us_tumor_gr2_4 <- binary_table (dfUsIsTumor$us_is_tumor)
mmg_tumor_gr2_4 <- binary_table (dfMmgIsTumor$mmg_is_tumor)
abus_tumor_gr2_4 <- binary_table (dfAbusIsTumor$abus_is_tumor)

SSA(us_tumor_gr2_4,tumor_gr2_4)
SSA(mmg_tumor_gr2_4,tumor_gr2_4)
SSA(abus_tumor_gr2_4,tumor_gr2_4)


#####Logit regression#######
install.packages("ROCit")
library(ROCit)



roc_empirical <- rocit(score = dataFrameAll$is_tumor_us, class = dataFrameAll$is_tumor_histology,
                       negref = "нет") 

summary(roc_empirical)
plot(roc_empirical, values = F)