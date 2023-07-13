#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
library(caret)

source("~/ABUS_US_diagnostics/01. Preprocessing data/connections/01.Connections.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/01. Links.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/02. Samples.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/03. Lables.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/04. SubSamp.R")
source("~/ABUS_US_diagnostics/01. Preprocessing data/functions/func.R")

# gr_US
# gr_US_ABUS




#####General#######
######US#######
escribir ("3.1 Общее Описание результатов исследования УЗИ в выборке до 40 лет ")
How_many(dfUSDiscrJun$Name,"Всего в исследование вошло")
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кожа была ",dfUSDiscrJun$USskin)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ протоки были ",dfUSDiscrJun$USducts)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ фон был ",dfUSbackgroundJun$USbackground)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование находилось ",dfUSformationJun$USformation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование было ",dfUSDiscrJun$USform)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ размер узла ",dfUSnodleSizeJun$USnodleSize)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ контуры узлов были ",dfUSnodleContourJun$USnodleContour)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ эхогенность образования былы ",dfUSDiscrJun$USechogenicityFormation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ структура узла ",dfUSstructureJun$USstructure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowJun$USformationBloodFlow)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ элатография ",dfUSelastographyJun$USelastography)   
Quantity_discr("В выборке до 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrJun$USregionLymphNodes)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrJun$CategoryBiradsUltrasound)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ количество узлов было ",dfUSDiscrJun$numberNodlesUS)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisJun$Usdiagnosis)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureJun$UScalcinatesMicroPure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз рак ",dfUSdiagnosisJun$isTumor)

