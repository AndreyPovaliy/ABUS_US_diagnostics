#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
library(caret)
library(pROC)

##### 4.1 General#######
escribir ("## 4.1 Общее Описание результатов исследования УЗИ в выборке 40 лет и старше ")
######4.1.1 US#######
escribir ("### 4.1.1 Результаты ручного УЗИ исследования")
How_many(dfXlsxSnr$name_patient,"Всего в исследование вошло")
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ кожа была ",dfXlsxSnr$us_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ протоки были ",dfXlsxSnr$us_ducts)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ фон был ",dfXlsxSnr$us_background)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ был найден узел ",dfXlsxSnr$us_is_nodle)


Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ образование находилось ",dfXlsxNodleUsSnr$us_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ образование было ",dfXlsxNodleUsSnr$us_form)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ размер узла ",dfXlsxNodleUsSnr$us_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ контуры узлов были ",dfXlsxNodleUsSnr$us_nodle_contour)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ эхогенность образования былы ",dfXlsxNodleUsSnr$us_echogenicity_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ структура узла ",dfXlsxNodleUsSnr$us_structure)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ кровоток в образовании ",dfXlsxNodleUsSnr$us_formation_blood_flow)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ количество узлов было ",dfXlsxNodleUsSnr$us_number_nodles)

Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ элатография ",dfXlsxSnr$us_elastography)  
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxSnr$us_region_lymph_nodes)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ был поставлен диагноз ",dfXlsxSnr$us_diagnosis)
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ была установлена категория BIRADS ",dfXlsxSnr$us_category_birads)

dfXlsxSnrUsCalc <- subset(dfXlsxSnr, dfXlsxSnr$us_calcinates_micro_pure != "нет")
Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ найдены кальцинаты ",dfXlsxSnrUsCalc$us_calcinates_micro_pure)

Quantity_discr("В выборке 40 лет и старше при выполнении УЗИ был поставлен диагноз рак ",dfXlsxSnr$us_is_tumor)



###### 4.1.2 MMG#######
escribir ("### 4.1.2 Маммография")
Quantity_discr("В выборке 40 лет и старше был выполнена ММГ ",dfXlsxSnr$is_mmg)

Quantity_discr("В выборке 40 лет и старше при выполнении ММГ кожа ",dfXlsxSubsetMmgSnr$mmg_conclusion_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ ареола ",dfXlsxSubsetMmgSnr$mmg_areola)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ сосок ",dfXlsxSubsetMmgSnr$mmg_nipple)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ фон ",dfXlsxSubsetMmgSnr$mmg_background_breast)

Quantity_discr("В выборке 40 лет и старше при выполнении ММГ был найдено образование ",dfXlsxSubsetMmgSnr$mmg_is_nodle)

Quantity_discr("В выборке 40 лет и старше при выполнении ММГ узлы ",dfXlsxNodleMmgSnr$mmg_nodle)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ контур узлов ",dfXlsxNodleMmgSnr$mmg_nodle_contour)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ размер узлов ",dfXlsxNodleMmgSnr$mmg_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ количество узлов ",dfXlsxNodleMmgSnr$mmg_number_nodles)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ количество визуализыруемых образований ",dfXlsxNodleMmgSnr$mmg_number_formations_visualized)

Quantity_discr("В выборке 40 лет и старше при выполнении ММГ подмышечные лимфоузлы ",dfXlsxSubsetMmgSnr$mmg_axillary_lymph_nodes)

dfXlsxSnrMmgCalc <- subset(dfXlsxSnr, dfXlsxSnr$mmg_calcifications != "нет")
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ кальцификаты ",dfXlsxSnrMmgCalc$mmg_calcifications)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ категория BIRADS ",dfXlsxSubsetMmgSnr$mmg_category_birads)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ заключение ММГ ",dfXlsxSubsetMmgSnr$mmg_conclusion)
Quantity_discr("В выборке 40 лет и старше при выполнении ММГ поставлен рак ",dfXlsxSubsetMmgSnr$mmg_is_tumor)


######4.1.3 ABUS#######
escribir ("### 4.1.3 Автоматизированное объемное УЗИ сканирование молочных желез (ABUS)")
Quantity_discr("В выборке 40 лет и старше был выполнен ABUS ",dfXlsxSnr$is_abus)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS кожа была ",dfXlsxSubsetAbusSnr$abus_skin)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS симптом ретракции ",dfXlsxSubsetAbusSnr$abus_symptom_retraction)

Quantity_discr("В выборке 40 лет и старше при выполнении ABUS был найдено образование ",dfXlsxSubsetAbusSnr$abus_is_nodle)

Quantity_discr("В выборке 40 лет и старше при выполнении ABUS размеры узлов были ",dfXlsxNodleAbusSnr$abus_nodle_size)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS контуры узлов были ",dfXlsxNodleAbusSnr$abus_nodle_contours)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS эхогенность образования ",dfXlsxNodleAbusSnr$abus_echogenicity_formation)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS структура узлов ",dfXlsxNodleAbusSnr$abus_structure)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS количество узлов ",dfXlsxNodleAbusSnr$abus_number_nodles )

Quantity_discr("В выборке 40 лет и старше при выполнении ABUS была установлена категория BIRADS ",dfXlsxSubsetAbusSnr$abus_category_birads)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS был поставлен диагноз ",dfXlsxSubsetAbusSnr$abus_diagnosis)
dfXlsxSnrAbusCalc <- subset(dfXlsxSnr, dfXlsxSnr$abus_is_calc == "Да")
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS были найдены кальцинаты ",dfXlsxSubsetAbusSnr$abus_calcinates)
Quantity_discr("В выборке 40 лет и старше при выполнении ABUS был поставлен диагноз рак ",dfXlsxSubsetAbusSnr$abus_is_tumor)


