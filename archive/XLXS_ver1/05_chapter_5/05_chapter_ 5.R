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


escribir ("# ГЛАВА 5. СРАВНЕНИЕ МЕТОДОВ УЗИ И ABUS ПО ОТДЕЛЬНЫМ ПОКАЗАТЕЛЯМ")
escribir (paste("В настоящей главе проведено сравнение по отдельным показателям насполько изучаемые методы сопоставими.",
                "Сравнение проводилось внутри групп B и D, так как именно в этих группах проводились оба изучаемыз метода УЗ-диагностики."))
##### 5.1 Сompaire B #######
escribir ("## 5.1 Сравнение методов УЗИ и ABUS внутри группе B")

escribir ("* Края образования *")
chapter_3_4_text("Края образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$nodleContour,
                 dfXlsxMetCompJunAbus$nodleContour,
                 dfXlsxMetCompJun$nodleContour,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.1, Рисунок 5.1).")
escribir ("Таблица №5.1. 
          Сравнение методов УЗИ и ABUS по показателю \"края образования\" в группе B.")
escribir ("![](images5/Jun/nodleContour.png)")
escribir ("Рисунок №5.1. Сравнение методов УЗИ и ABUS по показателю \"края образования\" в группе B.")
CompPlot_nodleContour <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$nodleContour,dfXlsxMetCompJun$methodsVizualisation,"Края образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/nodleContour.png", 
       plot = CompPlot_nodleContour, units = "in", width = 14, height = 8)

escribir ("* Размер образования *")
chapter_3_4_text("Размер образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$nodleSize,
                 dfXlsxMetCompJunAbus$nodleSize,
                 dfXlsxMetCompJun$nodleSize,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.2, Рисунок 5.2).")
escribir ("Таблица №5.2. 
          Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе B.")
escribir ("![](images5/Jun/nodleSize.png)")
escribir ("Рисунок №5.2. Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе B.")
CompPlot_nodleSize <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$nodleSize,dfXlsxMetCompJun$methodsVizualisation,"Размер образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/nodleSize.png", 
       plot = CompPlot_nodleSize, units = "in", width = 14, height = 8)

escribir ("* Эхогенность образования *")
chapter_3_4_text("Эхогенность образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$echogenicityFormation,
                 dfXlsxMetCompJunAbus$echogenicityFormation,
                 dfXlsxMetCompJun$echogenicityFormation,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.3, Рисунок 5.3).")
escribir ("Таблица №5.3. 
          Сравнение методов УЗИ и ABUS по показателю \"Эхогенность образования\" в группе B.")
escribir ("![](images5/Jun/echogenicityFormation.png)")
escribir ("Рисунок №5.3. Сравнение методов УЗИ и ABUS по показателю \"Эхогенность образования\" в группе B.")
CompPlot_echogenicityFormation <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$echogenicityFormation,dfXlsxMetCompJun$methodsVizualisation,"Эхогенность образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/echogenicityFormation.png", 
       plot = CompPlot_echogenicityFormation, units = "in", width = 14, height = 8)

escribir ("* Структура образования *")
chapter_3_4_text("Структура образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$structure,
                 dfXlsxMetCompJunAbus$structure,
                 dfXlsxMetCompJun$structure,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.4, Рисунок 5.4).")
escribir ("Таблица №5.4. 
          Сравнение методов УЗИ и ABUS по показателю \"Структура образования\" в группе B.")
escribir ("![](images5/Jun/structure.png)")
escribir ("Рисунок №5.4. Сравнение методов УЗИ и ABUS по показателю \"Структура образования\" в группе B.")
CompPlot_structure <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$structure,dfXlsxMetCompJun$methodsVizualisation,"Структура образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/structure.png", 
       plot = CompPlot_structure, units = "in", width = 14, height = 8)

escribir ("* Количество узлов *")
chapter_3_4_text("Количество узлов",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$numberNodles,
                 dfXlsxMetCompJunAbus$numberNodles,
                 dfXlsxMetCompJun$numberNodles,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.5, Рисунок 5.5).")
escribir ("Таблица №5.5. 
          Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе B.")
escribir ("![](images5/Jun/numberNodles.png)")
escribir ("Таблица №5.5. Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе B.")
CompPlot_numberNodles <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$numberNodles,dfXlsxMetCompJun$methodsVizualisation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/numberNodles.png", 
       plot = CompPlot_numberNodles, units = "in", width = 14, height = 8)


