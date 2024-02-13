escribir ("*Кальцинаты*")
chapter_5_text("Кальцинаты",
                 "По результатам 2d УЗИ ",
                 "По результатам 3d УЗИ ",
                 "По результатам ММГ ",
                 dfXlsxMetCompSnrUs$isCalc,
                 dfXlsxMetCompSnrAbus$isCalc,
                 dfXlsxMetCompSnrMmg$isCalc,
                 dfXlsxMetCompSnr$isCalc,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 2, Рисунок 2).")
escribir ("Таблица №2. Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Кальцинаты\".")
escribir ("![](img/isCalc.png)")
escribir ("Рисунок №2. Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Кальцинаты\".")
CompPlot_calcinates <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$isCalc,dfXlsxMetCompSnr$methodsVizualisation,"Кальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/img/isCalc.png", 
       plot = CompPlot_calcinates, units = "in", width = 14, height = 8)



escribir ("* Микрокальцинаты *")
chapter_5_text("Микрокальцинаты",
                 "По результатам 2d УЗИ ",
                 "По результатам 3d УЗИ ",
                 "По результатам ММГ ",
                 dfXlsxMetCompSnrUs$isMicroCalc,
                 dfXlsxMetCompSnrAbus$isMicroCalc,
                 dfXlsxMetCompSnrMmg$isMicroCalc,
                 dfXlsxMetCompSnr$isMicroCalc,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 2, Рисунок 2).")
escribir ("Таблица №2. Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Микрокальцинаты\".")
escribir ("![](img/isMicroCalc.png)")
escribir ("Рисунок №2. Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Микрокальцинаты\".")
CompPlot_calcinates <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$isMicroCalc,dfXlsxMetCompSnr$methodsVizualisation,"Кальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/img/isMicroCalc.png", 
       plot = CompPlot_calcinates, units = "in", width = 14, height = 8)



escribir ("* Категория BI-RADS *")
chapter_5_text("Категория BI-RADS",
                 "По результатам 2d УЗИ ",
                 "По результатам 3d УЗИ ",
               "По результатам ММГ ",
                 dfXlsxMetCompSnrUs$categoryBirads,
                 dfXlsxMetCompSnrAbus$categoryBirads,
               dfXlsxMetCompSnrMmg$categoryBirads,
                 dfXlsxMetCompSnr$categoryBirads,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 2, Рисунок 2).")
escribir ("Таблица №2. 
          Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Категория BI-RADS\" ")
escribir ("![](img/categoryBirads.png)")
escribir ("Таблица №2. Сравнение методов 2d УЗИ, 3d УЗИ и ММГ по показателю \"Категория BIRADS\" ")
CompPlot_categoryBirads <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$categoryBirads,dfXlsxMetCompSnr$methodsVizualisation,"Категория BIRADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/img/categoryBirads.png", 
       plot = CompPlot_categoryBirads, units = "in", width = 14, height = 8)






# SSA_pred ----------------------------------------------------------------

escribir("Кальцинаты")
SSA_textClac(dfXlsxGr4$us_is_calc,dfXlsxGr4$mmg_is_calc, "2d УЗИ")
SSA_textClac(dfXlsxGr4$abus_is_calc,dfXlsxGr4$mmg_is_calc, "3d УЗИ")

escribir("Микрокальцинаты")
SSA_textClac(dfXlsxGr4$us_is_microCalc,dfXlsxGr4$mmg_is_microCalc, "2d УЗИ")
SSA_textClac(dfXlsxGr4$abus_is_microCalc,dfXlsxGr4$mmg_is_microCalc, "3d УЗИ")



## MicroCalc ----------------------------------------------------------------
escribir ("На основании полученных данных, пыла построена предсказательная модель нахождения микрокальцинатов для изучаемых методов.")