######4.1.4 MRSI#######
escribir ("### 4.1.4 Результаты МРТ исследования")
Quantity_discr("В выборке 40 лет и старше был выполнена МРТ ",dfXlsxSnr$is_Mrsi)
Quantity_discr("В выборке 40 лет и старше при выполнении МРТ были  ",dfXlsxSubsetMrsiSnr$mrsi_data)
Quantity_discr("В выборке 40 лет и старше при выполнении МРТ количество узлов  ",dfXlsxSubsetMrsiSnr$mrsi_number_nodles)

######4.1.5 Tumor#######
escribir ("### 4.1.5 Результаты гистологического исследования")
Quantity_discr("В выборке 40 лет и старше был проводилась пункция и морфологическая оценка ",dfXlsxSnr$is_Morphology)
Quantity_discr("В выборке 40 лет и старше была морфологическая структура  ",dfXlsxSubsetMorphologySnr$tumor_morphology_structure)
Quantity_discr("В выборке 40 лет и старше был проводилась цитологическая оценка ",dfXlsxSnr$is_Cytological)
Quantity_discr("В выборке 40 лет и старше при выполнении цитологии было заключение  ",dfXlsxSubsetCytologicalSnr$cytological_conclusion)
Quantity_discr("В выборке 40 лет и старше гистологически поставлен рак  ",dfXlsxSnr$hist_is_tumor)
Quantity_discr("В выборке 40 лет и старше был определен уровень злокачественности  ",dfXlsxSubsetMalignancySnr$degree_malignancy)
Quantity_discr("В выборке 40 лет и старше был проводилась оценка оценка рецепторов опухоли ",dfXlsxSnr$is_Receptors)
Quantity_discr("В выборке 40 лет и старше был определены рецеторы  ",dfXlsxSubsetReceptorsSnr$tumor_receptors)




#####4.2 Comparison#######

escribir ("## 4.2 Характеристика результатов по группам")
How_many(dfXlsxGr2$name_patient,"В группу C")
How_many(dfXlsxGr4$name_patient,"В группу D")

######4.2.1 US#######
escribir ("### 4.2.1 Исследование УЗИ")
escribir ("*Кожа при выполнении УЗИ*")
escribir ("Во всех случаях кожа была не изменена в обеих группах.")
chapter_3_4_text("Кожа при выполнении УЗИ",
                  "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_skin,
                 dfXlsxGr4$us_skin,
                 dfXlsxSnr$us_skin,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.1, Рисунок 4.1).")
escribir ("Таблица №4.1. Оценка кожи при выполнении ручного УЗ исследования в группах C и D.")
escribir ("![](images4/us_skin.png)")
escribir ("Рисунок №4.1. Оценка кожи при выполнении ручного УЗ исследования в группах C и D.")
SnrPlot_us_skin <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_skin,dfXlsxSnr$group_separation,"Кожа при выполнении УЗИ")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_skin.png", 
       plot = SnrPlot_us_skin, units = "in", width = 14, height = 8)


escribir ("*Протоки при выполнении УЗИ*")
chapter_3_4_text("Протоки при выполнении УЗИ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_ducts,
                 dfXlsxGr4$us_ducts,
                 dfXlsxSnr$us_ducts,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.2, Рисунок 4.2).")
escribir ("Таблица №4.2. Оценка протоков при выполнении ручного УЗ исследования в группах C и D.")
escribir ("![](images4/us_ducts.png)")
escribir ("Рисунок №4.2. Оценка протоков при выполнении ручного УЗ исследования в группах C и D.")
SnrPlot_us_ducts <-GeomBar(dfXlsxSnr,dfXlsxSnr$us_ducts,dfXlsxSnr$group_separation,"Протоки при выполнении УЗИ")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_ducts.png", 
       plot = SnrPlot_us_ducts, units = "in", width = 14, height = 8)

escribir ("*УЗ-фон*")
chapter_3_4_text("УЗ-фон",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_background,
                 dfXlsxGr4$us_background,
                 dfXlsxSnr$us_background,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.3, Рисунок 4.3).")
escribir ("Таблица №4.3. 
          УЗ фона при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_background.png)")
escribir ("Рисунок №4.3. УЗ фона при УЗ исследовании в группах C и D.")
SnrPlot_us_background <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_background,dfXlsxSnr$group_separation,"УЗ-фон")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_background.png", 
       plot = SnrPlot_us_background, units = "in", width = 14, height = 8)

escribir ("*Расположение образования*")
chapter_3_4_text("Образование находилось",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_formation,
                 dfXlsxNodleUsGr4$us_formation,
                 dfXlsxNodleUsSnr$us_formation,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.4, Рисунок 4.4).")
escribir ("Таблица №4.4. 
          Расположения образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_formation.png)")
escribir ("Рисунок №4.4. Расположения образования при УЗ исследовании в группах C и D.")
SnrPlot_us_formation <- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_formation,dfXlsxNodleUsSnr$group_separation,"Образование находилось")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_formation.png", 
       plot = SnrPlot_us_formation, units = "in", width = 14, height = 8)


escribir ("*Форма образования*")
chapter_3_4_text("Форма образования",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_form,
                 dfXlsxNodleUsGr4$us_form,
                 dfXlsxNodleUsSnr$us_form,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.5, Рисунок 4.5).")
escribir ("Таблица №4.5. 
          Форма образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_form.png)")
escribir ("Рисунок №4.5. Форма образования при УЗ исследовании в группах C и D.")
SnrPlot_us_form <- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_form,dfXlsxNodleUsSnr$group_separation,"Форма образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_form.png", 
       plot = SnrPlot_us_form, units = "in", width = 14, height = 8)

escribir ("*Размер образования*")
chapter_3_4_text("Размер образования",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_nodle_size,
                 dfXlsxNodleUsGr4$us_nodle_size,
                 dfXlsxNodleUsSnr$us_nodle_size,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.6, Рисунок 4.6).")
escribir ("Таблица №4.6. 
          Размер образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_nodle_size.png)")
escribir ("Рисунок №4.6. Размер образования при УЗ исследовании в группах C и D.")
SnrPlot_us_nodle_size <- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_nodle_size,dfXlsxNodleUsSnr$group_separation,"Размер образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_nodle_size.png", 
       plot = SnrPlot_us_nodle_size, units = "in", width = 14, height = 8)