escribir ("* Локализация *")
chapter_3_4_text("Локализация",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$location,
                 dfXlsxMetCompJunAbus$location,
                 dfXlsxMetCompJun$location,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.5, Рисунок 5.5).")
escribir ("Таблица №5.5. 
          Сравнение методов УЗИ и ABUS по показателю \"Локализация\" в группе B.")
escribir ("![](images5/Jun/location.png)")
escribir ("Таблица №5.5. Сравнение методов УЗИ и ABUS по показателю \"Локализация\" в группе B.")
CompPlot_numberNodles <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$location,dfXlsxMetCompJun$methodsVizualisation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/location.png", 
       plot = CompPlot_numberNodles, units = "in", width = 14, height = 8)

escribir ("* Микрокальцинаты *")
chapter_3_4_text("Микрокальцинаты",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$isMicroCalc,
                 dfXlsxMetCompJunAbus$isMicroCalc,
                 dfXlsxMetCompJun$isMicroCalc,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.7, Рисунок 5.7).")
escribir ("Таблица №5.7. Сравнение методов УЗИ и ABUS по показателю \"Микрокальцинаты\" в группе B.")
escribir ("![](images5/Jun/isMicroCalc.png)")
escribir ("Рисунок №5.7. Сравнение методов УЗИ и ABUS по показателю \"Микрокальцинаты\" в группе B.")
CompPlot_calcinates <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$isMicroCalc,dfXlsxMetCompJun$methodsVizualisation,"Микрокальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/isMicroCalc.png", 
       plot = CompPlot_calcinates, units = "in", width = 14, height = 8)


escribir ("* Поставленный диагноз *")
chapter_3_4_text("Поставленный диагноз",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$diagnosis,
                 dfXlsxMetCompJunAbus$diagnosis,
                 dfXlsxMetCompJun$diagnosis,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.8, Рисунок 5.8).")
escribir ("Таблица №5.8. 
          Сравнение методов УЗИ и ABUS по показателю \"Поставленный диагноз\" в группе B.")
escribir ("![](images5/Jun/diagnosis.png)")
escribir ("Рисунок №5.8. Сравнение методов УЗИ и ABUS по показателю \"Поставленный диагноз\" в группе B.")
CompPlot_diagnosis <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$diagnosis,dfXlsxMetCompJun$methodsVizualisation,"Поставленный диагноз")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/diagnosis.png", 
       plot = CompPlot_diagnosis, units = "in", width = 14, height = 8)

escribir ("* Категория BIRADS *")
chapter_3_4_text("Категория BIRADS",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunUs$categoryBirads,
                 dfXlsxMetCompJunAbus$categoryBirads,
                 dfXlsxMetCompJun$categoryBirads,
                 dfXlsxMetCompJun$methodsVizualisation)
escribir ("(Таблица 5.9, Рисунок 5.9).")
escribir ("Таблица №5.9. 
          Сравнение методов УЗИ и ABUS по показателю \"Категория BIRADS\" в группе B.")
escribir ("![](images5/Jun/categoryBirads.png)")
escribir ("Таблица №5.9. Сравнение методов УЗИ и ABUS по показателю \"Категория BIRADS\" в группе B.")
CompPlot_categoryBirads <- GeomBar(dfXlsxMetCompJun,dfXlsxMetCompJun$categoryBirads,dfXlsxMetCompJun$methodsVizualisation,"Категория BIRADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Jun/categoryBirads.png", 
       plot = CompPlot_categoryBirads, units = "in", width = 14, height = 8)







##### 5.2 Сompaire D #######
escribir ("## 5.2 Сравнение методов УЗИ и ABUS внутри группе D")

escribir ("* Края образования *")
chapter_3_4_text("Края образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$nodleContour,
                 dfXlsxMetCompSnrAbus$nodleContour,
                 dfXlsxMetCompSnr$nodleContour,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.10, Рисунок 5.10).")
escribir ("Таблица №5.10. 
          Сравнение методов УЗИ и ABUS по показателю \"края образования\" в группе D.")
escribir ("![](images5/Snr/nodleContour.png)")
escribir ("Рисунок №5.10. Сравнение методов УЗИ и ABUS по показателю \"края образования\" в группе D.")
CompPlot_nodleContour <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$nodleContour,dfXlsxMetCompSnr$methodsVizualisation,"Края образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/nodleContour.png", 
       plot = CompPlot_nodleContour, units = "in", width = 14, height = 8)