escribir ("(Таблица №3)")
escribir ("Таблица №3.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности.
(Т -Точность, P - P-Value, КК - Коэффициент Kappa, ТМ -Тест Макнемара, Ч-Чувствительность, Сп -Специфичность,ППЦ - положительная прогностическая ценность, ОПЦ - отрицательная прогностическая ценность, ОТ- Отбалансированная точность)")



pROC_obj_usGr4MicroCalc <- roc(dfXlsxGr4$mmg_is_microCalc,dfXlsxGr4$us_probabilityMicroCalc,
                          smoothed = TRUE,
                          ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                          plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                          print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения кальцинатов для метода 2d УЗИ, по данным полученным в группе D представлена на рисунке № 5.19. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)
))


escribir ("![](images5/Snr/pROC_obj_usGr4MicroCalc.png)")
escribir ("Рисунок №5.19. ROC-кривая предсказательной модели нахождения микрокальцинатов для метода 2d УЗИ.")


pROC_obj_abusGr4MicroCalc <- roc(dfXlsxGr4$mmg_is_microCalc,dfXlsxGr4$abus_probabilityMicroCalc,
                            smoothed = TRUE,
                            ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                            plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                            print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения микрокальцинатов для метода 3d УЗИ, по данным полученным в группе D представлена на рисунке № 5.19. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)
))

escribir ("![](images5/Snr/pROC_obj_abusGr4MicroCalc.png)")
escribir ("Рисунок №3. ROC-кривая предсказательной модели нахождения микрокальцинатов для метода 3d УЗИ.")

## Calc ----------------------------------------------------------------
escribir ("На основании полученных данных, пыла построена предсказательная модель нахождения кальцинатов для изучаемых методов.")

escribir ("(Таблица №3)")
escribir ("Таблица №3.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности.
(Т -Точность, P - P-Value, КК - Коэффициент Kappa, ТМ -Тест Макнемара, Ч-Чувствительность, Сп -Специфичность,ППЦ - положительная прогностическая ценность, ОПЦ - отрицательная прогностическая ценность, ОТ- Отбалансированная точность)")



pROC_obj_usGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$us_probabilityCalc,
                               smoothed = TRUE,
                               ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                               plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                               print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения кальцинатов для метода 2d УЗИ, по данным полученным в группе D представлена на рисунке № 3. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)
))


escribir ("![](images5/Snr/pROC_obj_usGr4Calc.png))")
escribir ("Рисунок №5.19. ROC-кривая предсказательной модели нахождения кальцинатов для метода 2d УЗИ.")


pROC_obj_abusGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$abus_probabilityCalc,
                                 smoothed = TRUE,
                                 ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                                 plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                                 print.auc=TRUE, show.thres=TRUE)

escribir (paste("ROC-кривая предсказательной модели нахождения кальцинатов для метода 3d УЗИ, по данным полученным в группе D представлена на рисунке № 3. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)
))

escribir ("![](images5/Snr/pROC_obj_abusGr4Calc.png)")
escribir ("Рисунок №3. ROC-кривая предсказательной модели нахождения кальцинатов для метода 3d УЗИ.")


escribir ("(Таблица 3)")
escribir (paste("Таблица №3.
Определение площади под кривой представленных предсказательных моделей метода.

| Метод                             | Площадь под кривой    |
|-----------------------------------|-----------------------|
|Микрокальцинаты|-----------------------|
| 2d УЗИ                |",round(pROC_obj_usGr4MicroCalc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4MicroCalc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)," |
| 3d УЗИ                  |",round(pROC_obj_abusGr4MicroCalc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4MicroCalc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)," |
|Кальцинаты|-----------------------|
| 2d УЗИ                |",round(pROC_obj_usGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_usGr4Calc[["ci"]][3],3)," |
| 3d УЗИ                  |",round(pROC_obj_abusGr4Calc[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4Calc[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4Calc[["ci"]][3],3)," |"
                
                ))

# Расчет верно найденных --------------------------------------------------
source("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/decomp/calc/true_calc.R")