escribir ("*Края образования*")
chapter_3_4_text("Края образования",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_nodle_contour,
                 dfXlsxNodleUsGr4$us_nodle_contour,
                 dfXlsxNodleUsSnr$us_nodle_contour,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.7, Рисунок 4.7).")
escribir ("Таблица №4.7. 
          Оценка краев образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_nodle_contour.png)")
escribir ("Рисунок №4.7. Оценка краев образования при УЗ исследовании в группах C и D.")
SnrPlot_us_nodle_contour<- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_nodle_contour,dfXlsxNodleUsSnr$group_separation,"Края образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_nodle_contour.png", 
       plot = SnrPlot_us_nodle_contour, units = "in", width = 14, height = 8)

escribir ("*Эхогенность образования*")
chapter_3_4_text("Эхогенность образования",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_echogenicity_formation,
                 dfXlsxNodleUsGr4$us_echogenicity_formation,
                 dfXlsxNodleUsSnr$us_echogenicity_formation,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.8, Рисунок 4.8).")
escribir ("Таблица №4.8. 
          Оценка эхогенности образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_echogenicity_formation.png)")
escribir ("Рисунок №4.8. Оценка эхогенности образования при УЗ исследовании в группах C и D.")
SnrPlot_us_echogenicity_formation <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_echogenicity_formation,dfXlsxSnr$group_separation,"Эхогенность образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_echogenicity_formation.png", 
       plot = SnrPlot_us_echogenicity_formation, units = "in", width = 14, height = 8)

escribir ("*УЗ-структура образования*")
chapter_3_4_text("УЗ-структура образования",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_structure,
                 dfXlsxGr4$us_structure,
                 dfXlsxSnr$us_structure,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.9, Рисунок 4.9).")
escribir ("Таблица №4.9. 
          Оценка УЗ-структуры образования при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_structure.png)")
escribir ("Рисунок №4.9. Оценка УЗ-структуры образования образования при УЗ исследовании в группах C и D.")
SnrPlot_us_structure <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_structure,dfXlsxSnr$group_separation,"УЗ-структура образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_structure.png", 
       plot = SnrPlot_us_structure, units = "in", width = 14, height = 8)

escribir ("*Количество узлов*")
chapter_3_4_text("Количество узлов",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_number_nodles,
                 dfXlsxNodleUsGr4$us_number_nodles,
                 dfXlsxNodleUsSnr$us_number_nodles,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.10, Рисунок 4.10).")
escribir ("Таблица №4.10. 
          Оценка количества узлов при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_number_nodles.png)")
escribir ("Рисунок №4.10. Оценка количества узлов при УЗ исследовании в группах C и D.")
SnrPlot_us_number_nodles <- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_number_nodles,dfXlsxNodleUsSnr$group_separation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_number_nodles.png", 
       plot = SnrPlot_us_number_nodles, units = "in", width = 14, height = 8)

escribir ("*Кровоток в образовании*")
chapter_3_4_text("Кровоток в образовании",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleUsGr2$us_formation_blood_flow,
                 dfXlsxNodleUsGr4$us_formation_blood_flow,
                 dfXlsxNodleUsSnr$us_formation_blood_flow,
                 dfXlsxNodleUsSnr$group_separation)
escribir ("(Таблица 4.11, Рисунок 4.11).")
escribir ("Таблица №4.11. 
          Оценка кровотока в образовании при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_formation_blood_flow.png)")
escribir ("Рисунок №4.11. Оценка кровотока в образовании при УЗ исследовании в группах C и D.")
SnrPlot_us_formation_blood_flow <- GeomBar(dfXlsxNodleUsSnr,dfXlsxNodleUsSnr$us_formation_blood_flow,dfXlsxNodleUsSnr$group_separation,"Кровоток в образовании")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_formation_blood_flow.png", 
       plot = SnrPlot_us_formation_blood_flow, units = "in", width = 14, height = 8)


escribir ("*Эластография*")
chapter_3_4_text("Эластография",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_elastography,
                 dfXlsxGr4$us_elastography,
                 dfXlsxSnr$us_elastography,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.12, Рисунок 4.12).")
escribir ("Таблица №4.12. 
          Результаты эластографии при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_elastography.png)")
escribir ("Рисунок №4.12. Результаты эластографии при УЗ исследовании в группах C и D.")
SnrPlot_us_elastography <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_elastography,dfXlsxSnr$group_separation,"Эластография")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_elastography.png", 
       plot = SnrPlot_us_elastography, units = "in", width = 14, height = 8)


escribir ("*Регионарные лимфоузлы*")
chapter_3_4_text("Увеличение регинарных лимфоузлов",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_region_lymph_nodes,
                 dfXlsxGr4$us_region_lymph_nodes,
                 dfXlsxSnr$us_region_lymph_nodes,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.13, Рисунок 4.13).")
escribir ("Таблица №4.13. 
          Результаты оценки регионарных лимфоузлов при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_region_lymph_nodes.png)")
escribir ("Рисунок №4.13. Результаты оценки регионарных лимфоузлов при УЗ исследовании в группах C и D.")
SnrPlot_us_region_lymph_nodes <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_region_lymph_nodes,dfXlsxSnr$group_separation,"Увеличение регинарных лимфоузлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_region_lymph_nodes.png", 
       plot = SnrPlot_us_region_lymph_nodes, units = "in", width = 14, height = 8)


escribir ("*Определение категории BI-RADS*")
chapter_3_4_text("Категория BI-RADS",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_category_birads,
                 dfXlsxGr4$us_category_birads,
                 dfXlsxSnr$us_category_birads,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.14, Рисунок 4.14).")
escribir ("Таблица №4.14. 
          Определение категории BIRADS при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_category_birads.png)")
escribir ("Рисунок №4.14. Определение категории BIRADS при УЗ исследовании в группах C и D.")
SnrPlot_us_category_birads <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_category_birads,dfXlsxSnr$group_separation,"Категория BI-RADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_category_birads.png", 
       plot = SnrPlot_us_category_birads, units = "in", width = 14, height = 8)


