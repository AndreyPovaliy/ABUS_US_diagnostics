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



#####General#######
######US#######
escribir ("4.1 Общее Описание результатов исследований в выборке после 40 лет ")
How_many(dfUSDiscrSin$Name,"Всего в исследование вошло")
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кожа была ",dfUSDiscrSin$USskin)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ протоки были ",dfUSDiscrSin$USducts)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ фон был ",dfUSbackgroundSin$USbackground)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование находилось ",dfUSformationSin$USformation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ образование было ",dfUSDiscrSin$USform)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ размер узла ",dfUSnodleSizeSin$USnodleSize)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ контуры узлов были ",dfUSnodleContourSin$USnodleContour)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ эхогенность образования былы ",dfUSDiscrSin$USechogenicityFormation)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ структура узла ",dfUSstructureSin$USstructure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowSin$USformationBloodFlow)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ элатография ",dfUSelastographySin$USelastography)   
Quantity_discr("В выборке после 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrSin$USregionLymphNodes)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrSin$CategoryBiradsUltrasound)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ количество узлов было ",dfUSDiscrSin$numberNodlesUS)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisSin$Usdiagnosis)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureSin$UScalcinatesMicroPure)
Quantity_discr("В выборке после 40 лет при выполнении УЗИ поставлен рак ",dfUSdiagnosisSin$isTumor)

