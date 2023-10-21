#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования УЗИ в выборке до 40 лет")


chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_calcinates_micro_pure,
                 dfXlsxGr3$us_calcinates_micro_pure,
                 dfXlsxJun$us_calcinates_micro_pure,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$us_calcinates_micro_pure !="нет")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$us_calcinates_micro_pure,dfXlsxJun_variable$group_separation,"Кальцинаты")



df_calcinates_micro_pureJun_variable <- subset(df_calcinates_micro_pureJun,df_calcinates_micro_pureJun$calcinates_micro_pure !="нет")
GeomBar(df_calcinates_micro_pureJun_variable,df_calcinates_micro_pureJun_variable$calcinates_micro_pure,df_calcinates_micro_pureJun_variable$type_exam,"Кальцинаты")

#нет длостаточно найденных данных, чтобы провести сравнения в подгруппах с найденными кальцинатами
# chapter_3_4_text("Злокачественное образование в подгруппе кальцинатов",
#                  "В группе A ",
#                  "В группе B ",
#                  dfXlsxCalcGr1$hist_is_tumor ,
#                  dfXlsxCalcGr3$hist_is_tumor ,
#                  dfXlsxCalcJun$hist_is_tumor ,
#                  dfXlsxCalcJun$group_separation)
# GeomBar(dfXlsxCalcJun,dfXlsxCalcJun$hist_is_tumor ,dfXlsxCalcJun$group_separation,"УЗ диагноз злокачественное образование в подгруппе кальцинатов")





escribir ("Нет длостаточно найденных данных, чтобы провести сравнения в подгруппах с найденными кальцинатами в выборке пациенток до 40 лет ")




escribir ("##5.2 Возможности нахождения микрокальцинатов при исследования ABUS в выборке до 40 лет ")

chapter_3_4_text("Кальцинаты",
                 "В группе С ",
                 "В группе В ",
                 dfXlsxGr2$abus_calcinates,
                 dfXlsxGr4$abus_calcinates,
                 dfXlsxSnr$abus_calcinates,
                 dfXlsxSnr$group_separation)
df_calcinates_micro_pureSnr_variable <- subset(dfXlsx,dfXlsx$abus_calcinates !="не проводилось")
GeomBar(df_calcinates_micro_pureSnr_variable,df_calcinates_micro_pureSnr_variable$abus_calcinates,df_calcinates_micro_pureSnr_variable$group_separation,"Кальцинаты")


df_calcinates_micro_pureSnr_variable <- subset(df_calcinates_micro_pureSnr,df_calcinates_micro_pureSnr$calcinates_micro_pure !="нет")
GeomBar(df_calcinates_micro_pureSnr_variable,df_calcinates_micro_pureSnr_variable$calcinates_micro_pure,df_calcinates_micro_pureSnr_variable$type_exam,"Кальцинаты")

chapter_3_4_text("УЗ диагноз злокачественное образование в подгруппе кальцинатов",
                 "В группе С ",
                 "В группе D ",
                 dfXlsxCalcGr2$hist_is_tumor ,
                 dfXlsxCalcGr4$hist_is_tumor ,
                 dfXlsxCalcSnr$hist_is_tumor ,
                 dfXlsxCalcSnr$group_separation)
GeomBar(dfXlsxCalcSnr,dfXlsxCalcSnr$hist_is_tumor ,dfXlsxCalcSnr$group_separation,"УЗ диагноз злокачественное образование в подгруппе кальцинатов")



#####Sensitivity, Specificity, Accuracy#######
#predicted_value, expected_value
#source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
library(caret)
escribir ("##5.3 Определение чувствительности, спецефичности и точности методов в выборке пациенток 40 лет и старше")

SSA_text(dfXlsxGr2$us_is_calc,dfXlsxGr2$mmg_is_calc, "УЗИ в группе С")

SSA_text(dfXlsxGr4$us_is_calc,dfXlsxGr4$mmg_is_calc, "УЗИ в группе D")
SSA_text(dfXlsxGr4$abus_is_tumor,dfXlsxGr4$mmg_is_calc, "ABUS в группе D")

SSA_text(dfXlsxSnr$us_is_calc,dfXlsxSnr$mmg_is_calc, "УЗИ в выборке пациенток 40 лет и старше")
SSA_text(dfXlsxSnr$abus_is_tumor,dfXlsxSnr$mmg_is_calc, "ABUS в выборке пациенток 40 лет и старше")



#####ROC curve#######
library(pROC)
#source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

escribir ("На основании полученных данных, пыла построена предсказательная модель изучаемых методов."
)
escribir ("ROC-кривая предсказательной модели для метода УЗИ для нахождения кальцинатов, по данным полученным в группе A представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr2Calc <- roc(dfXlsxGr2$hist_is_tumor,dfXlsxGr2$us_probabilityCalc,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ для нахождения кальцинатов, по данным полученным в группе B представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$us_probabilityCalc,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS для нахождения кальцинатов, по данным полученным в группе B представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusGr4Calc <- roc(dfXlsxGr4$mmg_is_calc,dfXlsxGr4$abus_probabilityCalc,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода УЗИ для нахождения кальцинатов, по данным полученным в выборке пациенток до 40 лет представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_usSnrCalc <- roc(dfXlsxSnr$mmg_is_calc,dfXlsxSnr$us_probabilityCalc,
                      smoothed = TRUE,
                      ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                      plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                      print.auc=TRUE, show.thres=TRUE)

escribir ("ROC-кривая предсказательной модели для метода ABUS для нахождения кальцинатов, по данным полученным в выборке пациенток 40 лет b cnfhit представлена на рисунке № х.х. 
          Площадь под кривой (AUC- area under cruve) составила: "
)
pROC_obj_abusSnrCalc <- roc(dfXlsxSnr$mmg_is_calc,dfXlsxSnr$abus_probabilityCalc,
                        smoothed = TRUE,
                        ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                        plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                        print.auc=TRUE, show.thres=TRUE)