escribir ("*Диагноз после выполнения УЗ исследования*")
chapter_3_4_text("УЗ-диагноз",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_diagnosis,
                 dfXlsxGr4$us_diagnosis,
                 dfXlsxSnr$us_diagnosis,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.15, Рисунок 4.15).")
escribir ("Таблица №4.15. 
          Поставленные диагнозы при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_diagnosis.png)")
escribir ("Рисунок №4.15. Поставленные диагнозы при УЗ исследовании в группах C и D.")
SnrPlot_us_diagnosis <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_diagnosis,dfXlsxSnr$group_separation,"УЗ-диагноз")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_diagnosis.png", 
       plot = SnrPlot_us_diagnosis, units = "in", width = 14, height = 8)


escribir ("*Диагноз после выполнении УЗ исследования*")
chapter_3_4_text("Кальцинаты",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_calcinates_micro_pure,
                 dfXlsxGr4$us_calcinates_micro_pure,
                 dfXlsxSnr$us_calcinates_micro_pure,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.16, Рисунок 4.16).")
escribir ("Таблица №4.16. 
          Определение кальцинатов при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_calcinates_micro_pure.png)")
escribir ("Рисунок №4.16. Определение кальцинатов при УЗ исследовании в группах C и D.")
SnrPlot_us_diagnosis<- GeomBar(dfXlsxSnr,dfXlsxSnr$us_calcinates_micro_pure,dfXlsxSnr$group_separation,"Кальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_calcinates_micro_pure.png", 
       plot = SnrPlot_us_diagnosis, units = "in", width = 14, height = 8)

escribir ("*Определние злокачественного образования при УЗИ исследовании*")
chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$us_is_tumor,
                 dfXlsxGr4$us_is_tumor,
                 dfXlsxSnr$us_is_tumor,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.17, Рисунок 4.17).")
escribir ("Таблица №4.17. 
          Определение злокачественного новообразование при УЗ исследовании в группах C и D.")
escribir ("![](images4/us_is_tumor.png)")
escribir ("Рисунок №4.17. Определение злокачественного новообразование при УЗ исследовании в группах C и D.")
SnrPlot_us_is_tumor <- GeomBar(dfXlsxSnr,dfXlsxSnr$us_is_tumor,dfXlsxSnr$group_separation,"УЗ диагноз злокачественное образование")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/us_is_tumor.png", 
       plot = SnrPlot_us_is_tumor, units = "in", width = 14, height = 8)





######4.2.2 MMG#######
escribir ("### 4.2.2 Исследование ММГ")
escribir ("*Кожа при ММГ исследовании*")
chapter_3_4_text("Кожа",
                  "В группе C ",
                  "В группе D ",
                  dfXlsxSubsetMmgGr2$mmg_conclusion_skin,
                  dfXlsxSubsetMmgGr4$mmg_conclusion_skin,
                  dfXlsxSubsetMmgSnr$mmg_conclusion_skin,
                  dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.18, Рисунок 4.18).")
escribir ("Таблица №4.18. 
          Кожный покров при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_conclusion_skin.png)")
escribir ("Рисунок №4.18. Кожный покров при ММГ исследовании в группах C и D.")
SnrPlot_mmg_conclusion_skin <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_conclusion_skin,dfXlsxSubsetMmgSnr$group_separation,"Кожа")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_conclusion_skin.png", 
       plot = SnrPlot_mmg_conclusion_skin, units = "in", width = 14, height = 8)

escribir ("*Ареола при ММГ исследовании*")
chapter_3_4_text("Ареола",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_areola,
                 dfXlsxSubsetMmgGr4$mmg_areola,
                 dfXlsxSubsetMmgSnr$mmg_areola,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.19, Рисунок 4.19).")
escribir ("Таблица №4.19. 
          Ареола при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_areola.png)")
escribir ("Рисунок №4.19. Ареола при ММГ исследовании в группах C и D.")
SnrPlot_mmg_areola <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_areola,dfXlsxSubsetMmgSnr$group_separation,"Ареола")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_areola.png", 
       plot = SnrPlot_mmg_areola, units = "in", width = 14, height = 8)

escribir ("*Сосок при ММГ исследовании*")
chapter_3_4_text("Сосок",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_nipple,
                 dfXlsxGr4$mmg_nipple,
                 dfXlsxSnr$mmg_nipple,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.20, Рисунок 4.20).")
escribir ("Таблица №4.20. 
          Сосок при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_nipple.png)")
escribir ("Рисунок №4.20. Сосок при ММГ исследовании в группах C и D.")
SnrPlot_mmg_nipple <- GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_nipple,dfXlsxSnr$group_separation,"Сосок")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_nipple.png", 
       plot = SnrPlot_mmg_nipple, units = "in", width = 14, height = 8)

escribir ("*Фон при ММГ исследовании*")
chapter_3_4_text("ММГ-фон",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_background_breast,
                 dfXlsxGr4$mmg_background_breast,
                 dfXlsxSnr$mmg_background_breast,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.21, Рисунок 4.21).")
escribir ("Таблица №4.21. 
          Фон при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_background_breast.png)")
escribir ("Рисунок №4.21. Фон при ММГ исследовании в группах C и D.")
SnrPlot_mmg_background_breast <- GeomBar(dfXlsxSnr,dfXlsxSnr$mmg_background_breast,dfXlsxSnr$group_separation,"ММГ-фон")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_background_breast.png", 
       plot = SnrPlot_mmg_background_breast, units = "in", width = 14, height = 8)

escribir ("*Определние узлов при ММГ исследовании*")
chapter_3_4_text("Узлы были найдены",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_is_nodle,
                 dfXlsxSubsetMmgGr4$mmg_is_nodle,
                 dfXlsxSubsetMmgSnr$mmg_is_nodle,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.22, Рисунок 4.22).")
escribir ("Таблица №4.22. 
          Найдены узлы при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_is_nodle.png)")
