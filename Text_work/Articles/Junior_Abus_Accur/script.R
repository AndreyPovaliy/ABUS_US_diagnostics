source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
library(ggplot2)
library(ggpie)
library(caret)



# Matherials --------------------------------------------------------------


How_many(dfXlsxJun$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxJun$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxJun$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxJun$age_patient), "лет"))

Describe_numeric (dfXlsxJun$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxJun$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

How_many(dfXlsxGr1$name_patient,"В группу A вошло")
How_many(dfXlsxGr3$name_patient,"В группу B")


article_text("Первичный диагноз ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$diagnosis_primary,
                 dfXlsxGr3$diagnosis_primary,
                 dfXlsxJun$diagnosis_primary,
                 dfXlsxJun$group_separation)

article_text("Жалобы ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$complaints,
                 dfXlsxGr3$complaints,
                 dfXlsxJun$complaints,
                 dfXlsxJun$group_separation)

article_text("Репродуктивный статус ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$satus_reproductive,
                 dfXlsxGr3$satus_reproductive,
                 dfXlsxJun$satus_reproductive,
                 dfXlsxJun$group_separation)

article_text("Операции на молочной железе ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$breast_surgery_before,
                 dfXlsxGr3$breast_surgery_before,
                 dfXlsxJun$breast_surgery_before,
                 dfXlsxJun$group_separation)

article_text("Прием гормональных препаратов ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$hormonal_medications,
                 dfXlsxGr3$hormonal_medications,
                 dfXlsxJun$hormonal_medications,
                 dfXlsxJun$group_separation)

article_text("Наследственная предрасположенность ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$genetics,
                 dfXlsxGr3$genetics,
                 dfXlsxJun$genetics,
                 dfXlsxJun$group_separation)

dfXlsxGr1_brca <- dfXlsxGr1[dfXlsxGr1$mutation_brca != "Оценка не проводилась",]
dfXlsxGr3_brca <- dfXlsxGr3[dfXlsxGr3$mutation_brca != "Оценка не проводилась",]
dfXlsxJun_brca <- dfXlsxGr3[dfXlsxJun$mutation_brca != "Оценка не проводилась",]

article_text("Мутация BRCA ",
                 "В группе A ",
                 "В группе B ",
             dfXlsxGr1_brca$mutation_brca,
             dfXlsxGr3_brca$mutation_brca,
             dfXlsxJun_brca$mutation_brca,
             dfXlsxJun_brca$group_separation)


article_text("Сторона ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$side,
                 dfXlsxGr3$side,
                 dfXlsxJun$side,
                 dfXlsxJun$group_separation)




article_text("Кожные симптомы ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$skin_symptoms,
                 dfXlsxGr3$skin_symptoms,
                 dfXlsxJun$skin_symptoms,
                 dfXlsxJun$group_separation)



article_text("Симптом втягивания соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_retraction,
                 dfXlsxGr3$nipple_retraction,
                 dfXlsxJun$nipple_retraction,
                 dfXlsxJun$group_separation)


article_text("Симптом выделения из соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_release,
                 dfXlsxGr3$nipple_release,
                 dfXlsxJun$nipple_release,
                 dfXlsxJun$group_separation)


article_text("Тип структуры ACR ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$type_structure_acr,
                 dfXlsxGr3$type_structure_acr,
                 dfXlsxJun$type_structure_acr,
                 dfXlsxJun$group_separation)


article_text("Квадрант ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$quadrant,
                 dfXlsxGr3$quadrant,
                 dfXlsxJun$quadrant,
                 dfXlsxJun$group_separation)
dfXlsxJun_SubsetQuadrant <- subset(dfXlsxJun,dfXlsxJun$quadrant !="нет")


# results -----------------------------------------------------------------


escribir ("## Результаты исследования")
article_text("по результатам выполнения УЗИ был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr1$us_is_tumor,
             dfXlsxGr3$us_is_tumor,
             dfXlsxJun$us_is_tumor,
             dfXlsxJun$group_separation)

article_text("по результатам выполнения ABUS был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr1$abus_is_tumor,
             dfXlsxGr3$abus_is_tumor,
             dfXlsxJun$abus_is_tumor,
             dfXlsxJun$group_separation)
article_text("по результатам выполнения УЗИ ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr1$us_category_birads,
             dfXlsxGr3$us_category_birads,
             dfXlsxJun$us_category_birads,
             dfXlsxJun$group_separation)
escribir ("![](img/us_category_birads.png)")
JunPlot_us_category_birads<-GeomBar(dfXlsxJun,dfXlsxJun$us_category_birads,dfXlsxJun$group_separation,"Категория BI-RADS")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/img/us_category_birads.png", 
       plot = JunPlot_us_category_birads, units = "in", width = 14, height = 8)

article_text("по результатам выполнения гистологическкого исследования был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr1$hist_is_tumor,
             dfXlsxGr3$hist_is_tumor,
             dfXlsxJun$hist_is_tumor,
             dfXlsxJun$group_separation)

dfXlsxJunHist <- subset(dfXlsxJun, dfXlsxJun$hist_is_tumor =="Да")
dfXlsxGr1Hist <- subset(dfXlsxGr1, dfXlsxGr1$hist_is_tumor =="Да")
dfXlsxGr3Hist <- subset(dfXlsxGr3, dfXlsxGr3$hist_is_tumor =="Да")
article_text("по результатам выполнения гистологическкого исследования был поставлен дигноз злокачественного образования ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr1Hist$tumor_morphology_structure,
             dfXlsxGr3Hist$tumor_morphology_structure,
             dfXlsxJunHist$tumor_morphology_structure,
             dfXlsxJunHist$group_separation)