escribir ("* Размер образования *")
chapter_3_4_text("Размер образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$nodleSize,
                 dfXlsxMetCompSnrAbus$nodleSize,
                 dfXlsxMetCompSnr$nodleSize,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.11, Рисунок 5.1).")
escribir ("Таблица №5.11. 
          Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе D.")
escribir ("![](images5/Snr/nodleSize.png)")
escribir ("Рисунок №5.11. Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе D.")
CompPlot_nodleSize <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$nodleSize,dfXlsxMetCompSnr$methodsVizualisation,"Размер образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/nodleSize.png", 
       plot = CompPlot_nodleSize, units = "in", width = 14, height = 8)

escribir ("* Эхогенность образования *")
chapter_3_4_text("Эхогенность образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$echogenicityFormation,
                 dfXlsxMetCompSnrAbus$echogenicityFormation,
                 dfXlsxMetCompSnr$echogenicityFormation,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.12, Рисунок 5.12).")
escribir ("Таблица №5.12. 
          Сравнение методов УЗИ и ABUS по показателю \"Эхогенность образования\" в группе D.")
escribir ("![](images5/Snr/echogenicityFormation.png)")
escribir ("Рисунок №5.12. Сравнение методов УЗИ и ABUS по показателю \"Эхогенность образования\" в группе D.")
CompPlot_echogenicityFormation <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$echogenicityFormation,dfXlsxMetCompSnr$methodsVizualisation,"Эхогенность образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/echogenicityFormation.png", 
       plot = CompPlot_echogenicityFormation, units = "in", width = 14, height = 8)

escribir ("* Структура образования *")
chapter_3_4_text("Структура образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$structure,
                 dfXlsxMetCompSnrAbus$structure,
                 dfXlsxMetCompSnr$structure,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.13, Рисунок 5.13).")
escribir ("Таблица №5.13. 
          Сравнение методов УЗИ и ABUS по показателю \"Структура образования\" в группе D.")
escribir ("![](images5/Snr/structure.png)")
escribir ("Рисунок №5.13. Сравнение методов УЗИ и ABUS по показателю \"Структура образования\" в группе D.")
CompPlot_structure <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$structure,dfXlsxMetCompSnr$methodsVizualisation,"Структура образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/structure.png", 
       plot = CompPlot_structure, units = "in", width = 14, height = 8)

escribir ("* Количество узлов *")
chapter_3_4_text("Количество узлов",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$numberNodles,
                 dfXlsxMetCompSnrAbus$numberNodles,
                 dfXlsxMetCompSnr$numberNodles,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.14, Рисунок 5.14).")
escribir ("Таблица №5.14. 
          Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе D.")
escribir ("![](images5/Snr/numberNodles.png)")
escribir ("Таблица №5.5. Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе D.")
CompPlot_numberNodles <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$numberNodles,dfXlsxMetCompSnr$methodsVizualisation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/numberNodles.png", 
       plot = CompPlot_numberNodles, units = "in", width = 14, height = 8)


# location
escribir ("ТУТ БУДЕТ БЛОК ПРО ЛОКАЛИЗАЦИЮ!")

escribir ("* Микрокальцинаты *")
chapter_3_4_text("Микрокальцинаты",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$isMicroCalc,
                 dfXlsxMetCompSnrAbus$isMicroCalc,
                 dfXlsxMetCompSnr$isMicroCalc,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.16, Рисунок 5.16).")
escribir ("Таблица №5.16. Сравнение методов УЗИ и ABUS по показателю \"Микрокальцинаты\" в группе D.")
escribir ("![](images5/Snr/isMicroCalc.png)")
escribir ("Рисунок №5.16. Сравнение методов УЗИ и ABUS по показателю \"Микрокальцинаты\" в группе D.")
CompPlot_calcinates <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$isMicroCalc,dfXlsxMetCompSnr$methodsVizualisation,"Микрокальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/isMicroCalc.png", 
       plot = CompPlot_calcinates, units = "in", width = 14, height = 8)


escribir ("* Поставленный диагноз *")
chapter_3_4_text("Поставленный диагноз",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$diagnosis,
                 dfXlsxMetCompSnrAbus$diagnosis,
                 dfXlsxMetCompSnr$diagnosis,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.17, Рисунок 5.17).")
escribir ("Таблица №5.17. 
          Сравнение методов УЗИ и ABUS по показателю \"Поставленный диагноз\" в группе D.")