escribir ("Рисунок №4.22. Найдены узлы при ММГ исследовании в группах C и D.")
SnrPlot_mmg_is_nodle <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_is_nodle,dfXlsxSubsetMmgSnr$group_separation,"Узлы")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_is_nodle.png", 
       plot = SnrPlot_mmg_is_nodle, units = "in", width = 14, height = 8)

chapter_3_4_text("Узлы",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleMmgGr2$mmg_nodle,
                 dfXlsxNodleMmgGr4$mmg_nodle,
                 dfXlsxNodleMmgSnr$mmg_nodle,
                 dfXlsxNodleMmgSnr$group_separation)
escribir ("(Таблица 4.23, Рисунок 4.23).")
escribir ("Таблица №4.23. 
          Узлы при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_nodle.png)")
escribir ("Рисунок №4.23. Узлы при ММГ исследовании в группах C и D.")
SnrPlot_mmg_nodle <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_nodle,dfXlsxSubsetMmgSnr$group_separation,"Узлы")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_nodle.png", 
       plot = SnrPlot_mmg_nodle, units = "in", width = 14, height = 8)

escribir ("*Края узлов при ММГ исследовании*")
chapter_3_4_text("Края узлов",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleMmgGr2$mmg_nodle_contour,
                 dfXlsxNodleMmgGr4$mmg_nodle_contour,
                 dfXlsxNodleMmgSnr$mmg_nodle_contour,
                 dfXlsxNodleMmgSnr$group_separation)
escribir ("(Таблица 4.24, Рисунок 4.24).")
escribir ("Таблица №4.24. 
          Края узлов при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_nodle_contour.png)")
escribir ("Рисунок №4.24. Края узлов при ММГ исследовании в группах C и D.")
SnrPlot_mmg_nodle_contour <- GeomBar(dfXlsxNodleMmgSnr,dfXlsxNodleMmgSnr$mmg_nodle_contour,dfXlsxNodleMmgSnr$group_separation,"Края узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_nodle_contour.png", 
       plot = SnrPlot_mmg_nodle_contour, units = "in", width = 14, height = 8)

escribir ("*Размер узлов при ММГ исследовании*")
chapter_3_4_text("Размер узлов",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleMmgGr2$mmg_nodle_size,
                 dfXlsxNodleMmgGr4$mmg_nodle_size,
                 dfXlsxNodleMmgSnr$mmg_nodle_size,
                 dfXlsxNodleMmgSnr$group_separation)
escribir ("(Таблица 4.25, Рисунок 4.25).")
escribir ("Таблица №4.25. 
          Размер узлов при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_nodle_size.png)")
escribir ("Рисунок №4.25. Размер узлов при ММГ исследовании в группах C и D.")
SnrPlot_mmg_nodle_size <- GeomBar(dfXlsxNodleMmgSnr,dfXlsxNodleMmgSnr$mmg_nodle_size,dfXlsxNodleMmgSnr$group_separation,"Размер узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_nodle_size.png", 
       plot = SnrPlot_mmg_nodle_size, units = "in", width = 14, height = 8)

escribir ("*Количество визуализируемых узлов при ММГ исследовании*")
chapter_3_4_text("Количество визуализируемых образований",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleMmgGr2$mmg_number_formations_visualized,
                 dfXlsxNodleMmgGr4$mmg_number_formations_visualized,
                 dfXlsxNodleMmgSnr$mmg_number_formations_visualized,
                 dfXlsxNodleMmgSnr$group_separation)
escribir ("(Таблица 4.26, Рисунок 4.26).")
escribir ("Таблица №4.26. 
          Количество визуализируемых образований при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_number_formations_visualized.png)")
escribir ("Рисунок №4.26. Количество визуализируемых образований при ММГ исследовании в группах C и D.")
SnrPlot_mmg_number_formations_visualized <- GeomBar(dfXlsxNodleMmgSnr,dfXlsxNodleMmgSnr$mmg_number_formations_visualized,dfXlsxNodleMmgSnr$group_separation,"Количество визуализируемых образований")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_number_formations_visualized.png", 
       plot = SnrPlot_mmg_number_formations_visualized, units = "in", width = 14, height = 8)

escribir ("*Количество узлов при ММГ исследовании*")
chapter_3_4_text("Количество узлов",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxNodleMmgGr2$mmg_number_nodles,
                 dfXlsxNodleMmgGr4$mmg_number_nodles,
                 dfXlsxNodleMmgSnr$mmg_number_nodles,
                 dfXlsxNodleMmgSnr$group_separation)
escribir ("(Таблица 4.27, Рисунок 4.27).")
escribir ("Таблица №4.27. 
          Количество узлов при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_number_nodles.png)")
escribir ("Рисунок №4.27. Количество узлов при ММГ исследовании в группах C и D.")
SnrPlot_mmg_number_nodles <- GeomBar(dfXlsxNodleMmgSnr,dfXlsxNodleMmgSnr$mmg_number_nodles,dfXlsxNodleMmgSnr$group_separation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_number_nodles.png", 
       plot = SnrPlot_mmg_number_nodles, units = "in", width = 14, height = 8)

escribir ("*Кальльцификаты при ММГ исследовании*")
chapter_3_4_text("Кальльцификаты",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_calcifications,
                 dfXlsxSubsetMmgGr4$mmg_calcifications,
                 dfXlsxSubsetMmgSnr$mmg_calcifications,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.28, Рисунок 4.28).")
escribir ("Таблица №4.28. 
          Кальльцификаты при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_calcifications.png)")
escribir ("Рисунок №4.28. Кальльцификаты при ММГ исследовании в группах C и D.")
SnrPlot_mmg_calcifications <- GeomBar(dfXlsxSnrMmgCalc,dfXlsxSnrMmgCalc$mmg_calcifications,dfXlsxSnrMmgCalc$group_separation,"Кальльцификаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_calcifications.png", 
       plot = SnrPlot_mmg_calcifications, units = "in", width = 14, height = 8)

