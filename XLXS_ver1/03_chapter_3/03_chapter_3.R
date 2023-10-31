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


##### 3.1 General#######
escribir ("##3.1 Общее Описание результатов исследования УЗИ в выборке до 40 лет ")
######3.1.1 US#######
escribir ("###3.1.1 Результаты ручного УЗИ исследования")
How_many(dfXlsxJun$name_patient,"Всего в исследование вошло")
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кожа была ",dfXlsxJun$us_skin)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ протоки были ",dfXlsxJun$us_ducts)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ фон был ",dfXlsxJun$us_background)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был найден узел ",dfXlsxJun$us_is_nodle)


Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование находилось ",dfXlsxNodleUsJun$us_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ образование было ",dfXlsxNodleUsJun$us_form)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ размер узла ",dfXlsxNodleUsJun$us_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ контуры узлов были ",dfXlsxNodleUsJun$us_nodle_contour)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ эхогенность образования былы ",dfXlsxNodleUsJun$us_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ структура узла ",dfXlsxNodleUsJun$us_structure)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ кровоток в образовании ",dfXlsxNodleUsJun$us_formation_blood_flow)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ количество узлов было ",dfXlsxNodleUsJun$us_number_nodles)

Quantity_discr("В выборке до 40 лет при выполнении УЗИ элатография ",dfXlsxJun$us_elastography)  
Quantity_discr("В выборке до 40 лет при выполнении УЗИ увеличены регионарные лимфоузлы было ",dfXlsxJun$us_region_lymph_nodes)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз ",dfXlsxJun$us_diagnosis)
Quantity_discr("В выборке до 40 лет при выполнении УЗИ была установлена категория BIRADS ",dfXlsxJun$us_category_birads)

dfXlsxJunUsCalc <- subset(dfXlsxJun, dfXlsxJun$us_calcinates_micro_pure != "нет")
Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfXlsxJunUsCalc$us_calcinates_micro_pure)

Quantity_discr("В выборке до 40 лет при выполнении УЗИ был поставлен диагноз рак ",dfXlsxJun$us_is_tumor)



###### n.n.n MMG#######
Quantity_discr("В выборке до 40 лет был выполнена ММГ ",dfXlsxJun$is_mmg)

# Quantity_discr("В выборке до 40 лет при выполнении ММГ кожа ",dfXlsxSubsetMmgJun$mmg_conclusion_skin)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ ареола ",dfXlsxSubsetMmgJun$mmg_areola)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ сосок ",dfXlsxSubsetMmgJun$mmg_nipple)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ фон ",dfXlsxSubsetMmgJun$mmg_background_breast)

# Quantity_discr("В выборке до 40 лет при выполнении ММГ был найдено образование ",dfXlsxSubsetMmgJun$mmg_is_nodle)

# Quantity_discr("В выборке до 40 лет при выполнении ММГ узлы ",dfXlsxNodleMmgJun$mmg_nodle)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ контур узлов ",dfXlsxNodleMmgJun$mmg_nodle_contour)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ размер узлов ",dfXlsxNodleMmgJun$mmg_nodle_size)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ количество узлов ",dfXlsxNodleMmgJun$mmg_number_nodles)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ количество визуализыруемых образований ",dfXlsxNodleMmgJun$mmg_number_formations_visualized)

# Quantity_discr("В выборке до 40 лет при выполнении ММГ подмышечные лимфоузлы ",dfXlsxSubsetMmgJun$mmg_axillary_lymph_nodes)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ кальцификаты ",dfXlsxSubsetMmgJun$mmg_calcifications)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ категория BIRADS ",dfXlsxSubsetMmgJun$mmg_category_birads)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ заключение ММГ ",dfXlsxSubsetMmgJun$mmg_conclusion)
# Quantity_discr("В выборке до 40 лет при выполнении ММГ поставлен рак ",dfXlsxSubsetMmgJun$mmg_is_tumor)


######3.1.2 ABUS#######
escribir ("###3.1.2 Автоматизированное объемное УЗИ сканирование молочных желез (ABUS)")
Quantity_discr("В выборке до 40 лет был выполнен ABUS ",dfXlsxJun$is_abus)
Quantity_discr("В выборке до 40 лет при выполнении ABUS кожа была ",dfXlsxSubsetAbusJun$abus_skin)
Quantity_discr("В выборке до 40 лет при выполнении ABUS симптом ретракции ",dfXlsxSubsetAbusJun$abus_symptom_retraction)