######MMG#######
Quantity_discr("В выборке после 40 лет при выполнении ММГ кожа ",df_MMGDescrSin$conclusionMMGskin)
Quantity_discr("В выборке после 40 лет при выполнении ММГ ареола ",df_MMGDescrSin$MMGareola)
Quantity_discr("В выборке после 40 лет при выполнении ММГ сосок ",df_MMGDescrSin$MMGnipple)
Quantity_discr("В выборке после 40 лет при выполнении ММГ фон ",df_MMGDescrSin$MMGbackgroundBreast)
Quantity_discr("В выборке после 40 лет при выполнении ММГ узлы ",df_MMGnodleSin$MMGnodle)
Quantity_discr("В выборке после 40 лет при выполнении ММГ контур узлов ",df_MMGnodleContourSin$MMGnodleContour)
Quantity_discr("В выборке после 40 лет при выполнении ММГ размер узлов ",df_MMGnodleSizeSin$MMGnodleSize)
Quantity_discr("В выборке после 40 лет при выполнении ММГ кальцификаты ",df_MMGcalcificationsSin$MMGcalcifications)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrSin$MMGnumberFormationsVisualized)
Quantity_discr("В выборке после 40 лет при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrSin$MMGaxillaryLymphNodes)
Quantity_discr("В выборке после 40 лет при выполнении ММГ количество узлов ",df_MMGDescrSin$numberNodlesMMG)
Quantity_discr("В выборке после 40 лет при выполнении ММГ категория BIRADS ",df_MMGDescrSin$CategoryBiradsMMG)
Quantity_discr("В выборке после 40 лет при выполнении ММГ заключение ММГ ",df_conclusionMMGSin$conclusionMMG)
Quantity_discr("В выборке после 40 лет при выполнении ММГ поставлен рак ",df_conclusionMMGSin$isTumor)


######ABUS#######
Quantity_discr("В выборке после 40 лет при выполнении ABUS кожа была ",df_ABUSdiscrSin$ABUSskin)
Quantity_discr("В выборке после 40 лет при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeSin$ABUSnodleSize)
Quantity_discr("В выборке после 40 лет при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursSin$ABUSnodleContours)
Quantity_discr("В выборке после 40 лет при выполнении ABUS эхогенность образования ",df_ABUSdiscrSin$ABUSechogenicityFormation)
Quantity_discr("В выборке после 40 лет при выполнении ABUS структура узлов ",df_ABUSstructureSin$ABUSstructure)
Quantity_discr("В выборке после 40 лет при выполнении ABUS симптом ретракции ",df_ABUSdiscrSin$ABUSsymptomRetraction)
Quantity_discr("В выборке после 40 лет при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrSin$CategoryBiradsABUS)
Quantity_discr("В выборке после 40 лет при выполнении ABUS количество узлов ",df_ABUSdiscrSin$numberNodlesABUS)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisSin$ABUSdiagnosis)
Quantity_discr("В выборке после 40 лет при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrSin$ABUScalcinates)
Quantity_discr("В выборке после 40 лет при выполнении ABUS был поставлен диагноз рак ",df_ABUSdiagnosisSin$isTumor)


######MRSI#######
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",df_DsMRSISin$MRIdata)
Quantity_discr("В выборке после 40 лет при выполнении МРТ были  ",df_DsMRSISin$numberNodlesMRI)

######Tumor#######
Quantity_discr("В выборке после 40 лет была морфологическая структура  ",df_morphologyStructureTumorSin$morphologyStructureTumor)
Quantity_discr("В выборке после 40 лет при выполнении цитологии было заключение  ",df_DescrTumorSin$cytological_conclusion)
Quantity_discr("В выборке после 40 лет был определен уровень злокачественности  ",df_DescrTumorSin$degree_malignancy)
Quantity_discr("В выборке после 40 лет был определены рецеторы  ",df_ReceptorsSin$Receptors)
Quantity_discr("В выборке после 40 лет гистологически поставлен рак ",df_morphologyStructureTumorSin$isTumor)



#####Gr2#######
######US#######
escribir ("4.2 Общее Описание результатов исследований Во второй группе ")
How_many(dfUSDiscrGr2$Name,"Всего в исследование вошло")
Quantity_discr("Во второй группе при выполнении УЗИ кожа была ",dfUSDiscrGr2$USskin)
Quantity_discr("Во второй группе при выполнении УЗИ протоки были ",dfUSDiscrGr2$USducts)
Quantity_discr("Во второй группе при выполнении УЗИ фон был ",dfUSbackgroundGr2$USbackground)
Quantity_discr("Во второй группе при выполнении УЗИ образование находилось ",dfUSformationGr2$USformation)
Quantity_discr("Во второй группе при выполнении УЗИ образование было ",dfUSDiscrGr2$USform)
Quantity_discr("Во второй группе при выполнении УЗИ размер узла ",dfUSnodleSizeGr2$USnodleSize)
Quantity_discr("Во второй группе при выполнении УЗИ контуры узлов были ",dfUSnodleContourGr2$USnodleContour)
Quantity_discr("Во второй группе при выполнении УЗИ эхогенность образования былы ",dfUSDiscrGr2$USechogenicityFormation)
Quantity_discr("Во второй группе при выполнении УЗИ структура узла ",dfUSstructureGr2$USstructure)
Quantity_discr("Во второй группе при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowGr2$USformationBloodFlow)
Quantity_discr("Во второй группе при выполнении УЗИ элатография ",dfUSelastographyGr2$USelastography)   
Quantity_discr("Во второй группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrGr2$USregionLymphNodes)
Quantity_discr("Во второй группе при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrGr2$CategoryBiradsUltrasound)
Quantity_discr("Во второй группе при выполнении УЗИ количество узлов было ",dfUSDiscrGr2$numberNodlesUS)
Quantity_discr("Во второй группе при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisGr2$Usdiagnosis)
Quantity_discr("Во второй группе при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureGr2$UScalcinatesMicroPure)
Quantity_discr("Во второй группе при выполнении УЗИ поставлен рак ",dfUSdiagnosisGr2$isTumor)

######MMG#######
Quantity_discr("Во второй группе при выполнении ММГ кожа ",df_MMGDescrGr2$conclusionMMGskin)
Quantity_discr("Во второй группе при выполнении ММГ ареола ",df_MMGDescrGr2$MMGareola)
Quantity_discr("Во второй группе при выполнении ММГ сосок ",df_MMGDescrGr2$MMGnipple)
Quantity_discr("Во второй группе при выполнении ММГ фон ",df_MMGDescrGr2$MMGbackgroundBreast)
Quantity_discr("Во второй группе при выполнении ММГ узлы ",df_MMGnodleGr2$MMGnodle)
Quantity_discr("Во второй группе при выполнении ММГ контур узлов ",df_MMGnodleContourGr2$MMGnodleContour)
Quantity_discr("Во второй группе при выполнении ММГ размер узлов ",df_MMGnodleSizeGr2$MMGnodleSize)
Quantity_discr("Во второй группе при выполнении ММГ кальцификаты ",df_MMGcalcificationsGr2$MMGcalcifications)
Quantity_discr("Во второй группе при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrGr2$MMGnumberFormationsVisualized)
Quantity_discr("Во второй группе при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrGr2$MMGaxillaryLymphNodes)
Quantity_discr("Во второй группе при выполнении ММГ количество узлов ",df_MMGDescrGr2$numberNodlesMMG)
Quantity_discr("Во второй группе при выполнении ММГ категория BIRADS ",df_MMGDescrGr2$CategoryBiradsMMG)
Quantity_discr("Во второй группе при выполнении ММГ заключение ММГ ",df_conclusionMMGGr2$conclusionMMG)
Quantity_discr("Во второй группе при выполнении ММГ поставлен рак ",df_conclusionMMGGr2$isTumor)


######ABUS#######
Quantity_discr("Во второй группе при выполнении ABUS кожа была ",df_ABUSdiscrGr2$ABUSskin)
Quantity_discr("Во второй группе при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeGr2$ABUSnodleSize)
Quantity_discr("Во второй группе при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursGr2$ABUSnodleContours)
Quantity_discr("Во второй группе при выполнении ABUS эхогенность образования ",df_ABUSdiscrGr2$ABUSechogenicityFormation)
Quantity_discr("Во второй группе при выполнении ABUS структура узлов ",df_ABUSstructureGr2$ABUSstructure)
Quantity_discr("Во второй группе при выполнении ABUS симптом ретракции ",df_ABUSdiscrGr2$ABUSsymptomRetraction)
Quantity_discr("Во второй группе при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrGr2$CategoryBiradsABUS)
Quantity_discr("Во второй группе при выполнении ABUS количество узлов ",df_ABUSdiscrGr2$numberNodlesABUS)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisGr2$ABUSdiagnosis)
Quantity_discr("Во второй группе при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrGr2$ABUScalcinates)
Quantity_discr("Во второй группе при выполнении ABUS был поставлен диагноз рак ",df_ABUSdiagnosisGr2$isTumor)


######MRSI#######
Quantity_discr("Во второй группе при выполнении МРТ были  ",df_DsMRSIGr2$MRIdata)
Quantity_discr("Во второй группе при выполнении МРТ были  ",df_DsMRSIGr2$numberNodlesMRI)

######Tumor#######
Quantity_discr("Во второй группе была морфологическая структура  ",df_morphologyStructureTumorGr2$morphologyStructureTumor)
Quantity_discr("Во второй группе при выполнении цитологии было заключение  ",df_DescrTumorGr2$cytological_conclusion)
Quantity_discr("Во второй группе был определен уровень злокачественности  ",df_DescrTumorGr2$degree_malignancy)
Quantity_discr("Во второй группе был определены рецеторы  ",df_ReceptorsGr2$Receptors)
Quantity_discr("Во второй группе гистологически поставлен рак ",df_morphologyStructureTumorGr2$isTumor)

#####Gr4#######
######US#######
escribir ("4.3 Общее Описание результатов исследований Во четвертой группе ")
How_many(dfUSDiscrGr4$Name,"Всего в исследование вошло")
Quantity_discr("Во четвертой группе при выполнении УЗИ кожа была ",dfUSDiscrGr4$USskin)
Quantity_discr("Во четвертой группе при выполнении УЗИ протоки были ",dfUSDiscrGr4$USducts)
Quantity_discr("Во четвертой группе при выполнении УЗИ фон был ",dfUSbackgroundGr4$USbackground)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование находилось ",dfUSformationGr4$USformation)
Quantity_discr("Во четвертой группе при выполнении УЗИ образование было ",dfUSDiscrGr4$USform)
Quantity_discr("Во четвертой группе при выполнении УЗИ размер узла ",dfUSnodleSizeGr4$USnodleSize)
Quantity_discr("Во четвертой группе при выполнении УЗИ контуры узлов были ",dfUSnodleContourGr4$USnodleContour)
Quantity_discr("Во четвертой группе при выполнении УЗИ эхогенность образования былы ",dfUSDiscrGr4$USechogenicityFormation)
Quantity_discr("Во четвертой группе при выполнении УЗИ структура узла ",dfUSstructureGr4$USstructure)
Quantity_discr("Во четвертой группе при выполнении УЗИ кровоток в образовании ",dfUSformationBloodFlowGr4$USformationBloodFlow)
Quantity_discr("Во четвертой группе при выполнении УЗИ элатография ",dfUSelastographyGr4$USelastography)   
Quantity_discr("Во четвертой группе при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfUSDiscrGr4$USregionLymphNodes)
Quantity_discr("Во четвертой группе при выполнении УЗИ была установлена категория BIRADS ",dfUSDiscrGr4$CategoryBiradsUltrasound)
Quantity_discr("Во четвертой группе при выполнении УЗИ количество узлов было ",dfUSDiscrGr4$numberNodlesUS)
Quantity_discr("Во четвертой группе при выполнении УЗИ был поставлен диагноз ",dfUSdiagnosisGr4$Usdiagnosis)
Quantity_discr("Во четвертой группе при выполнении УЗИ найдены кальцинаты ",dfUScalcinatesMicroPureGr4$UScalcinatesMicroPure)
Quantity_discr("Во четвертой группе при выполнении УЗИ поставлен рак ",dfUSdiagnosisGr4$isTumor)

######MMG#######
Quantity_discr("Во четвертой группе при выполнении ММГ кожа ",df_MMGDescrGr4$conclusionMMGskin)
Quantity_discr("Во четвертой группе при выполнении ММГ ареола ",df_MMGDescrGr4$MMGareola)
Quantity_discr("Во четвертой группе при выполнении ММГ сосок ",df_MMGDescrGr4$MMGnipple)
Quantity_discr("Во четвертой группе при выполнении ММГ фон ",df_MMGDescrGr4$MMGbackgroundBreast)
Quantity_discr("Во четвертой группе при выполнении ММГ узлы ",df_MMGnodleGr4$MMGnodle)
Quantity_discr("Во четвертой группе при выполнении ММГ контур узлов ",df_MMGnodleContourGr4$MMGnodleContour)
Quantity_discr("Во четвертой группе при выполнении ММГ размер узлов ",df_MMGnodleSizeGr4$MMGnodleSize)
Quantity_discr("Во четвертой группе при выполнении ММГ кальцификаты ",df_MMGcalcificationsGr4$MMGcalcifications)
Quantity_discr("Во четвертой группе при выполнении ММГ количество визуализыруемых образований ",df_MMGDescrGr4$MMGnumberFormationsVisualized)
Quantity_discr("Во четвертой группе при выполнении ММГ подмышечные лимфоузлы ",df_MMGDescrGr4$MMGaxillaryLymphNodes)
Quantity_discr("Во четвертой группе при выполнении ММГ количество узлов ",df_MMGDescrGr4$numberNodlesMMG)
Quantity_discr("Во четвертой группе при выполнении ММГ категория BIRADS ",df_MMGDescrGr4$CategoryBiradsMMG)
Quantity_discr("Во четвертой группе при выполнении ММГ заключение ММГ ",df_conclusionMMGGr4$conclusionMMG)
Quantity_discr("Во четвертой группе при выполнении ММГ поставлен рак ",df_conclusionMMGGr4$isTumor)


######ABUS#######
Quantity_discr("Во четвертой группе при выполнении ABUS кожа была ",df_ABUSdiscrGr4$ABUSskin)
Quantity_discr("Во четвертой группе при выполнении ABUS размеры узлов были ",df_ABUSnodleSizeGr4$ABUSnodleSize)
Quantity_discr("Во четвертой группе при выполнении ABUS контуры узлов были ",df_ABUSnodleContoursGr4$ABUSnodleContours)
Quantity_discr("Во четвертой группе при выполнении ABUS эхогенность образования ",df_ABUSdiscrGr4$ABUSechogenicityFormation)
Quantity_discr("Во четвертой группе при выполнении ABUS структура узлов ",df_ABUSstructureGr4$ABUSstructure)
Quantity_discr("Во четвертой группе при выполнении ABUS симптом ретракции ",df_ABUSdiscrGr4$ABUSsymptomRetraction)
Quantity_discr("Во четвертой группе при выполнении ABUS была установлена категория BIRADS ",df_ABUSdiscrGr4$CategoryBiradsABUS)
Quantity_discr("Во четвертой группе при выполнении ABUS количество узлов ",df_ABUSdiscrGr4$numberNodlesABUS)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз ",df_ABUSdiagnosisGr4$ABUSdiagnosis)
Quantity_discr("Во четвертой группе при выполнении ABUS были найдены кальцинаты ",df_ABUSdiscrGr4$ABUScalcinates)
Quantity_discr("Во четвертой группе при выполнении ABUS был поставлен диагноз рак ",df_ABUSdiagnosisGr4$isTumor)


######MRSI#######
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",df_DsMRSIGr4$MRIdata)
Quantity_discr("Во четвертой группе при выполнении МРТ были  ",df_DsMRSIGr4$numberNodlesMRI)

######Tumor#######
Quantity_discr("Во четвертой группе была морфологическая структура  ",df_morphologyStructureTumorGr4$morphologyStructureTumor)
Quantity_discr("Во четвертой группе при выполнении цитологии было заключение  ",df_DescrTumorGr4$cytological_conclusion)
Quantity_discr("Во четвертой группе был определен уровень злокачественности  ",df_DescrTumorGr4$degree_malignancy)
Quantity_discr("Во четвертой группе был определены рецеторы  ",df_ReceptorsGr4$Receptors)
Quantity_discr("Во четвертой группе гистологически поставлен рак ",df_morphologyStructureTumorGr4$isTumor)



#####Comparison#######
##US
pvalueQualitativeText(dfUSDiscrSin$USskin,dfUSDiscrSin$Group,"при выполнении УЗИ по кожа в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$USducts,dfUSDiscrSin$Group,"при выполнении УЗИ по протокам в выборке после 40")
pvalueQualitativeText(dfUSbackgroundSin$USbackground,dfUSbackgroundSin$Group,"при выполнении УЗИ по фону в выборке после 40")
pvalueQualitativeText(dfUSformationSin$USformation,dfUSformationSin$Group,"при выполнении УЗИ по нахождению узла в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$USform,dfUSDiscrSin$Group,"при выполнении УЗИ по форме образования в выборке после 40")
pvalueQualitativeText(dfUSnodleSizeSin$USnodleSize,dfUSnodleSizeSin$Group,"при выполнении УЗИ по размеру образования в выборке после 40")
pvalueQualitativeText(dfUSnodleContourSin$USnodleContour,dfUSnodleContourSin$Group,"при выполнении УЗИ по контуру образования в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$USechogenicityFormation,dfUSDiscrSin$Group,"при выполнении УЗИ по эхогенности образования в выборке после 40")
pvalueQualitativeText(dfUSstructureSin$USstructure,dfUSstructureSin$Group,"при выполнении УЗИ по структуре узла в выборке после 40")
pvalueQualitativeText(dfUSformationBloodFlowSin$USformationBloodFlow,dfUSformationBloodFlowSin$Group,"при выполнении УЗИ по кровотоку в образовании в выборке после 40")
pvalueQualitativeText(dfUSelastographySin$USelastography,dfUSelastographySin$Group,"при выполнении УЗИ элатогарфия в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$USregionLymphNodes,dfUSDiscrSin$Group,"при выполнении УЗИ регионарные лимфоузлы в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$CategoryBiradsUltrasound,dfUSDiscrSin$Group,"при выполнении УЗИ категория BIRADS в выборке после 40")
pvalueQualitativeText(dfUSDiscrSin$numberNodlesUS,dfUSDiscrSin$Group,"при выполнении УЗИ количество узлов в выборке после 40")
pvalueQualitativeText(dfUSdiagnosisSin$Usdiagnosis,dfUSdiagnosisSin$Group,"при выполнении УЗИ диагноз в выборке после 40")
pvalueQualitativeText(dfUScalcinatesMicroPureSin$UScalcinatesMicroPure,dfUScalcinatesMicroPureSin$Group,"при выполнении УЗИ кальцинаты в выборке после 40")
pvalueQualitativeText(dfUSdiagnosisSin$isTumor,dfUSdiagnosisSin$Group,"при выполнении УЗИ поставлен рак в выборке после 40")


#Tumor
pvalueQualitativeText(df_morphologyStructureTumorSin$morphologyStructureTumor,df_morphologyStructureTumorSin$Group,"морфологическая структура найденных опухолей в выборке после 40")
pvalueQualitativeText(df_DescrTumorSin$cytological_conclusion,df_DescrTumorSin$Group,"цитология найденных опухолей в выборке после 40")
pvalueQualitativeText(df_DescrTumorSin$degree_malignancy,df_DescrTumorSin$Group,"уровень злокачественности найденных опухолей в выборке после 40")
pvalueQualitativeText(df_ReceptorsSin$Receptors,df_ReceptorsSin$Group,"рецепторы найденных опухолей в выборке после 40")
pvalueQualitativeText(df_morphologyStructureTumorSin$isTumor,df_morphologyStructureTumorSin$Group,"гистологически поставлен рак в выборке после 40")

#####Sensitivity, Specifcity, Accuracy#######

#gr2
SSA(df_USisTumorGr2$USisTumor,df_isTumorGr2$isTumor)
table(df_USisTumorGr2$USisTumor)
table(df_isTumorGr2$isTumor)

SSA(df_MMGisTumorGr2$isTumor,df_isTumorGr2$isTumor)
table(df_MMGisTumorGr2$isTumor)
table(df_isTumorGr2$isTumor)




#gr4
SSA(df_USisTumorGr4$USisTumor,df_isTumorGr4$isTumor)
table(df_USisTumorGr4$USisTumor)
table(df_isTumorGr4$isTumor)

SSA(df_ABUSisTumorGr4$isTumor,df_isTumorGr4$isTumor)
table(df_ABUSisTumorGr4$isTumor)
table(df_isTumorGr4$isTumor)

SSA(df_MMGisTumorGr4$isTumor,df_isTumorGr4$isTumor)
table(df_MMGisTumorGr4$isTumor)
table(df_isTumorGr4$isTumor)


#Sin
SSA(df_USisTumorSin$USisTumor,df_isTumorSin$isTumor)
table(df_USisTumorSin$USisTumor)
table(df_isTumorSin$isTumor)

SSA(df_ABUSisTumorSin$isTumor,df_isTumorSin$isTumor)
table(df_ABUSisTumorSin$isTumor)
table(df_isTumorSin$isTumor)

SSA(df_MMGisTumorSin$isTumor,df_isTumorSin$isTumor)
table(df_MMGisTumorSin$isTumor)
table(df_isTumorSin$isTumor)