escribir ("*Подмышечные лимфоузлы при ММГ исследовании*")
chapter_3_4_text("Подмышечные лимфоузлы",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_axillary_lymph_nodes,
                 dfXlsxSubsetMmgGr4$mmg_axillary_lymph_nodes,
                 dfXlsxSubsetMmgSnr$mmg_axillary_lymph_nodes,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.29, Рисунок 4.29).")
escribir ("Таблица №4.29. 
          Подмышечные лимфоузлы  при ММГ исследовании в группах C и D.")
escribir ("![](images4/mmg_axillary_lymph_nodes.png)")
escribir ("Рисунок №4.29. Подмышечные лимфоузлы  при ММГ исследовании в группах C и D.")
SnrPlot_mmg_axillary_lymph_nodes<- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_axillary_lymph_nodes,dfXlsxSubsetMmgSnr$group_separation,"Подмышечные лимфоузлы")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_axillary_lymph_nodes.png", 
       plot = SnrPlot_mmg_axillary_lymph_nodes, units = "in", width = 14, height = 8)

escribir ("*Категория BI-RADS при ММГ исследовании*")
chapter_3_4_text("Категория BI-RADS",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_category_birads,
                 dfXlsxSubsetMmgGr4$mmg_category_birads,
                 dfXlsxSubsetMmgSnr$mmg_category_birads,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.30, Рисунок 4.30).")
escribir ("Таблица №4.30. 
          Категория BI-RADS по результатам выполнения ММГ в группах C и D.")
escribir ("![](images4/mmg_category_birads.png)")
escribir ("Рисунок №4.30. Категория BI-RADS по результатам выполнения ММГ в группах C и D.")
SnrPlot_mmg_category_birads <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_category_birads,dfXlsxSubsetMmgSnr$group_separation,"Категория BI-RADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_category_birads.png", 
       plot = SnrPlot_mmg_category_birads, units = "in", width = 14, height = 8)

escribir ("*Заключение ММГ*")
chapter_3_4_text("ММГ заключение",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_conclusion,
                 dfXlsxSubsetMmgGr4$mmg_conclusion,
                 dfXlsxSubsetMmgSnr$mmg_conclusion,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.31, Рисунок 4.31).")
escribir ("Таблица №4.31. 
          Заключение по результатам выполнения ММГ в группах C и D.")
escribir ("![](images4/mmg_conclusion.png)")
escribir ("Рисунок №4.31. Заключение по результатам выполнения ММГв группах А и B.")
SnrPlot_mmg_conclusion <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_conclusion,dfXlsxSubsetMmgSnr$group_separation,"ММГ заключение")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_conclusion.png", 
       plot = SnrPlot_mmg_conclusion, units = "in", width = 14, height = 8)

escribir ("*Злокачественное новообразование по результатам выполнения ММГ*")
chapter_3_4_text("ММГ диагноз злокачественное образование",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMmgGr2$mmg_is_tumor,
                 dfXlsxSubsetMmgGr4$mmg_is_tumor,
                 dfXlsxSubsetMmgSnr$mmg_is_tumor,
                 dfXlsxSubsetMmgSnr$group_separation)
escribir ("(Таблица 4.32, Рисунок 4.32).")
escribir ("Таблица №4.32. 
          Злокачественное новообразование по результатам выполнения ММГ в группах C и D.")
escribir ("![](images4/mmg_is_tumor.png)")
escribir ("Рисунок №4.32. Злокачественное новообразование по результатам выполнения ММГ А и B.")
SnrPlot_mmg_is_tumor <- GeomBar(dfXlsxSubsetMmgSnr,dfXlsxSubsetMmgSnr$mmg_is_tumor,dfXlsxSubsetMmgSnr$group_separation,"ММГ диагноз злокачественное образование")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mmg_is_tumor.png", 
       plot = SnrPlot_mmg_is_tumor, units = "in", width = 14, height = 8)





######4.2.3 MRSI#######
escribir ("### 4.2.3 Исследование МРТ")
escribir ("*Данные МРТ исследования*")
chapter_3_4_text("Данные МРТ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMrsiGr2$mrsi_data,
                 dfXlsxSubsetMrsiGr4$mrsi_data,
                 dfXlsxSubsetMrsiSnr$mrsi_data,
                 dfXlsxSubsetMrsiSnr$group_separation)
escribir ("(Таблица 4.33, Рисунок 4.33).")
escribir ("Таблица №4.33. 
          Данные МРТ в группах C и D.")
escribir ("![](images4/mrsi_data.png)")
escribir ("Рисунок №4.33. Данные МРТ в группах C и D.")
SnrPlot_mrsi_data <- GeomBar(dfXlsxSubsetMrsiSnr,dfXlsxSubsetMrsiSnr$mrsi_data,dfXlsxSubsetMrsiSnr$group_separation,"Данные МРТ")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mrsi_data.png", 
       plot = SnrPlot_mrsi_data, units = "in", width = 14, height = 8)

escribir ("*Количество узлов на МРТ*")
chapter_3_4_text("Количество узлов на МРТ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMrsiGr2$mrsi_number_nodles,
                 dfXlsxSubsetMrsiGr4$mrsi_number_nodles,
                 dfXlsxSubsetMrsiSnr$mrsi_number_nodles,
                 dfXlsxSubsetMrsiSnr$group_separation)
escribir ("(Таблица 4.34, Рисунок 4.34).")
escribir ("Таблица №4.34. 
          Количество узлов на МРТ в группах C и D.")
escribir ("![](images4/mrsi_number_nodles.png)")
escribir ("Рисунок №4.34. Количество узлов на МРТ в группах C и D.")
SnrPlot_mrsi_number_nodles <- GeomBar(dfXlsxSubsetMrsiSnr,dfXlsxSubsetMrsiSnr$mrsi_number_nodles,dfXlsxSubsetMrsiSnr$group_separation,"Количество узлов на МРТ")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/mrsi_number_nodles.png", 
       plot = SnrPlot_mrsi_number_nodles, units = "in", width = 14, height = 8)