Quantity_discr("В выборке до 40 лет при выполнении ABUS был найдено образование ",dfXlsxSubsetAbusJun$abus_is_nodle)

Quantity_discr("В выборке до 40 лет при выполнении ABUS размеры узлов были ",dfXlsxNodleAbusJun$abus_nodle_size)
Quantity_discr("В выборке до 40 лет при выполнении ABUS контуры узлов были ",dfXlsxNodleAbusJun$abus_nodle_contours)
Quantity_discr("В выборке до 40 лет при выполнении ABUS эхогенность образования ",dfXlsxNodleAbusJun$abus_echogenicity_formation)
Quantity_discr("В выборке до 40 лет при выполнении ABUS структура узлов ",dfXlsxNodleAbusJun$abus_structure)
Quantity_discr("В выборке до 40 лет при выполнении ABUS количество узлов ",dfXlsxNodleAbusJun$abus_number_nodles )

Quantity_discr("В выборке до 40 лет при выполнении ABUS была установлена категория BIRADS ",dfXlsxSubsetAbusJun$abus_category_birads)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз ",dfXlsxSubsetAbusJun$abus_diagnosis)
dfXlsxJunAbusCalc <- subset(dfXlsxJun, dfXlsxJun$abus_is_calc == "Да")
Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfXlsxJunAbusCalc$abus_calcinates)
Quantity_discr("В выборке до 40 лет при выполнении ABUS был поставлен диагноз рак ",dfXlsxSubsetAbusJun$abus_is_tumor)


######3.1.3 MRSI#######
escribir ("###3.1.3 Результаты МРТ исследования")
Quantity_discr("В выборке до 40 лет был выполнена МРТ ",dfXlsxJun$is_Mrsi)
Quantity_discr("В выборке до 40 лет при выполнении МРТ были  ",dfXlsxSubsetMrsiJun$mrsi_data)
Quantity_discr("В выборке до 40 лет при выполнении МРТ количество узлов  ",dfXlsxSubsetMrsiJun$mrsi_number_nodles)

######3.1.4 Tumor#######
escribir ("###3.1.4 Результаты гистологического исследования")
Quantity_discr("В выборке до 40 лет был проводилась пункция и морфологическая оценка ",dfXlsxJun$is_Morphology)
Quantity_discr("В выборке до 40 лет была морфологическая структура  ",dfXlsxSubsetMorphologyJun$tumor_morphology_structure)
Quantity_discr("В выборке до 40 лет был проводилась цитологическая оценка ",dfXlsxJun$is_Cytological)
Quantity_discr("В выборке до 40 лет при выполнении цитологии было заключение  ",dfXlsxSubsetCytologicalJun$cytological_conclusion)
Quantity_discr("В выборке до 40 лет гистологически поставлен рак  ",dfXlsxJun$hist_is_tumor)
Quantity_discr("В выборке до 40 лет был определен уровень злокачественности  ",dfXlsxSubsetMalignancyJun$degree_malignancy)
Quantity_discr("В выборке до 40 лет был проводилась оценка оценка рецепторов опухоли ",dfXlsxJun$is_Receptors)
Quantity_discr("В выборке до 40 лет был определены рецеторы  ",dfXlsxSubsetReceptorsJun$tumor_receptors)




#####3.2 Comparison#######

escribir ("## 3.2 Характеристика результатов по группам")
How_many(dfXlsxGr1$name_patient,"В группу A")
How_many(dfXlsxGr3$name_patient,"В группу B")

######3.2.1 US#######
escribir ("### 3.2.1 Исследование УЗИ")
escribir ("*Кожа при выполнении УЗИ*")
escribir ("Во всех случаях кожа была не изменена в обеих группах.")
# chapter_3_4_text("Кожа при выполнении УЗИ",
#                   "В группе A ",
#                  "В группе B ",
#                  dfXlsxGr1$us_skin,
#                  dfXlsxGr3$us_skin,
#                  dfXlsxJun$us_skin,
#                  dfXlsxJun$group_separation)
# GeomBar(dfXlsxJun,dfXlsxJun$us_skin,dfXlsxJun$group_separation,"Кожа при выполнении УЗИ")

