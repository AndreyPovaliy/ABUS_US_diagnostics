source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
library(ggplot2)
library(ggpie)
library(caret)
library(pROC)


# Matherials --------------------------------------------------------------


How_many(dfXlsxGr4$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxGr4$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxGr4$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr4$age_patient), "лет"))

Describe_numeric (dfXlsxGr4$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxGr4$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

article_text("Репродуктивный статус ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$satus_reproductive,
             dfXlsxGr4$satus_reproductive,
             dfXlsxSnr$satus_reproductive,
             dfXlsxSnr$group_separation)

article_text("Операции на молочной железе ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$breast_surgery_before,
             dfXlsxGr4$breast_surgery_before,
             dfXlsxSnr$breast_surgery_before,
             dfXlsxSnr$group_separation)

article_text("Прием гормональных препаратов ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$hormonal_medications,
             dfXlsxGr4$hormonal_medications,
             dfXlsxSnr$hormonal_medications,
             dfXlsxSnr$group_separation)

article_text("Наследственная предрасположенность ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$genetics,
             dfXlsxGr4$genetics,
             dfXlsxSnr$genetics,
             dfXlsxSnr$group_separation)


escribir ("* Кальцинаты *")
chapter_3_4_text("Кальцинаты",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrUs$calcinates,
                 dfXlsxMetCompSnrAbus$calcinates,
                 dfXlsxMetCompSnr$calcinates,
                 dfXlsxMetCompSnr$methodsVizualisation)
escribir ("(Таблица 5.16, Рисунок 5.16).")
escribir ("Таблица №5.16. Сравнение методов УЗИ и ABUS по показателю \"Кальцинаты\" в группе D.")
escribir ("![](img/calcinates.png)")
escribir ("Рисунок №5.16. Сравнение методов УЗИ и ABUS по показателю \"Кальцинаты\" в группе D.")
CompPlot_calcinates <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$calcinates,dfXlsxMetCompSnr$methodsVizualisation,"Кальцинаты")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/img/calcinates.png", 
       plot = CompPlot_calcinates, units = "in", width = 14, height = 8)



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
escribir ("![](img/categoryBirads.png)")
escribir ("Таблица №5.18. Сравнение методов УЗИ и ABUS по показателю \"Категория BIRADS\" в группе D.")
CompPlot_categoryBirads <- GeomBar(dfXlsxMetCompSnr,dfXlsxMetCompSnr$categoryBirads,dfXlsxMetCompSnr$methodsVizualisation,"Категория BIRADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Calc_abus_accur/img/categoryBirads.png", 
       plot = CompPlot_categoryBirads, units = "in", width = 14, height = 8)

# results -----------------------------------------------------------------



SSA_textClac(dfXlsxGr4$us_is_calc,dfXlsxGr4$mmg_is_calc, "УЗИ в группе D")
SSA_textClac(dfXlsxGr4$abus_is_calc,dfXlsxGr4$mmg_is_calc, "ABUS в группе D")


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