######MMG#######
Quantity_discr("В выборке до 40 лет при выполнении ММГ кожа ",df_MMGDescrJun$conclusionMMGskin)
Quantity_discr("В выборке до 40 лет при выполнении ММГ ареола ",df_MMGDescrJun$MMGareola)
Quantity_discr("В выборке до 40 лет при выполнении ММГ сосок ",df_MMGDescrJun$MMGnipple)
Quantity_discr("В выборке до 40 лет при выполнении ММГ фон ",df_MMGDescrJun$MMGbackgroundBreast)
Quantity_discr("В выборке до 40 лет при выполнении ММГ узлы ",df_MMGnodleJun$MMGnodle)
Quantity_discr("В выборке до 40 лет при выполнении ММГ контур узлов ",df_MMGnodleContourJun$MMGnodleContour)
Quantity_discr("В выборке до 40 лет при выполнении ММГ размер узлов ",df_MMGnodleSizeJun$MMGnodleSize)
Quantity_discr("В выборке до 40 лет при выполнении ММГ кальцификаты ",df_MMGcalcificationsJun$MMGcalcifications)
Quantity_discr("В выборке до 40 лет при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrJun$MMGnumberFormationsVisualized)
Quantity_discr("В выборке до 40 лет при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrJun$MMGaxillaryLymphNodes)
Quantity_discr("В выборке до 40 лет при выполнении ММГ количество узлов ",df_MMGDescrJun$numberNodlesMMG)
Quantity_discr("В выборке до 40 лет при выполнении ММГ категория BIRADS ",df_MMGDescrJun$CategoryBiradsMMG)
Quantity_discr("В выборке до 40 лет при выполнении ММГ заключение ММГ ",df_conclusionMMGJun$conclusionMMG)
Quantity_discr("В выборке до 40 лет при выполнении ММГ поставлен рак ",df_conclusionMMGJun$isTumor)


######ABUS#######
Quantity_discr("В выборке до 40 лет при выполнении ABUS кожа была ",df_ABUSdiscrJun$ABUSskin)
Quantity_discr("В выборке до 40 лет при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeJun$ABUSnodleSize)
Quantity_discr("В выборке до 40 лет при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursJun$ABUSnodleContours)
Quantity_discr("В выборке до 40 лет при выполнении ABUS эхогенность образования ",df_ABUSdiscrJun$ABUSechogenicityFormation)
Quantity_discr("В выборке до 40 лет при выполнении ABUS структура узлов ",df_ABUSstructureJun$ABUSstructure)
Quantity_discr("В выборке до 40 лет при выполнении ABUS симптом ретракции ",df_ABUSdiscrJun$ABUSsymptomRetraction)
Quantity_discr("В выборке до 40 лет при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrJun$CategoryBiradsABUS)
Quantity_discr("В выборке до 40 лет при выполнении ABUS количество узлов ",df_ABUSdiscrJun$numberNodlesABUS)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisJun$ABUSdiagnosis)
Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrJun$ABUScalcinates)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз рак ",df_ABUSdiagnosisJun$isTumor)


######MRSI#######
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",df_DsMRSIJun$MRIdata)
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",df_DsMRSIJun$numberNodlesMRI)

######Tumor#######
Quantity_discr("В выборке до 40 лет была морфологическая структура  ",df_morphologyStructureTumorJun$morphologyStructureTumor)
Quantity_discr("В выборке до 40 лет при выполнении цитологии было заключение  ",df_DescrTumorJun$cytological_conclusion)
Quantity_discr("В выборке до 40 лет был определен уровень злокачественности  ",df_DescrTumorJun$degree_malignancy)
Quantity_discr("В выборке до 40 лет был определены рецеторы  ",df_ReceptorsJun$Receptors)
Quantity_discr("В выборке до 40 лет гистологически поставлен рак  ",df_morphologyStructureTumorJun$isTumor)




#####gr1#######
######US#######
escribir ("3.2 Общее Описание результатов исследования УЗИ В первой группе ")
How_many(dfUSDiscrGr1$Name,"Всего в исследование вошло")
Quantity_discr("В первой группе при выполнении УЗИ кожа была ",dfUSDiscrGr1$USskin)
Quantity_discr("В первой группе при выполнении УЗИ протоки были ",dfUSDiscrGr1$USducts)
Quantity_discr("В первой группе при выполнении УЗИ фон был ",dfUSbackgroundGr1$USbackground)
Quantity_discr("В первой группе при выполнении УЗИ образование находилось ",dfUSformationGr1$USformation)
Quantity_discr("В первой группе при выполнении УЗИ образование было ",dfUSDiscrGr1$USform)
Quantity_discr("В первой группе при выполнении УЗИ размер узла ",dfUSnodleSizeGr1$USnodleSize)
Quantity_discr("В первой группе при выполнении УЗИ контуры узлов были ",dfUSnodleContourGr1$USnodleContour)
Quantity_discr("В первой группе при выполнении УЗИ эхогенность образования былы ",dfUSDiscrGr1$USechogenicityFormation)
Quantity_discr("В первой группе при выполнении УЗИ структура узла ",dfUSstructureGr1$USstructure)
Quantity_discr("В первой группе при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowGr1$USformationBloodFlow)
Quantity_discr("В первой группе при выполнении УЗИ элатография ",dfUSelastographyGr1$USelastography)   
Quantity_discr("В первой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrGr1$USregionLymphNodes)
Quantity_discr("В первой группе при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrGr1$CategoryBiradsUltrasound)
Quantity_discr("В первой группе при выполнении УЗИ количество узлов было ",dfUSDiscrGr1$numberNodlesUS)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisGr1$Usdiagnosis)
Quantity_discr("В первой группе при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureGr1$UScalcinatesMicroPure)
Quantity_discr("В первой группе при выполнении УЗИ был поставлен диагноз рак ",dfUSdiagnosisGr1$isTumor)

######MMG#######
Quantity_discr("В первой группе лет при выполнении ММГ кожа ",df_MMGDescrGr1$conclusionMMGskin)
Quantity_discr("В первой группе лет при выполнении ММГ ареола ",df_MMGDescrGr1$MMGareola)
Quantity_discr("В первой группе лет при выполнении ММГ сосок ",df_MMGDescrGr1$MMGnipple)
Quantity_discr("В первой группе лет при выполнении ММГ фон ",df_MMGDescrGr1$MMGbackgroundBreast)
Quantity_discr("В первой группе лет при выполнении ММГ узлы ",df_MMGnodleGr1$MMGnodle)
Quantity_discr("В первой группе лет при выполнении ММГ контур узлов ",df_MMGnodleContourGr1$MMGnodleContour)
Quantity_discr("В первой группе лет при выполнении ММГ размер узлов ",df_MMGnodleSizeGr1$MMGnodleSize)
Quantity_discr("В первой группе лет при выполнении ММГ кальцификаты ",df_MMGcalcificationsGr1$MMGcalcifications)
Quantity_discr("В первой группе лет при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrGr1$MMGnumberFormationsVisualized)
Quantity_discr("В первой группе лет при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrGr1$MMGaxillaryLymphNodes)
Quantity_discr("В первой группе лет при выполнении ММГ количество узлов ",df_MMGDescrGr1$numberNodlesMMG)
Quantity_discr("В первой группе лет при выполнении ММГ категория BIRADS ",df_MMGDescrGr1$CategoryBiradsMMG)
Quantity_discr("В первой группе лет при выполнении ММГ заключение ММГ ",df_conclusionMMGGr1$conclusionMMG)
Quantity_discr("В первой группе лет при выполнении ММГ поставлен рак ",df_conclusionMMGGr1$isTumor)


######ABUS#######
Quantity_discr("В первой группе при выполнении ABUS кожа была ",df_ABUSdiscrGr1$ABUSskin)
Quantity_discr("В первой группе при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeGr1$ABUSnodleSize)
Quantity_discr("В первой группе при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursGr1$ABUSnodleContours)
Quantity_discr("В первой группе при выполнении ABUS эхогенность образования ",df_ABUSdiscrGr1$ABUSechogenicityFormation)
Quantity_discr("В первой группе при выполнении ABUS структура узлов ",df_ABUSstructureGr1$ABUSstructure)
Quantity_discr("В первой группе при выполнении ABUS симптом ретракции ",df_ABUSdiscrGr1$ABUSsymptomRetraction)
Quantity_discr("В первой группе при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrGr1$CategoryBiradsABUS)
Quantity_discr("В первой группе при выполнении ABUS количество узлов ",df_ABUSdiscrGr1$numberNodlesABUS)
Quantity_discr("В первой группе при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisGr1$ABUSdiagnosis)
Quantity_discr("В первой группе при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrGr1$ABUScalcinates)


######MRSI#######
Quantity_discr("В первой группе при выполнении МРТ были  ",df_DsMRSIGr1$MRIdata)
Quantity_discr("В первой группе при выполнении МРТ были  ",df_DsMRSIGr1$numberNodlesMRI)

######Tumor#######
Quantity_discr("В первой группе была морфологическая структура  ",df_morphologyStructureTumorGr1$morphologyStructureTumor)
Quantity_discr("В первой группе при выполнении цитологии было заключение  ",df_DescrTumorGr1$cytological_conclusion)
Quantity_discr("В первой группе был определен уровень злокачественности  ",df_DescrTumorGr1$degree_malignancy)
Quantity_discr("В первой группе был определены рецеторы   ",df_ReceptorsGr1$Receptors)
Quantity_discr("В первой группе гистологически поставлен рак ",df_morphologyStructureTumorGr1$isTumor)



#####gr3######
######US#######
escribir ("3.3 Общее Описание результатов исследования УЗИ В третьей группе ")
How_many(dfUSDiscrGr3$Name,"Всего в исследование вошло")
Quantity_discr("В третьей группе при выполнении УЗИ кожа была ",dfUSDiscrGr3$USskin)
Quantity_discr("В третьей группе при выполнении УЗИ протоки были ",dfUSDiscrGr3$USducts)
Quantity_discr("В третьей группе при выполнении УЗИ фон был ",dfUSbackgroundGr3$USbackground)
Quantity_discr("В третьей группе при выполнении УЗИ образование находилось ",dfUSformationGr3$USformation)
Quantity_discr("В третьей группе при выполнении УЗИ образование было ",dfUSDiscrGr3$USform)
Quantity_discr("В третьей группе при выполнении УЗИ размер узла ",dfUSnodleSizeGr3$USnodleSize)
Quantity_discr("В третьей группе при выполнении УЗИ контуры узлов были ",dfUSnodleContourGr3$USnodleContour)
Quantity_discr("В третьей группе при выполнении УЗИ эхогенность образования былы ",dfUSDiscrGr3$USechogenicityFormation)
Quantity_discr("В третьей группе при выполнении УЗИ структура узла ",dfUSstructureGr3$USstructure)
Quantity_discr("В третьей группе при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowGr3$USformationBloodFlow)
Quantity_discr("В третьей группе при выполнении УЗИ элатография ",dfUSelastographyGr3$USelastography)   
Quantity_discr("В третьей группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrGr3$USregionLymphNodes)
Quantity_discr("В третьей группе при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrGr3$CategoryBiradsUltrasound)
Quantity_discr("В третьей группе при выполнении УЗИ количество узлов было ",dfUSDiscrGr3$numberNodlesUS)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisGr3$Usdiagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureGr3$UScalcinatesMicroPure)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisGr3$Usdiagnosis)
Quantity_discr("В третьей группе при выполнении УЗИ был поставлен диагноз hfc ",dfUSdiagnosisGr3$isTumor)

######MMG#######
Quantity_discr("В третьей группе лет при выполнении ММГ кожа ",df_MMGDescrGr3$conclusionMMGskin)
Quantity_discr("В третьей группе лет при выполнении ММГ ареола ",df_MMGDescrGr3$MMGareola)
Quantity_discr("В третьей группе лет при выполнении ММГ сосок ",df_MMGDescrGr3$MMGnipple)
Quantity_discr("В третьей группе лет при выполнении ММГ фон ",df_MMGDescrGr3$MMGbackgroundBreast)
Quantity_discr("В третьей группе лет при выполнении ММГ узлы ",df_MMGnodleGr3$MMGnodle)
Quantity_discr("В третьей группе лет при выполнении ММГ контур узлов ",df_MMGnodleContourGr3$MMGnodleContour)
Quantity_discr("В третьей группе лет при выполнении ММГ размер узлов ",df_MMGnodleSizeGr3$MMGnodleSize)
Quantity_discr("В третьей группе лет при выполнении ММГ кальцификаты ",df_MMGcalcificationsGr3$MMGcalcifications)
Quantity_discr("В третьей группе лет при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrGr3$MMGnumberFormationsVisualized)
Quantity_discr("В третьей группе лет при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrGr3$MMGaxillaryLymphNodes)
Quantity_discr("В третьей группе лет при выполнении ММГ количество узлов ",df_MMGDescrGr3$numberNodlesMMG)
Quantity_discr("В третьей группе лет при выполнении ММГ категория BIRADS ",df_MMGDescrGr3$CategoryBiradsMMG)
Quantity_discr("В третьей группе лет при выполнении ММГ заключение ММГ ",df_conclusionMMGGr3$conclusionMMG)
Quantity_discr("В третьей группе лет при выполнении ММГ поставлен рак ",df_conclusionMMGGr3$isTumor)


######ABUS#######
Quantity_discr("В третьей группе при выполнении ABUS кожа была ",df_ABUSdiscrGr3$ABUSskin)
Quantity_discr("В третьей группе при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeGr3$ABUSnodleSize)
Quantity_discr("В третьей группе при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursGr3$ABUSnodleContours)
Quantity_discr("В третьей группе при выполнении ABUS эхогенность образования ",df_ABUSdiscrGr3$ABUSechogenicityFormation)
Quantity_discr("В третьей группе при выполнении ABUS структура узлов ",df_ABUSstructureGr3$ABUSstructure)
Quantity_discr("В третьей группе при выполнении ABUS симптом ретракции ",df_ABUSdiscrGr3$ABUSsymptomRetraction)
Quantity_discr("В третьей группе при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrGr3$CategoryBiradsABUS)
Quantity_discr("В третьей группе при выполнении ABUS количество узлов ",df_ABUSdiscrGr3$numberNodlesABUS)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisGr3$ABUSdiagnosis)
Quantity_discr("В третьей группе при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrGr3$ABUScalcinates)
Quantity_discr("В третьей группе при выполнении ABUS был поставлен диагноз рак ",df_ABUSdiagnosisGr3$isTumor)




######MRSI#######
Quantity_discr("В третьей группе при выполнении МРТ были  ",df_DsMRSIGr3$MRIdata)
Quantity_discr("В третьей группе при выполнении МРТ были  ",df_DsMRSIGr3$numberNodlesMRI)

######Tumor#######
Quantity_discr("В третьей группе была морфологическая структура  ",df_morphologyStructureTumorGr3$morphologyStructureTumor)
Quantity_discr("В третьей группе при выполнении цитологии было заключение  ",df_DescrTumorGr3$cytological_conclusion)
Quantity_discr("В третьей группе был определен уровень злокачественности  ",df_DescrTumorGr3$degree_malignancy)
Quantity_discr("В третьей группе был определены рецеторы ",df_ReceptorsGr3$Receptors)
Quantity_discr("В третьей группе гистологически поставлен диагноз рак ",df_morphologyStructureTumorGr3$isTumor)





#####Comparison#######
##US
pvalueQualitativeText(dfUSDiscrJun$USskin,dfUSDiscrJun$Group,"при выполнении УЗИ по кожа в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$USducts,dfUSDiscrJun$Group,"при выполнении УЗИ по протокам в выборке до 40")
pvalueQualitativeText(dfUSbackgroundJun$USbackground,dfUSbackgroundJun$Group,"при выполнении УЗИ по фону в выборке до 40")
pvalueQualitativeText(dfUSformationJun$USformation,dfUSformationJun$Group,"при выполнении УЗИ по нахождению узла в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$USform,dfUSDiscrJun$Group,"при выполнении УЗИ по форме образования в выборке до 40")
pvalueQualitativeText(dfUSnodleSizeJun$USnodleSize,dfUSnodleSizeJun$Group,"при выполнении УЗИ по размеру образования в выборке до 40")
pvalueQualitativeText(dfUSnodleContourJun$USnodleContour,dfUSnodleContourJun$Group,"при выполнении УЗИ по контуру образования в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$USechogenicityFormation,dfUSDiscrJun$Group,"при выполнении УЗИ по эхогенности образования в выборке до 40")
pvalueQualitativeText(dfUSstructureJun$USstructure,dfUSstructureJun$Group,"при выполнении УЗИ по структуре узла в выборке до 40")
pvalueQualitativeText(dfUSformationBloodFlowJun$USformationBloodFlow,dfUSformationBloodFlowJun$Group,"при выполнении УЗИ по кровотоку в образовании в выборке до 40")
pvalueQualitativeText(dfUSelastographyJun$USelastography,dfUSelastographyJun$Group,"при выполнении УЗИ элатогарфия в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$USregionLymphNodes,dfUSDiscrJun$Group,"при выполнении УЗИ регионарные лимфоузлы в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$CategoryBiradsUltrasound,dfUSDiscrJun$Group,"при выполнении УЗИ категория BIRADS в выборке до 40")
pvalueQualitativeText(dfUSDiscrJun$numberNodlesUS,dfUSDiscrJun$Group,"при выполнении УЗИ количество узлов в выборке до 40")
pvalueQualitativeText(dfUSdiagnosisJun$Usdiagnosis,dfUSdiagnosisJun$Group,"при выполнении УЗИ диагноз в выборке до 40")
pvalueQualitativeText(dfUScalcinatesMicroPureJun$UScalcinatesMicroPure,dfUScalcinatesMicroPureJun$Group,"при выполнении УЗИ кальцинаты в выборке до 40")
pvalueQualitativeText(dfUSdiagnosisJun$isTumor,dfUSdiagnosisJun$Group,"при выполнении УЗИ поставлен рак в выборке до 40")


#Tumor
pvalueQualitativeText(df_morphologyStructureTumorJun$morphologyStructureTumor,df_morphologyStructureTumorJun$Group,"морфологическая структура найденных опухолей в выборке до 40")
pvalueQualitativeText(df_DescrTumorJun$cytological_conclusion,df_DescrTumorJun$Group,"цитология найденных опухолей в выборке до 40")
pvalueQualitativeText(df_DescrTumorJun$degree_malignancy,df_DescrTumorJun$Group,"уровень злокачественности найденных опухолей в выборке до 40")
pvalueQualitativeText(df_ReceptorsJun$Receptors,df_ReceptorsJun$Group,"рецепторы найденных опухолей в выборке до 40")
pvalueQualitativeText(df_morphologyStructureTumorJun$isTumor,df_morphologyStructureTumorJun$Group,"гистологически поставлен рак в выборке до 40")


#####Sensitivity, Specifcity, Accuracy#######


SSA(df_USisTumorGr1$USisTumor,df_isTumorGr1$isTumor)
table(df_USisTumorGr1$USisTumor)
table (df_isTumorGr1$isTumor)
SSA(df_MMGisTumorGr1$isTumor,df_isTumorGr1$isTumor)
table(df_MMGisTumorGr1$isTumor)
table (df_isTumorGr1$isTumor)



SSA(df_USisTumorGr3$USisTumor,df_isTumorGr3$isTumor)
table(df_USisTumorGr3$USisTumor)
table (df_isTumorGr3$isTumor)

SSA(df_ABUSisTumorGr3$isTumor,df_isTumorGr3$isTumor)
table(df_ABUSisTumorGr3$isTumor)
table (df_isTumorGr3$isTumor)

SSA(df_MMGisTumorGr3$isTumor,df_isTumorGr3$isTumor)
table(df_MMGisTumorGr3$isTumor)
table (df_isTumorGr3$isTumor)



SSA(df_USisTumorJun$USisTumor,df_isTumorJun$isTumor)
table(df_USisTumorJun$USisTumor)
table (df_isTumorJun$isTumor)

SSA(df_ABUSisTumorJun$isTumor,df_isTumorJun$isTumor)
table(df_ABUSisTumorJun$isTumor)
table (df_isTumorJun$isTumor)

SSA(df_MMGisTumorJun$isTumor,df_isTumorJun$isTumor)
table(df_MMGisTumorJun$isTumor)
table (df_isTumorJun$isTumor)