######4.2.4 Tumor#######
escribir ("### 4.2.4 Гистологическая оценка")
escribir ("*Морфологическая структура*")
chapter_3_4_text("Морфологическая структура",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMalignancyGr2$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyGr4$tumor_morphology_structure,
                 dfXlsxSubsetMalignancySnr$tumor_morphology_structure,
                 dfXlsxSubsetMalignancySnr$group_separation)
escribir ("(Таблица 4.35, Рисунок 4.35).")
escribir ("Таблица №4.35. 
          Морфологическая структура гистопрепаратов в группах C и D.")
escribir ("![](images4/tumor_morphology_structure.png)")
escribir ("Рисунок №4.35. Морфологическая структура гистопрепаратов в группах C и D.")
SnrPlot_tumor_morphology_structure <- GeomBar(dfXlsxSubsetMalignancySnr,dfXlsxSubsetMalignancySnr$tumor_morphology_structure,dfXlsxSubsetMalignancySnr$group_separation,"Морфологическая структура")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/tumor_morphology_structure.png", 
       plot = SnrPlot_tumor_morphology_structure, units = "in", width = 14, height = 8)

escribir ("*Цитологическое заключение*")
chapter_3_4_text("Цитологическое заключение",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetCytologicalGr2$cytological_conclusion,
                 dfXlsxSubsetCytologicalGr4$cytological_conclusion,
                 dfXlsxSubsetCytologicalSnr$cytological_conclusion,
                 dfXlsxSubsetCytologicalSnr$group_separation)
escribir ("(Таблица 4.36, Рисунок 4.36).")
escribir ("Таблица №4.36. 
          Цитологическое исследование материалов в группах C и D.")
escribir ("![](images4/cytological_conclusion.png)")
escribir ("Рисунок №4.36. Цитологическое исследование материалов в группах C и D.")
SnrPlot_cytological_conclusion <- GeomBar(dfXlsxSubsetCytologicalSnr,dfXlsxSubsetCytologicalSnr$cytological_conclusion,dfXlsxSubsetCytologicalSnr$group_separation,"Цитологическое заключение")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/cytological_conclusion.png", 
       plot = SnrPlot_cytological_conclusion, units = "in", width = 14, height = 8)

escribir ("*Рецепторы опухоли*")
chapter_3_4_text("Рецепторы опухоли",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetReceptorsGr2$tumor_receptors,
                 dfXlsxSubsetReceptorsGr4$tumor_receptors,
                 dfXlsxSubsetReceptorsSnr$tumor_receptors,
                 dfXlsxSubsetReceptorsSnr$group_separation)
escribir ("(Таблица 4.37, Рисунок 4.37).")
escribir ("Таблица №4.37. 
          Определение рецепторов опухоли в группах C и D.")
escribir ("![](images4/tumor_receptors.png)")
escribir ("Рисунок №4.37. Определение рецепторов опухоли в группах C и D.")
SnrPlot_tumor_receptors <- GeomBar(dfXlsxSubsetReceptorsSnr,dfXlsxSubsetReceptorsSnr$tumor_receptors,dfXlsxSubsetReceptorsSnr$group_separation,"Резепторы опухоли")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/tumor_receptors.png", 
       plot = SnrPlot_tumor_receptors, units = "in", width = 14, height = 8)

escribir ("*Гистологическое поддтверждение злокачественного новообразования*")
chapter_3_4_text("Гистологически обнаружено злокачественное образование",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$hist_is_tumor,
                 dfXlsxGr4$hist_is_tumor,
                 dfXlsxSnr$hist_is_tumor,
                 dfXlsxSnr$group_separation)
escribir ("(Таблица 4.38, Рисунок 4.38).")
escribir ("Таблица №4.38. 
          Гистологическое поддтверждение злокачественного оразования в группах C и D.")
escribir ("![](images4/hist_is_tumor.png)")
escribir ("Рисунок №4.38. Гистологическое поддтверждение злокачественного оразования в группах C и D.")
SnrPlot_hist_is_tumor <- GeomBar(dfXlsxSnr,dfXlsxSnr$hist_is_tumor,dfXlsxSnr$group_separation,"Злокачественное образование")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/hist_is_tumor.png", 
       plot = SnrPlot_hist_is_tumor, units = "in", width = 14, height = 8)

escribir ("*Определение злокачественности новообразования*")
chapter_3_4_text("Уровень злокачественности",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxSubsetMalignancyGr2$degree_malignancy,
                 dfXlsxSubsetMalignancyGr4$degree_malignancy,
                 dfXlsxSubsetMalignancySnr$degree_malignancy,
                 dfXlsxSubsetMalignancySnr$group_separation)
escribir ("(Таблица 4.39, Рисунок 4.39).")
escribir ("Таблица №4.39. 
          Определение злокачественности новообразования в группах C и D.")
escribir ("![](images4/degree_malignancy.png)")
escribir ("Рисунок №4.39. Определение злокачественности новообразования в группах C и D.")
SnrPlot_degree_malignancy <- GeomBar(dfXlsxSubsetMalignancySnr,dfXlsxSubsetMalignancySnr$degree_malignancy,dfXlsxSubsetMalignancySnr$group_separation,"Уровень злокачественности")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/degree_malignancy.png", 
       plot = SnrPlot_degree_malignancy, units = "in", width = 14, height = 8)



#####4.3 Sensitivity, Specificity, Accuracy#######
#predicted_value, expected_value
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("## 4.3 Определение чувствительности, спецефичности и точности методов для обнаружения злокачественного новообразования")

SSA_text(dfXlsxGr2$us_is_tumor,dfXlsxGr2$hist_is_tumor, "УЗИ в группе C")
SSA_text(dfXlsxGr2$mmg_is_tumor,dfXlsxGr2$hist_is_tumor, "ММГ в группе C")

SSA_text(dfXlsxGr4$us_is_tumor,dfXlsxGr4$hist_is_tumor, "УЗИ в группе D")
SSA_text(dfXlsxGr4$mmg_is_tumor,dfXlsxGr4$hist_is_tumor, "ММГ в группе D")
SSA_text(dfXlsxGr4$abus_is_tumor,dfXlsxGr4$hist_is_tumor, "ABUS в группе D")