escribir ("*Протоки при выполнении УЗИ*")
chapter_3_4_text("Протоки при выполнении УЗИ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_ducts,
                 dfXlsxGr3$us_ducts,
                 dfXlsxJun$us_ducts,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.1. Оценка протоков при выполнении ручного УЗ исследования в группах А и B.")
escribir ("![](images3/us_ducts)")
escribir ("Рисунок №3.1. Оценка протоков при выполнении ручного УЗ исследования в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_ducts,dfXlsxJun$group_separation,"Протоки при выполнении УЗИ")

escribir ("*УЗ-фон*")
chapter_3_4_text("УЗ-фон",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_background,
                 dfXlsxGr3$us_background,
                 dfXlsxJun$us_background,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.2. УЗ фона при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_background)")
escribir ("Рисунок №3.2. УЗ фона при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_background,dfXlsxJun$group_separation,"УЗ-фон")

escribir ("*Расположение образования*")
chapter_3_4_text("Образование находилось",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_formation,
                 dfXlsxNodleUsGr3$us_formation,
                 dfXlsxNodleUsJun$us_formation,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.3. Расположения образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_formation)")
escribir ("Рисунок №3.3. Расположения образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_formation,dfXlsxNodleUsJun$group_separation,"Образование находилось")

escribir ("*Форма образования*")
chapter_3_4_text("Форма образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_form,
                 dfXlsxNodleUsGr3$us_form,
                 dfXlsxNodleUsJun$us_form,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.4. Форма образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_form)")
escribir ("Рисунок №3.4. Форма образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_form,dfXlsxNodleUsJun$group_separation,"Форма образования")

escribir ("*Размер образования*")
chapter_3_4_text("Размер образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_nodle_size,
                 dfXlsxNodleUsGr3$us_nodle_size,
                 dfXlsxNodleUsJun$us_nodle_size,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.5. Размер образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_nodle_size)")
escribir ("Рисунок №3.5. Размер образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_nodle_size,dfXlsxNodleUsJun$group_separation,"Размер образования")

escribir ("*Края образования*")
chapter_3_4_text("Края образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_nodle_contour,
                 dfXlsxNodleUsGr3$us_nodle_contour,
                 dfXlsxNodleUsJun$us_nodle_contour,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.6. Оценка краев образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_nodle_contour)")
escribir ("Рисунок №3.6. Оценка краев образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_nodle_contour,dfXlsxNodleUsJun$group_separation,"Края образования")

escribir ("*Эхогенность образования*")
chapter_3_4_text("Эхогенность образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_echogenicity_formation,
                 dfXlsxNodleUsGr3$us_echogenicity_formation,
                 dfXlsxNodleUsJun$us_echogenicity_formation,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.7. Оценка эхогенности образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_echogenicity_formation)")
escribir ("Рисунок №3.7. Оценка эхогенности образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_echogenicity_formation,dfXlsxJun$group_separation,"Эхогенность образования")

escribir ("*УЗ-структура образования*")
chapter_3_4_text("УЗ-структура образования",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_structure,
                 dfXlsxGr3$us_structure,
                 dfXlsxJun$us_structure,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.8. Оценка УЗ-структуры образования при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_structure)")
escribir ("Рисунок №3.8. Оценка УЗ-структуры образования образования при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_structure,dfXlsxJun$group_separation,"УЗ-структура образования")

escribir ("*Количество узлов*")
chapter_3_4_text("Количество узлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_number_nodles,
                 dfXlsxNodleUsGr3$us_number_nodles,
                 dfXlsxNodleUsJun$us_number_nodles,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.9. Оценка количества узлов при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_number_nodles)")
escribir ("Рисунок №3.9. Оценка количества узлов при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_number_nodles,dfXlsxNodleUsJun$group_separation,"Количество узлов")

escribir ("*Кровоток в образовании*")
chapter_3_4_text("Кровоток в образовании",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_formation_blood_flow,
                 dfXlsxNodleUsGr3$us_formation_blood_flow,
                 dfXlsxNodleUsJun$us_formation_blood_flow,
                 dfXlsxNodleUsJun$group_separation)
escribir ("Таблица №3.10. Оценка кровотока в образовании при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_formation_blood_flow)")
escribir ("Рисунок №3.10. Оценка кровотока в образовании при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxNodleUsJun,dfXlsxNodleUsJun$us_formation_blood_flow,dfXlsxNodleUsJun$group_separation,"Кровоток в образовании")

escribir ("*Эластография*")
chapter_3_4_text("Эластография",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_elastography,
                 dfXlsxGr3$us_elastography,
                 dfXlsxJun$us_elastography,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.11. Результаты эластографии при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_elastography)")
escribir ("Рисунок №3.11. Результаты эластографии при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_elastography,dfXlsxJun$group_separation,"Эластография")

escribir ("*Регионарные лимфоузлы*")
chapter_3_4_text("Увеличение регинарных лимфоузлов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_region_lymph_nodes,
                 dfXlsxGr3$us_region_lymph_nodes,
                 dfXlsxJun$us_region_lymph_nodes,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.12. Результаты оценки регионарных лимфоузлов при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_region_lymph_nodes)")
escribir ("Рисунок №3.12. Результаты оценки регионарных лимфоузлов при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_region_lymph_nodes,dfXlsxJun$group_separation,"Увеличение регинарных лимфоузлов")

escribir ("*Определение категории BI-RADS*")
chapter_3_4_text("Категория BI-RADS",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_category_birads,
                 dfXlsxGr3$us_category_birads,
                 dfXlsxJun$us_category_birads,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.13. Определение категории BIRADS при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_category_birads)")
escribir ("Рисунок №3.13. Определение категории BIRADS при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_category_birads,dfXlsxJun$group_separation,"Категория BI-RADS")

escribir ("*Диагноз после выполнения УЗ исследования*")
chapter_3_4_text("УЗ-диагноз",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_diagnosis,
                 dfXlsxGr3$us_diagnosis,
                 dfXlsxJun$us_diagnosis,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.14. Поставленные диагнозы при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_diagnosis)")
escribir ("Рисунок №3.14. Поставленные диагнозы при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_diagnosis,dfXlsxJun$group_separation,"УЗ-диагноз")

escribir ("*Диагноз после выполнении УЗ исследования*")
chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_calcinates_micro_pure,
                 dfXlsxGr3$us_calcinates_micro_pure,
                 dfXlsxJun$us_calcinates_micro_pure,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.15. Определение кальцинатов при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_calcinates_micro_pure)")
escribir ("Рисунок №3.15. Определение кальцинатов при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJunUsCalc,dfXlsxJunUsCalc$us_calcinates_micro_pure,dfXlsxJunUsCalc$group_separation,"Кальцинаты")

escribir ("*Определние злокачественного образования при УЗИ исследовании*")
chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_is_tumor,
                 dfXlsxGr3$us_is_tumor,
                 dfXlsxJun$us_is_tumor,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.16. Определение злокачественного новообразование при УЗ исследовании в группах А и B.")
escribir ("![](images3/us_is_tumor)")
escribir ("Рисунок №3.16. Определение злокачественного новообразование при УЗ исследовании в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$us_is_tumor,dfXlsxJun$group_separation,"УЗ диагноз злокачественное образование")






######n.n.n MMG#######
# escribir ("### 3.2.2 Исследование ММГ"
# escribir ("*Кожа при ММГ исследовании*")
# chapter_3_4_text("Кожа",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_conclusion_skin,
#                  dfXlsxSubsetMmgGr3$mmg_conclusion_skin,
#                  dfXlsxSubsetMmgJun$mmg_conclusion_skin,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.17. Кожный покров при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_conclusion_skin)")
# escribir ("Рисунок №3.17. Кожный покров при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_conclusion_skin,dfXlsxSubsetMmgJun$group_separation,"Кожа")
# 
# escribir ("*Ареола при ММГ исследовании*")
# chapter_3_4_text("Ареола",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_areola,
#                  dfXlsxSubsetMmgGr3$mmg_areola,
#                  dfXlsxSubsetMmgJun$mmg_areola,
#                  dfXlsxJun$group_separation)
# escribir ("Таблица №3.18. Ареола при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_areola)")
# escribir ("Рисунок №3.18. Ареола при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_areola,dfXlsxSubsetMmgJun$group_separation,"Ареола")
# 
# escribir ("*Сосок при ММГ исследовании*")
# chapter_3_4_text("Сосок",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_nipple,
#                  dfXlsxGr3$mmg_nipple,
#                  dfXlsxJun$mmg_nipple,
#                  dfXlsxJun$group_separation)
# escribir ("Таблица №3.19. Сосок при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_nipple)")
# escribir ("Рисунок №3.19. Сосок при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxJun,dfXlsxJun$mmg_nipple,dfXlsxJun$group_separation,"Сосок")
# 
# escribir ("*Фон при ММГ исследовании*")
# chapter_3_4_text("ММГ-фон",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_background_breast,
#                  dfXlsxGr3$mmg_background_breast,
#                  dfXlsxJun$mmg_background_breast,
#                  dfXlsxJun$group_separation)
# escribir ("Таблица №3.20. Фон при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_background_breast)")
# escribir ("Рисунок №3.20. Фон при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxJun,dfXlsxJun$mmg_background_breast,dfXlsxJun$group_separation,"ММГ-фон")
# 
# escribir ("*Определние узлов при ММГ исследовании*")
# chapter_3_4_text("Узлы были найдены",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_is_nodle,
#                  dfXlsxSubsetMmgGr3$mmg_is_nodle,
#                  dfXlsxSubsetMmgJun$mmg_is_nodle,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.21. Найдены узлы при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_is_nodle)")
# escribir ("Рисунок №3.21. Найдены узлы при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_is_nodle,dfXlsxSubsetMmgJun$group_separation,"Узлы")

# chapter_3_4_text("Узлы",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_nodle,
#                  dfXlsxSubsetMmgGr3$mmg_nodle,
#                  dfXlsxSubsetMmgJun$mmg_nodle,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.22. Узлы при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_nodle)")
# escribir ("Рисунок №3.22. Узлы при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_nodle,dfXlsxSubsetMmgJun$group_separation,"Узлы")
# 
# escribir ("*Края узлов при ММГ исследовании*")
# chapter_3_4_text("Края узлов",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxNodleMmgJunGr1$mmg_nodle_contour,
#                  dfXlsxNodleMmgJunGr3$mmg_nodle_contour,
#                  dfXlsxNodleMmgJunJun$mmg_nodle_contour,
#                  dfXlsxNodleMmgJunJun$group_separation)
# escribir ("Таблица №3.23. Края узлов при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_nodle_contour)")
# escribir ("Рисунок №3.23. Края узлов при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxNodleMmgJunJun,dfXlsxNodleMmgJunJun$mmg_nodle_contour,dfXlsxNodleMmgJunJun$group_separation,"Края узлов")
# 
# escribir ("*Размер узлов при ММГ исследовании*")
# chapter_3_4_text("Размер узлов",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxNodleMmgJunGr1$mmg_nodle_size,
#                  dfXlsxNodleMmgJunGr3$mmg_nodle_size,
#                  dfXlsxNodleMmgJunJun$mmg_nodle_size,
#                  dfXlsxNodleMmgJunJun$group_separation)
# escribir ("Таблица №3.24. Размер узлов при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_nodle_size)")
# escribir ("Рисунок №3.24. Размер узлов при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxNodleMmgJunJun,dfXlsxNodleMmgJunJun$mmg_nodle_size,dfXlsxNodleMmgJunJun$group_separation,"Размер узлов")
# 
# escribir ("*Количество визуализируемых узлов при ММГ исследовании*")
# chapter_3_4_text("Количество визуализируемых образований",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxNodleMmgJunGr1$mmg_number_formations_visualized,
#                  dfXlsxNodleMmgJunGr3$mmg_number_formations_visualized,
#                  dfXlsxNodleMmgJunJun$mmg_number_formations_visualized,
#                  dfXlsxNodleMmgJunJun$group_separation)
# escribir ("Таблица №3.25. Количество визуализируемых образований при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_number_formations_visualized)")
# escribir ("Рисунок №3.25. Количество визуализируемых образований при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxNodleMmgJunJun,dfXlsxNodleMmgJunJun$mmg_number_formations_visualized,dfXlsxNodleMmgJunJun$group_separation,"Количество визуализируемых образований")
# 
# 
# escribir ("*Количество узлов при ММГ исследовании*")
# chapter_3_4_text("Количество узлов",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxNodleMmgJunGr1$mmg_number_nodles,
#                  dfXlsxNodleMmgJunGr3$mmg_number_nodles,
#                  dfXlsxNodleMmgJunJun$mmg_number_nodles,
#                  dfXlsxNodleMmgJunJun$group_separation)
# escribir ("Таблица №3.26. Количество узлов при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_number_nodles)")
# escribir ("Рисунок №3.26. Количество узлов при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxNodleMmgJunJun,dfXlsxNodleMmgJunJun$mmg_number_nodles,dfXlsxNodleMmgJunJun$group_separation,"Количество узлов")
#
# 
# escribir ("*Кальльцификаты при ММГ исследовании*")
# chapter_3_4_text("Кальльцификаты",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_calcifications,
#                  dfXlsxSubsetMmgGr3$mmg_calcifications,
#                  dfXlsxSubsetMmgJun$mmg_calcifications,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.27. Кальльцификаты при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_number_nodles)")
# escribir ("Рисунок №3.27. Кальльцификаты при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_calcifications,dfXlsxSubsetMmgJun$group_separation,"Кальльцификаты")
# 
# escribir ("*Подмышечные лимфоузлы при ММГ исследовании*")
# chapter_3_4_text("Подмышечные лимфоузлы",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_axillary_lymph_nodes,
#                  dfXlsxSubsetMmgGr3$mmg_axillary_lymph_nodes,
#                  dfXlsxSubsetMmgJun$mmg_axillary_lymph_nodes,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.28. Подмышечные лимфоузлы  при ММГ исследовании в группах А и B.")
# escribir ("![](images3/mmg_axillary_lymph_nodes)")
# escribir ("Рисунок №3.28. Подмышечные лимфоузлы  при ММГ исследовании в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_axillary_lymph_nodes,dfXdfXlsxSubsetMmgJunlsxJun$group_separation,"Подмышечные лимфоузлы")
# 
# escribir ("*Категория BI-RADS при ММГ исследовании*")
# chapter_3_4_text("Категория BI-RADS",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_category_birads,
#                  dfXlsxSubsetMmgGr3$mmg_category_birads,
#                  dfXlsxSubsetMmgJun$mmg_category_birads,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.29. Категория BI-RADS по результатам выполнения ММГ в группах А и B.")
# escribir ("![](images3/mmg_category_birads)")
# escribir ("Рисунок №3.29. Категория BI-RADS по результатам выполнения ММГ в группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_category_birads,dfXlsxSubsetMmgJun$group_separation,"Категория BI-RADS")
# 
# 
# escribir ("*Заключение ММГ*")
# chapter_3_4_text("ММГ заключение",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_conclusion,
#                  dfXlsxSubsetMmgGr3$mmg_conclusion,
#                  dfXlsxSubsetMmgJun$mmg_conclusion,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.30. Заключение по результатам выполнения ММГ в группах А и B.")
# escribir ("![](images3/mmg_conclusion)")
# escribir ("Рисунок №3.30. Заключение по результатам выполнения ММГв группах А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_conclusion,dfXlsxSubsetMmgJun$group_separation,"ММГ заключение")
# 
# escribir ("*Злокачественное новообразование по результатам выполнения ММГ*")
# chapter_3_4_text("ММГ диагноз злокачественное образование",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxSubsetMmgGr1$mmg_is_tumor,
#                  dfXlsxSubsetMmgGr3$mmg_is_tumor,
#                  dfXlsxSubsetMmgJun$mmg_is_tumor,
#                  dfXlsxSubsetMmgJun$group_separation)
# escribir ("Таблица №3.31. Злокачественное новообразование по результатам выполнения ММГ в группах А и B.")
# escribir ("![](images3/mmg_is_tumor)")
# escribir ("Рисунок №3.31. Злокачественное новообразование по результатам выполнения ММГ А и B.")
# GeomBar(dfXlsxSubsetMmgJun,dfXlsxSubsetMmgJun$mmg_is_tumor,dfXlsxSubsetMmgJun$group_separation,"ММГ диагноз злокачественное образование")






######3.2.2 MRSI#######
escribir ("### 3.2.3 Исследование МРТ")
escribir ("*Данные МРТ исследования*")
chapter_3_4_text("Данные МРТ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetMrsiGr1$mrsi_data,
                 dfXlsxSubsetMrsiGr3$mrsi_data,
                 dfXlsxSubsetMrsiJun$mrsi_data,
                 dfXlsxSubsetMrsiJun$group_separation)
escribir ("Таблица №3.17. Данные МРТ в группах А и B.")
escribir ("![](images3/mrsi_data)")
escribir ("Рисунок №3.17. Данные МРТ в группах А и B.")
GeomBar(dfXlsxSubsetMrsiJun,dfXlsxSubsetMrsiJun$mrsi_data,dfXlsxSubsetMrsiJun$group_separation,"Данные МРТ")

escribir ("*Количество узлов на МРТ*")
chapter_3_4_text("Количество узлов на МРТ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetMrsiGr1$mrsi_number_nodles,
                 dfXlsxSubsetMrsiGr3$mrsi_number_nodles,
                 dfXlsxSubsetMrsiJun$mrsi_number_nodles,
                 dfXlsxSubsetMrsiJun$group_separation)
escribir ("Таблица №3.18. Количество узлов на МРТ в группах А и B.")
escribir ("![](images3/mrsi_number_nodles)")
escribir ("Рисунок №3.18. Количество узлов на МРТ в группах А и B.")
GeomBar(dfXlsxSubsetMrsiJun,dfXlsxSubsetMrsiJun$mrsi_number_nodles,dfXlsxSubsetMrsiJun$group_separation,"Количество узлов на МРТ")



######3.2.3 Tumor#######
escribir ("### 3.2.3 Гистологическая оценка")
escribir ("*Морфологическая структура*")
chapter_3_4_text("Морфологическая структура",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetMalignancyGr1$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyGr3$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyJun$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyJun$group_separation)
escribir ("Таблица №3.19. Морфологическая структура гистопрепаратов в группах А и B.")
escribir ("![](images3/tumor_morphology_structure)")
escribir ("Рисунок №3.19. Морфологическая структура гистопрепаратов в группах А и B.")
GeomBar(dfXlsxSubsetMorphologyJun,dfXlsxSubsetMorphologyJun$tumor_morphology_structure,dfXlsxSubsetMorphologyJun$group_separation,"Морфологическая структура")

escribir ("*Цитологическое заключение*")
chapter_3_4_text("Цитологическое заключение",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetCytologicalGr1$cytological_conclusion,
                 dfXlsxSubsetCytologicalGr3$cytological_conclusion,
                 dfXlsxSubsetCytologicalJun$cytological_conclusion,
                 dfXlsxSubsetCytologicalJun$group_separation)
escribir ("Таблица №3.20. Цитологическое исследование материалов в группах А и B.")
escribir ("![](images3/cytological_conclusion)")
escribir ("Рисунок №3.20. Цитологическое исследование материалов в группах А и B.")
GeomBar(dfXlsxSubsetCytologicalJun,dfXlsxSubsetCytologicalJun$cytological_conclusion,dfXlsxSubsetCytologicalJun$group_separation,"Цитологическое заключение")

escribir ("*Рецепторы опухоли*")
chapter_3_4_text("Рецепторы опухоли",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetReceptorsGr1$tumor_receptors,
                 dfXlsxSubsetReceptorsGr3$tumor_receptors,
                 dfXlsxSubsetReceptorsJun$tumor_receptors,
                 dfXlsxSubsetReceptorsJun$group_separation)
escribir ("Таблица №3.21. Определение рецепторов опухоли в группах А и B.")
escribir ("![](images3/tumor_receptors)")
escribir ("Рисунок №3.21. Определение рецепторов опухоли в группах А и B.")
GeomBar(dfXlsxSubsetReceptorsJun,dfXlsxSubsetReceptorsJun$tumor_receptors,dfXlsxSubsetReceptorsJun$group_separation,"Резепторы опухоли")

escribir ("*Гистологическое поддтверждение злокачественного новообразования*")
chapter_3_4_text("Гистологически обнаружено злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$hist_is_tumor,
                 dfXlsxGr3$hist_is_tumor,
                 dfXlsxJun$hist_is_tumor,
                 dfXlsxJun$group_separation)
escribir ("Таблица №3.22. Гистологическое поддтверждение злокачественного оразования в группах А и B.")
escribir ("![](images3/hist_is_tumor)")
escribir ("Рисунок №3.22. Гистологическое поддтверждение злокачественного оразования в группах А и B.")
GeomBar(dfXlsxJun,dfXlsxJun$hist_is_tumor,dfXlsxJun$group_separation,"Злокачественное образование")

escribir ("*Определение злокачественности новообразования*")
chapter_3_4_text("Уровень злокачественности",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetMalignancyGr1$degree_malignancy,
                 dfXlsxSubsetMalignancyGr3$degree_malignancy,
                 dfXlsxSubsetMalignancyJun$degree_malignancy,
                 dfXlsxSubsetMalignancyJun$group_separation)
escribir ("Таблица №3.23. Определение злокачественности новообразования в группах А и B.")
escribir ("![](images3/degree_malignancy)")
escribir ("Рисунок №3.23. Определение злокачественности новообразования в группах А и B.")
GeomBar(dfXlsxSubsetMalignancyJun,dfXlsxSubsetMalignancyJun$degree_malignancy,dfXlsxSubsetMalignancyJun$group_separation,"Уровень злокачественности")




#####3.3 Sensitivity, Specificity, Accuracy#######
#predicted_value, expected_value
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("##3.3 Определение чувствительности, спецефичности и точности методов")

SSA_text(dfXlsxGr1$us_is_tumor,dfXlsxGr1$hist_is_tumor, "УЗИ в группе А")
# SSA_text(dfXlsxGr1$mmg_is_tumor,dfXlsxGr1$hist_is_tumor, "ММГ в группе А")

SSA_text(dfXlsxGr3$us_is_tumor,dfXlsxGr3$hist_is_tumor, "УЗИ в группе B")
# SSA_text(dfXlsxGr3$mmg_is_tumor,dfXlsxGr1$hist_is_tumor, "ММГ в группе B")
SSA_text(dfXlsxGr3$abus_is_tumor,dfXlsxGr3$hist_is_tumor, "ABUS в группе B")

SSA_text(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor, "УЗИ в выборке пациенток до 40 лет")
# SSA_text(dfXlsxJun$mmg_is_tumor,dfXlsxJun$hist_is_tumor, "ММГ в выборке пациенток до 40 лет")
SSA_text(dfXlsxJun$abus_is_tumor,dfXlsxJun$hist_is_tumor, "ABUS в выборке пациенток до 40 лет")



#####3.4 ROC curve#######
library(pROC)
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("##3.4 Прогностическая оценка методов")
escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
          )


escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A представлена на рисунке № 3.24. 
          Площадь под кривой (AUC- area under cruve) составила: ")
pROC_obj_usGr1 <- roc(dfXlsxGr1$hist_is_tumor,dfXlsxGr1$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](images3/pROC_obj_usGr1)")
escribir ("Рисунок №3.24. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A.")



escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B представлена на рисунке № 3.25. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](images3/pROC_obj_usGr3)")
escribir ("Рисунок №3.25. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B.")


# escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A представлена на рисунке № x.xx. 
#           Площадь под кривой (AUC- area under cruve) составила: ")
# pROC_obj_mmgGr1 <- roc(dfXlsxGr1$hist_is_tumor,dfXlsxGr1$mmg_probabilityNeoCa,
#                       smoothed = TRUE,
#                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
#                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
#                       print.auc=TRUE, show.thres=TRUE)
# escribir ("![](images3/pROC_obj_mmgGr1)")
# escribir ("Рисунок №x.xx. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A.")
# 
# 
# 
# escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B представлена на рисунке № x.xx. 
#           Площадь под кривой (AUC- area under cruve) составила: "
# )
# pROC_obj_mmgGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$mmg_probabilityNeoCa,
#                       smoothed = TRUE,
#                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
#                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
#                       print.auc=TRUE, show.thres=TRUE)
# escribir ("![](images3/pROC_obj_mmgGr3)")
# escribir ("Рисунок №x.xx. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B.")



escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B представлена на рисунке № 3.26. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$abus_probabilityNeoCa,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
escribir ("![](images3/pROC_obj_abusGr3)")
escribir ("Рисунок №3.26. ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B.")


escribir ("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № 3.27. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usJun <- roc(dfXlsxJun$hist_is_tumor,dfXlsxJun$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](images3/pROC_obj_usJun)")
escribir ("Рисунок №3.27. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет.")


# escribir ("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № х.х. 
#           Площадь под кривой (AUC- area under cruve) составила: ")
# pROC_obj_abusJun <- roc(dfXlsxJun$hist_is_tumor,dfXlsxJun$abus_probabilityNeoCa,
#                         smoothed = TRUE,
#                         ci=TRUE, ci.alpha=0.9, stratified=FALSE,
#                         plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
#                         print.auc=TRUE, show.thres=TRUE)
# escribir ("![](images3/pROC_obj_abusJun)")
#####3.5 Clinical case#######
escribir ("##3.5 Клинические примеры")

#####3.6 Conclusion#######
escribir ("##3.6 Заключение")
