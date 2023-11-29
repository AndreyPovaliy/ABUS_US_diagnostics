source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
library(ggplot2)
library(ggpie)
library(caret)
library(pROC)


# Matherials --------------------------------------------------------------


How_many(dfXlsxSnr$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxSnr$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxSnr$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxSnr$age_patient), "лет"))

Describe_numeric (dfXlsxSnr$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxSnr$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

How_many(dfXlsxGr2$name_patient,"В группу A вошло")
How_many(dfXlsxGr4$name_patient,"В группу B")


article_text("Первичный диагноз ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$diagnosis_primary,
             dfXlsxGr4$diagnosis_primary,
             dfXlsxSnr$diagnosis_primary,
             dfXlsxSnr$group_separation)

article_text("Жалобы ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$complaints,
             dfXlsxGr4$complaints,
             dfXlsxSnr$complaints,
             dfXlsxSnr$group_separation)

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

dfXlsxGr2_brca <- dfXlsxGr2[dfXlsxGr2$mutation_brca != "Оценка не проводилась",]
dfXlsxGr4_brca <- dfXlsxGr4[dfXlsxGr4$mutation_brca != "Оценка не проводилась",]
dfXlsxSnr_brca <- dfXlsxGr4[dfXlsxSnr$mutation_brca != "Оценка не проводилась",]

article_text("Мутация BRCA ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2_brca$mutation_brca,
             dfXlsxGr4_brca$mutation_brca,
             dfXlsxSnr_brca$mutation_brca,
             dfXlsxSnr_brca$group_separation)


article_text("Сторона ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$side,
             dfXlsxGr4$side,
             dfXlsxSnr$side,
             dfXlsxSnr$group_separation)




article_text("Кожные симптомы ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$skin_symptoms,
             dfXlsxGr4$skin_symptoms,
             dfXlsxSnr$skin_symptoms,
             dfXlsxSnr$group_separation)



article_text("Симптом втягивания соска ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$nipple_retraction,
             dfXlsxGr4$nipple_retraction,
             dfXlsxSnr$nipple_retraction,
             dfXlsxSnr$group_separation)


article_text("Симптом выделения из соска ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$nipple_release,
             dfXlsxGr4$nipple_release,
             dfXlsxSnr$nipple_release,
             dfXlsxSnr$group_separation)


article_text("Тип структуры ACR ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$type_structure_acr,
             dfXlsxGr4$type_structure_acr,
             dfXlsxSnr$type_structure_acr,
             dfXlsxSnr$group_separation)


article_text("Квадрант ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$quadrant,
             dfXlsxGr4$quadrant,
             dfXlsxSnr$quadrant,
             dfXlsxSnr$group_separation)
dfXlsxSnr_SubsetQuadrant <- subset(dfXlsxSnr,dfXlsxSnr$quadrant !="нет")


# results -----------------------------------------------------------------


escribir ("## Результаты исследования")
article_text("по результатам выполнения УЗИ был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$us_is_tumor,
             dfXlsxGr4$us_is_tumor,
             dfXlsxSnr$us_is_tumor,
             dfXlsxSnr$group_separation)
article_text("по результатам выполнения ABUS был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$us_is_tumor,
             dfXlsxGr4$us_is_tumor,
             dfXlsxSnr$us_is_tumor,
             dfXlsxSnr$group_separation)
article_text("по результатам выполнения УЗИ ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$us_category_birads,
             dfXlsxGr4$us_category_birads,
             dfXlsxSnr$us_category_birads,
             dfXlsxSnr$group_separation)
escribir ("![](img/us_category_birads.png)")
SnrPlot_us_category_birads<-GeomBar(dfXlsxSnr,dfXlsxSnr$us_category_birads,dfXlsxSnr$group_separation,"Категория BI-RADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Snr_Abus_Accur/img/us_category_birads.png", 
       plot = SnrPlot_us_category_birads, units = "in", width = 14, height = 8)

article_text("по результатам выполнения гистологическкого исследования был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$us_is_tumor,
             dfXlsxGr4$us_is_tumor,
             dfXlsxSnr$us_is_tumor,
             dfXlsxSnr$group_separation)

escribir ("* Определение чувствительности, спецефичности и точности методов *")

SSA_text(dfXlsxGr2$us_is_tumor,dfXlsxGr2$hist_is_tumor, "УЗИ в группе А")

SSA_text(dfXlsxGr2$mmg_is_tumor,dfXlsxGr2$hist_is_tumor, "ММГ в группе А")

SSA_text(dfXlsxGr4$us_is_tumor,dfXlsxGr4$hist_is_tumor, "УЗИ в группе B")
SSA_text(dfXlsxGr4$mmg_is_tumor,dfXlsxGr4$hist_is_tumor, "ММГ в группе B")
SSA_text(dfXlsxGr4$abus_is_tumor,dfXlsxGr4$hist_is_tumor, "ABUS в группе B")

SSA_text(dfXlsxSnr$us_is_tumor,dfXlsxSnr$hist_is_tumor, "УЗИ в выборке пациенток до 40 лет")
SSA_text(dfXlsxSnr$mmg_is_tumor,dfXlsxSnr$hist_is_tumor, "ММГ в выборке пациенток до 40 лет")
# SSA_text(dfXlsxSnr$abus_is_tumor,dfXlsxSnr$hist_is_tumor, "ABUS в выборке пациенток до 40 лет")

escribir ("(Таблица №2)")
escribir ("Таблица №2.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности в группах А и B.")



#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("* Прогностическая оценка методов *")
escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
)


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A представлена на рисунке № 2а. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr2[["ci"]][1],3) ,"-",round(pROC_obj_usGr2[["ci"]][3],3)
))
pROC_obj_usGr2 <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usGr2.png)")
escribir ("Рисунок №2а. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A.")



escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B представлена на рисунке № 2б. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4[["ci"]][1],3) ,"-",round(pROC_obj_usGr4[["ci"]][3],3)
))

pROC_obj_usGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usGr4.png)")
escribir ("Рисунок №2б. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B.")






escribir (paste("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B представлена на рисунке № 2в. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4[["ci"]][3],3)
))

pROC_obj_abusGr4 <- roc(dfXlsxGr4$hist_is_tumor,dfXlsxGr4$abus_probabilityNeoCa,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_abusGr4.png)")
escribir ("Рисунок №2в. ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B.")


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № 2г. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usSnr[["ci"]][1],3) ,"-",round(pROC_obj_usSnr[["ci"]][3],3)
))

pROC_obj_usSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usSnr.png)")
escribir ("Рисунок №2г. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет.")




escribir (paste("Таблица №3.
Определение площади под кривой представленных предсказательных моделей метода в группах А и B.
| Метод                             | Площадь под кривой    |
  |-----------------------------------|-----------------------|
  | УЗИ в группе A                   |",round(pROC_obj_usGr2[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr2[["ci"]][1],3) ,"-",round(pROC_obj_usGr2[["ci"]][3],3)," |
  | УЗИ в группе B                  |",round(pROC_obj_usGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr4[["ci"]][1],3) ,"-",round(pROC_obj_usGr4[["ci"]][3],3)," |
  | УЗИ в выборке пациенток до 40 лет |",round(pROC_obj_usSnr[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usSnr[["ci"]][1],3) ,"-",round(pROC_obj_usSnr[["ci"]][3],3)," |
| ABUS в группе B                  |",round(pROC_obj_abusGr4[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr4[["ci"]][1],3) ,"-",round(pROC_obj_abusGr4[["ci"]][3],3)," |"))