SSA_text(dfXlsxSnr$us_is_tumor,dfXlsxSnr$hist_is_tumor, "УЗИ в выборке пациенток 40 лет и старше")
SSA_text(dfXlsxSnr$mmg_is_tumor,dfXlsxSnr$hist_is_tumor, "ММГ в выборке пациенток 40 лет и старше")
# SSA_text(dfXlsxSnr$abus_is_tumor,dfXlsxSnr$hist_is_tumor, "ABUS в выборке пациенток 40 лет и старше")

escribir ("(Таблица №4.40)")
escribir ("Таблица №4.40.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности в группах А и B.")


#####4.4 ROC curve#######

#source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("## 4.4 Прогностическая оценка методов")
escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов.")


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе C представлена на рисунке № 4.40. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr2[["ci"]][1],3) ,"-",round(pROC_obj_usGr2[["ci"]][3],3)
                ))
pROC_obj_usGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_usGr2.png", 
#        plot = pROC_obj_usGr2, units = "in", width = 14, height = 8)

escribir ("![](images4/pROC_obj_usGr2.png)")
escribir ("Рисунок №4.24. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе C.")



escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе D представлена на рисунке № 4.41. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4[["ci"]][1],3) ,"-",round(pROC_obj_usGr4[["ci"]][3],3)
))
pROC_obj_usGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_usGr4.png", 
#        plot = pROC_obj_usGr4, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_usGr4.png)")
escribir ("Рисунок №4.25. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе D.")


escribir (paste("ROC-кривая предсказательной модели для метода ММГ, по данным полученным в группе C представлена на рисунке № 4.42. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_mmgGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgGr2[["ci"]][1],3) ,"-",round(pROC_obj_mmgGr2[["ci"]][3],3)
                ))
pROC_obj_mmgGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$mmg_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_mmgGr2.png", 
#        plot = pROC_obj_mmgGr2, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_mmgGr2.png)")
escribir ("Рисунок №x.xx. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе C.")



escribir (paste("ROC-кривая предсказательной модели для метода ММГ, по данным полученным В группе D представлена на рисунке № 4.43. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_mmgGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgGr4[["ci"]][1],3) ,"-",round(pROC_obj_mmgGr4[["ci"]][3],3)
                ))
pROC_obj_mmgGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$mmg_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_mmgGr4.png", 
#        plot = pROC_obj_mmgGr4, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_mmgGr4.png)")
escribir ("Рисунок №x.xx. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе D.")



escribir (paste("ROC-кривая предсказательной модели для метода ABUS, по данным полученным В группе D представлена на рисунке № 4.44. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4[["ci"]][3],3)
))
pROC_obj_abusGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$abus_probabilityNeoCa,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_abusGr4.png", 
#        plot = pROC_obj_abusGr4, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_abusGr4.png)")
escribir ("Рисунок №4.26. ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B.")


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № 4.45. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usSnr[["ci"]][1],3) ,"-",round(pROC_obj_usSnr[["ci"]][3],3)
))
pROC_obj_usSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_usSnr.png", 
#        plot = pROC_obj_usSnr, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_usSnr.png)")
escribir ("Рисунок №4.27. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет.")



escribir (paste("ROC-кривая предсказательной модели для метода ММГ, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № 4.45. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_mmgSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgSnr[["ci"]][1],3) ,"-",round(pROC_obj_mmgSnr[["ci"]][3],3)
))
pROC_obj_mmgSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$mmg_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_mmgSnr.png", 
#        plot = pROC_obj_mmgSnr, units = "in", width = 14, height = 8)
escribir ("![](images4/pROC_obj_mmgSnr.png)")
escribir ("Рисунок №4.27. ROC-кривая предсказательной модели для метода ММГ, по данным полученным в выборке пациенток до 40 лет.")


# escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в выборке пациенток 40 лет и старше представлена на рисунке № х.х. 
#           Площадь под кривой (AUC- area under cruve) составила: ")
# pROC_obj_abusSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$abus_probabilityNeoCa,
#                         smoothed = TRUE,
#                         ci=TRUE, ci.alpha=0.9, stratified=FALSE,
#                         plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
#                         print.auc=TRUE, show.thres=TRUE)
# escribir ("![](images4/pROC_obj_abusSnr)")

escribir ("(Таблица №4.41)")
escribir (paste("Таблица №4.41.
Определение площади под кривой представленных предсказательных моделей метода в группах C и D.

| Метод                             | Площадь под кривой    |
  |-----------------------------------|-----------------------|
  | УЗИ в группе C                   |",round(pROC_obj_usGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr2[["ci"]][1],3) ,"-",round(pROC_obj_usGr2[["ci"]][3],3)," |
  | УЗИ в группе D                  |",round(pROC_obj_usGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4[["ci"]][1],3) ,"-",round(pROC_obj_usGr4[["ci"]][3],3)," |
  | УЗИ в выборке пациенток 40 лет и старше |",round(pROC_obj_usSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usSnr[["ci"]][1],3) ,"-",round(pROC_obj_usSnr[["ci"]][3],3)," |
  | ММГ в группе C                   |",round(pROC_obj_mmgGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgGr2[["ci"]][1],3) ,"-",round(pROC_obj_mmgGr2[["ci"]][3],3)," |
  | ММГ в группе D                   |",round(pROC_obj_mmgGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgGr4[["ci"]][1],3) ,"-",round(pROC_obj_mmgGr4[["ci"]][3],3)," |
  | ММГ в выборке пациенток 40 лет и старше |",round(pROC_obj_mmgSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_mmgSnr[["ci"]][1],3) ,"-",round(pROC_obj_mmgSnr[["ci"]][3],3)," |
  | ABUS в группе D                  |",round(pROC_obj_abusGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4[["ci"]][3],3)," |"))

#####4.5 Clinical case#######
escribir ("## 4.5 Клинические примеры")

#####4.6 Conclusion#######
escribir ("## 4.6 Заключение")