# dfXlsxGr1Hist <- subset(dfXlsxGr1, dfXlsxGr1$hist_is_tumor =="Да")
# Gr1Plot_tumor_morphology_structure<-GeomBarNoLegendDiag(dfXlsxGr1Hist,dfXlsxGr1Hist$tumor_morphology_structure,dfXlsxGr1Hist$tumor_morphology_structure,"Морфологическая структура")
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/img/Gr1Plot_tumor_morphology_structure.png", 
#        plot = Gr1Plot_tumor_morphology_structure, units = "in", width = 14, height = 8)
# 
# dfXlsxGr3Hist <- subset(dfXlsxGr3, dfXlsxGr3$hist_is_tumor =="Да")
# Gr3Plot_tumor_morphology_structure<-GeomBarNoLegendDiag(dfXlsxGr3Hist,dfXlsxGr3Hist$tumor_morphology_structure,dfXlsxGr3Hist$tumor_morphology_structure,"Морфологическая структура")
# ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/img/Gr3Plot_tumor_morphology_structure.png", 
#        plot = Gr3Plot_tumor_morphology_structure, units = "in", width = 14, height = 8)

escribir ("* Определение чувствительности, спецефичности и точности методов *")

SSA_text(dfXlsxGr1$us_is_tumor,dfXlsxGr1$hist_is_tumor, "УЗИ в группе А")

# SSA_text(dfXlsxGr1$mmg_is_tumor,dfXlsxGr1$hist_is_tumor, "ММГ в группе А")

SSA_text(dfXlsxGr3$us_is_tumor,dfXlsxGr3$hist_is_tumor, "УЗИ в группе B")
# SSA_text(dfXlsxGr3$mmg_is_tumor,dfXlsxGr1$hist_is_tumor, "ММГ в группе B")
SSA_text(dfXlsxGr3$abus_is_tumor,dfXlsxGr3$hist_is_tumor, "ABUS в группе B")

SSA_text(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor, "УЗИ в выборке пациенток до 40 лет")
# SSA_text(dfXlsxJun$mmg_is_tumor,dfXlsxJun$hist_is_tumor, "ММГ в выборке пациенток до 40 лет")
# SSA_text(dfXlsxJun$abus_is_tumor,dfXlsxJun$hist_is_tumor, "ABUS в выборке пациенток до 40 лет")

escribir ("(Таблица №2)")
escribir ("Таблица №2.
Определение точности, P-уровня значимости модели, коэфициент Kappa, Тест Макнемара, чувствительности, специфичности и отбалансированной точности в группах А и B.")


library(pROC)
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
escribir ("* Прогностическая оценка методов *")
escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
)


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A представлена на рисунке № 2а. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr1[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr1[["ci"]][1],3) ,"-",round(pROC_obj_usGr1[["ci"]][3],3)
))
pROC_obj_usGr1 <- roc(dfXlsxGr1$hist_is_tumor,dfXlsxGr1$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usGr1.png)")
escribir ("Рисунок №2а. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе A.")



escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B представлена на рисунке № 2б. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usGr3[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr3[["ci"]][1],3) ,"-",round(pROC_obj_usGr3[["ci"]][3],3)
))

pROC_obj_usGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usGr3.png)")
escribir ("Рисунок №2б. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в группе B.")






escribir (paste("ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B представлена на рисунке № 2в. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_abusGr3[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr3[["ci"]][1],3) ,"-",round(pROC_obj_abusGr3[["ci"]][3],3)
))

pROC_obj_abusGr3 <- roc(dfXlsxGr3$hist_is_tumor,dfXlsxGr3$abus_probabilityNeoCa,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_abusGr3.png)")
escribir ("Рисунок №2в. ROC-кривая предсказательной модели для метода ABUS, по данным полученным в группе B.")


escribir (paste("ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № 2г. 
          Площадь под кривой (AUC- area under cruve) составила: ", round(pROC_obj_usJun[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usJun[["ci"]][1],3) ,"-",round(pROC_obj_usJun[["ci"]][3],3)
))

pROC_obj_usJun <- roc(dfXlsxJun$hist_is_tumor,dfXlsxJun$us_probabilityNeoCa,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)
escribir ("![](img/pROC_obj_usJun.png)")
escribir ("Рисунок №2г. ROC-кривая предсказательной модели для метода УЗИ, по данным полученным в выборке пациенток до 40 лет.")




escribir (paste("Таблица №3.
Определение площади под кривой представленных предсказательных моделей метода в группах А и B.
| Метод                             | Площадь под кривой    |
  |-----------------------------------|-----------------------|
  | УЗИ в группе A                   |",round(pROC_obj_usGr1[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr1[["ci"]][1],3) ,"-",round(pROC_obj_usGr1[["ci"]][3],3)," |
  | УЗИ в группе B                  |",round(pROC_obj_usGr3[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usGr3[["ci"]][1],3) ,"-",round(pROC_obj_usGr3[["ci"]][3],3)," |
  | УЗИ в выборке пациенток до 40 лет |",round(pROC_obj_usJun[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_usJun[["ci"]][1],3) ,"-",round(pROC_obj_usJun[["ci"]][3],3)," |
| ABUS в группе B                  |",round(pROC_obj_abusGr3[["auc"]][1],3)," 95% ДИ: ",round(pROC_obj_abusGr3[["ci"]][1],3) ,"-",round(pROC_obj_abusGr3[["ci"]][3],3)," |"))