escribir ("![](images5/Snr/diagnosis.png)")
escribir ("Рисунок №5.17. Сравнение методов УЗИ и ABUS по показателю \"Поставленный диагноз\" в группе D.")
CompPlot_diagnosis <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$diagnosis,dfXlsxMetCompSnr$methodsVizualisation,"Поставленный диагноз")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/diagnosis.png", 
       plot = CompPlot_diagnosis, units = "in", width = 14, height = 8)

escribir ("* Категория BIRADS *")
chapter_3_4_text("Категория BIRADS",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$categoryBirads,
                 dfXlsxMetCompSnrAbus$categoryBirads,
                 dfXlsxMetCompSnr$categoryBirads,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.18, Рисунок 5.18).")
escribir ("Таблица №5.18. 
          Сравнение методов УЗИ и ABUS по показателю \"Категория BIRADS\" в группе D.")
escribir ("![](images5/Snr/categoryBirads.png)")
escribir ("Таблица №5.18. Сравнение методов УЗИ и ABUS по показателю \"Категория BIRADS\" в группе D.")
CompPlot_categoryBirads <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$categoryBirads,dfXlsxMetCompSnr$methodsVizualisation,"Категория BIRADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter5/images5/Snr/categoryBirads.png", 
       plot = CompPlot_categoryBirads, units = "in", width = 14, height = 8)



##### 5.3 Sensitivity, Specificity, Accuracy #######
escribir ("## 5.3 Определение чувствительности, спецефичности и точности методов для обнаружения кальцинатов в в группе D с построением прогностической модели")


SSA_textClac(dfXlsxGr2$us_is_calc,dfXlsxGr2$mmg_is_calc, "УЗИ в группе C")
SSA_textClac(dfXlsxGr4$us_is_calc,dfXlsxGr4$mmg_is_calc, "УЗИ в группе D")
SSA_textClac(dfXlsxGr4$abus_is_calc,dfXlsxGr4$mmg_is_calc, "ABUS в группе D")
SSA_textClac(dfXlsxSnr$us_is_calc,dfXlsxSnr$mmg_is_calc, "УЗИ в выборке пациенток 40 лет и старше")

escribir ("(Таблица №5.19)")
escribir ("Таблица №5.19.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности в группах А и B.
(Т -Точность, P - P-Value, КК - Коэффициент Kappa, ТМ -Тест Макнемара, Ч-Чувствительность, Сп -Специфичность, ОТ- Отбалансированная точность)")


escribir ("На основании полученных данных, пыла построена предсказательная модель нахождения кальцинатов для изучаемых методов.")


pROC_obj_usGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$us_probabilityCalc,
                          smoothed = TRUE,
                          ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                          plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                          print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения кальцинатов для метода УЗИ, по данным полученным в группе D представлена на рисунке № 5.19. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)
))

# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_usGr2.png", 
#        plot = pROC_obj_usGr2, units = "in", width = 14, height = 8)

escribir ("![](images5/Snr/pROC_obj_usGr4.png))")
escribir ("Рисунок №5.19. ROC-кривая предсказательной модели нахождения кальцинатов для метода УЗИ, по данным полученным в группе D.")





pROC_obj_abusGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$abus_probabilityCalc,
                          smoothed = TRUE,
                          ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                          plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                          print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения кальцинатов для метода УЗИ, по данным полученным в группе D представлена на рисунке № 5.19. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)
))

# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter4/images4/pROC_obj_usGr2.png", 
#        plot = pROC_obj_usGr2, units = "in", width = 14, height = 8)

escribir ("![](images5/Snr/pROC_obj_abusGr4Calc.png)")
escribir ("Рисунок №5.19. ROC-кривая предсказательной модели нахождения кальцинатов для метода УЗИ, по данным полученным в группе D.")

escribir ("(Таблица №5.20)")
escribir (paste("Таблица №5.20.
Определение площади под кривой представленных предсказательных моделей метода в группе D.

| Метод                             | Площадь под кривой    |
|-----------------------------------|-----------------------|
| УЗИ в группе D                  |",round(pROC_obj_usGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)," |
| ABUS в группе D                  |",round(pROC_obj_abusGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)," |"))



##### 5.4 Clinical case #######
escribir ("## 5.4 Клинические примеры")

##### 5.5 Conclusion #######
escribir ("## 5.5 Заключение")