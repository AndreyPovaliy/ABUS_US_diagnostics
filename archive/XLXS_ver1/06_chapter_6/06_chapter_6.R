#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


# source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

# library ------------------------------------------------
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)
library(caret)
library(ROCR)
library(pROC)

# subset для текущей главы ------------------------------------------------

dfXlsxDocSnr <- subset(dfXlsx, us_doctor  == "врач с опытом более 10 лет")
dfXlsxDocJun <- subset(dfXlsx, us_doctor  != "врач с опытом более 10 лет")

dfXlsxDocSnr_pSnr <- subset(dfXlsxDocSnr, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxDocSnr_pJun <- subset(dfXlsxDocSnr, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxDocJun_pSnr <- subset(dfXlsxDocJun, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxDocJun_pJun <- subset(dfXlsxDocJun, group_separation == gr_US | group_separation ==gr_US_ABUS)

# ГЛАВА 6. ОПРЕДЕЛНИЕ ИСПОЛЬЗОВАНИЯ ABUS------------------------------------------------
escribir ("# ГЛАВА 6. ОПРЕДЕЛНИЕ ИСПОЛЬЗОВАНИЯ ABUS В СТРУКТУРЕ РАННЕЙ ДИАГНОСТИКИ НОВОБРАЗОВАНИЙ МОЛОЧНОЙ ЖЕЛЕЗЫ")
escribir (" Определение места ABUS в структуре ранней диагности новобразований в молочной железе требовало решения следующих вопросов: 
1) определение временной эффективности для увеличения количества пациентов на единицу времени и 2) поредление ниболее значимых факторов, которые указывают на то, 
что ожидается малая вероятность нахождения образования, требующего пункцию, чтобы переопределить маршуртизацию пациента по скрининг с использование ABUS. Данное требоование продиктовано тем,
          что только УЗИ специалист может выполнить пункцию образования.")

# 6.1 Оценка метододов по временной характеристике ------------------------------------------------
escribir ("## 6.1 Оценка метододов по временной характеристике и зависимость от специалиста ")
escribir (paste(" В настоящем исследовании было принято решение учесть фактор опытности специалиста, выполняющего УЗ исследование. 
          В исследовании участвовали 2 специалиста с опытом более 10 лет и специалист с опытом 3 года на момент настоящего исследования. Более опытный специалист выполнил",
                length(dfXlsxDocSnr$us_doctor)," исследований из них ",length(dfXlsxDocSnr_pSnr$us_doctor)," исследовний в выборке пациенток 40 лет и старше и",
                length(dfXlsxDocSnr_pJun$us_doctor),"исследовний в выборке пациенток до 40 лет. Специалист с опытом 3 года выполнил",
                length(dfXlsxDocJun$us_doctor)," исследований из них ",length(dfXlsxDocJun_pSnr$us_doctor)," исследовний в выборке пациенток 40 лет и старше и",
                length(dfXlsxDocJun_pJun$us_doctor),"исследовний в выборке пациенток до 40 лет."))


Describe_numeric (dfXlsxDocSnr$us_time, "время ","выполнения УЗИ у опытного специалиста составил "," мин")
Describe_numeric (dfXlsxDocJun$us_time, "время ","выполнения УЗИ у специалиста с опытом 3 года составил "," мин")
pvalueParaWxText(dfXlsx,dfXlsx$us_time,dfXlsx$us_doctor,"по времени выполнения")
escribir ("Это свидетельствует о том, что менее опытный специалист может тратить больше времени на исследование (Рисунок 6.1).")
General_us_timePlot <- Violinplot(dfXlsx, dfXlsx$us_time, dfXlsx$us_doctor, "Время (в мин)", "Специалист")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter6/images6/GeneralUsTime.png",
       plot = General_us_timePlot, units = "in", width = 14, height = 8)
escribir ("![](images6/GeneralUsTime.png)")

pvalueParaKrText(dfXlsx,dfXlsx$us_time,dfXlsx$group_separation,"по времени выполнения")
escribir ("Полученный результат говорит о том, что различные группы не влияют на скорость выполнения протокола УЗИ у обоих специалистов (Рисунок 6.2 А,Б).")

Snr_us_timePlot <-Violinplot(dfXlsxDocSnr, dfXlsxDocSnr$us_time, dfXlsxDocSnr$group_separation, "Время", "Группы
А")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter6/images6/SnrUsTime.png", 
       plot = Snr_us_timePlot, units = "in", width = 7, height = 4)
Jun_us_timePlot <- Violinplot(dfXlsxDocJun, dfXlsxDocJun$us_time, dfXlsxDocJun$group_separation, "Время", "Группы
Б")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter6/images6/JunUsTime.png", 
       plot = Jun_us_timePlot, units = "in", width = 7, height = 4)


escribir ("![](images6/SnrUsTime.png)")
escribir ("![](images6/JunUsTime.png)")
escribir ("Рисунок 6.2. А - Распределение длительности выполнения исследования УЗИ по группами, исследования выполнял специалист с опытом более 10 лет, 
          Б- Распределение длительности выполнения исследования УЗИ по группами, исследования выполнял специалист с опытом 3 года.")


escribir ("Далее следует привести данные временных характеристик по изучаемым методам ранней диагностики ракак молочной железы")
Describe_numeric (dfXlsx$us_time, "время ","выполнения УЗИ по всей выборке составил "," мин")
Describe_numeric (dfXlsx$abus_time, "время ","выполнения ABUS по всей выборке составил "," мин")
pvalueParaWxText(dfXlsxMetComp,dfXlsxMetComp$time,dfXlsxMetComp$methodsVizualisation,"по времени выполнения")
escribir ("Такая статистическая разница отражает очевидную разницу в скорости выполнения выполнения исследований отражены на рисуноке 6.3)")

dfXlsxMetCompT <- subset(dfXlsxMetComp,dfXlsxMetComp$methodsVizualisation!="mmg")
Abus_Us_timePlot <-Violinplot(dfXlsxMetCompT, dfXlsxMetCompT$time, dfXlsxMetCompT$methodsVizualisation, "Время", "Метод")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter6/images6/AbusUsTimeTime.png", 
       plot = Abus_Us_timePlot, units = "in", width = 14, height = 8)
rm(dfXlsxMetCompT)
escribir ("![](images6/AbusUsTimeTime.png)")

escribir ("Рисунок 6.3. Разность скорости выполнения между методами")

escribir ("Следует сказать, что выявленная разница по времени между методами, а так же зависимость УЗ исследования от специалиста показывает то, 
          что система ABUS имеет конкурентные приемущества при ранней диагностике рака молочной железы по временной характеристике. Однако стоит сказать, 
          что при выполнии ABUS исследования нельзя выполнить пункцию для проведения гистологического исследования и требуется выполнение УЗИ исследования и проведения пункции под навигацией.
          Следовательно ABUS исследование может позволить облегчить рутинизацию выполнения УЗИ исследования в тех случаях, где обнаружение образования, требующего пункцию маловероятно.
          Для этого было выполнено определение наиболее значимых факторов для обоснования использования ABUS в рутинной практике.")


# 6.2 Определение наиболее значимых факторов  ------------------------------------------------
escribir ("## 6.2 Определение наиболее значимых факторов и алгоритма оптимизации использования ABUS")

escribir ("Наиболее значимые факторы для определения вероятности нахождения рака молочной железы при скрининге разделяется на два этапа. 
          Первый этап состоит из преддиагностических факторов входящих в сбор анамнеза, жалоб и осмотра врача. 
          Второй этап более применим только к группе пациенток возрасте 40 лет и старше а именно данные заключения ММГ. 
          Для каждого этапа были составлены педикторные модели, 
          целью которых было выявление наиболее значимых факторов указывающих на высокую вероятность нахождения образования для которого требуется проведение биопсии под навигацией. 
          Это необходимо в первую очередь для определения маршрутизации пациентов, а именно для пациентов у которых такая вероятность невысокая, то эти пациенты направляются для скрининга систем ABUS.")

escribir ("### 6.2.1 Оценка преддиагностических факторов в выборке пациенток до 40 лет")


escribir (paste(" Для определения наиболее значимых преддиагностических факторов производился подбор предиктороной модели с наиболее значимыми факторам.
          В выборке пациенток до 40 лет была получена формула", 
          "y ~ 0.05* \"возраст пациента\" ",
          "+ 1.82*\"Первичный диагноз:Диффузный фиброаденоматоз\" ",
          "+ 1.6*\"Репродуктивный статус: пременопауза\"",
          "+ 0.86*\"Жалоба на уплотнение \"",
          "+ 4.36*\"Cимптом ретракции\"",
          "+ 2.92*\"Наследственная предрасположенность\""))


table(dfXlsxJun$breast_surgery_before)
# fit_preDiagJun<- glm (dfXlsxJun$hist_is_tumor  ~
#                         diagnosis_primary
#                       , dfXlsxJun, family = "binomial")
# 
# 
# summary(fit_preDiagJun)

fit_preDiagJun<- glm (dfXlsxJun$hist_is_tumor  ~
                         age_patient +
                         diagnosis_primary +
                         side	+ 
                         satus_reproductive +
                         complaints +
                         breast_surgery_before +
                         nipple_retraction +
                         nipple_release +
                         quadrant +
                         genetics +
                         hormonal_medications 
                      , dfXlsxJun, family = "binomial")


summary(fit_preDiagJun)
exp(coef(fit_preDiagJun))


dfXlsxJun$preDiagJun <- predict(object = fit_preDiagJun, type = "response")



pred_fitJun <- prediction(dfXlsxJun$preDiagJun , dfXlsxJun$hist_is_tumor)
perf_fitJun <- performance(pred_fitJun,"tpr","fpr")
plotpreDiagJun <- plot(perf_fitJun, col='blue')
aucJun  <- performance(pred_fitJun, measure = "auc")
str(aucJun)



pROC_obj_preDiagJun <- roc(dfXlsxJun$hist_is_tumor,dfXlsxJun$preDiagJun,
                       smoothed = TRUE,
                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                       print.auc=TRUE, show.thres=TRUE)

perf3Jun  <- performance(pred_fitJun, x.measure = "cutoff", measure = "spec")
perf4Jun <- performance(pred_fitJun, x.measure = "cutoff", measure = "sens")
perf5Jun  <- performance(pred_fitJun, x.measure = "cutoff", measure = "acc")

plot(perf3Jun, col = "red", lwd =2)
plot(add=T, perf4Jun , col = 'blue', lwd =2)
plot(add=T, perf5Jun, lwd =2,col = 'green')

legend(x = 0.6,y = 0.3, c("Специфичность", "Чувствительность", "Точность"), 
       lty = 1, col =c('red', 'blue', 'green'), bty = 'n', cex = 1, lwd = 2)

abline_vJun <- 0.920
abline(v= abline_vJun, lwd = 4)

escribir (paste("Были расчитаны предикторные коэфициенты на основании пердставленной модели и построек график ROC- кривой качества модели (Рисунок 6.4).",
                "Площадь под кривой составила", round(aucJun@y.values[[1]],4),
                "Также были расчитаны показатели точности, специфичности и чувствительности модели с определением коэфициента отсечения (Рисунок 6.5).",
                "в представленной модели коэфициент отсечения был ", abline_vJun,
                "По высчитанному коэфициенту отсечиния был составлен прогноз рекомендаций к скринингу "))

escribir ("![](images6/plotpreDiagJun.png)")
escribir ("Рисунок 6.4. ROC- кривая предикторной модели опредления показаний к ABUS для скрининга у пациенток в выборке до 40 лет")
escribir ("![](images6/plotpreDiagJunСutoff.png)")
escribir ("Рисунок 6.5. Показатели точности, специфичности и чувствительности модели с определением коэфициента отсечения в выборке до 40 лет")





dfXlsxJun$pred_resp  <- factor(ifelse(dfXlsxJun$preDiagJun > 0.918, 1, 0), labels = c("Да", "Нет"))
dfXlsxJun$correct  <- factor(ifelse(dfXlsxJun$pred_resp == dfXlsxJun$hist_is_tumor, 1, 0), labels = c("Нет", "Да"))

Quantity_discr("На основании данных, полученных в нашем исследовании скрининг с ABUS в выборке до 40 лет не показан ",dfXlsxJun$pred_resp)

Quantity_discr("Представленная модель в выборке до 40 лет сработала корректно ",dfXlsxJun$correct)




escribir ("### 6.2.2 Оценка преддиагностических факторов и факторов ММГ в выборке пациенток 40 лет и старше")

escribir (paste(" Для определения наиболее значимых преддиагностических факторов производился подбор предиктороной модели с наиболее значимыми факторам.
          В выборке пациенток 40 лет и старше была получена формула", 
                "y ~ 0.05* \"возраст пациента\" ",
                "+ 2.27*\"Первичный диагноз:Листовидная опухоль\"",
                "+ 3.17*\"Первичный диагноз:Локализованный фиброаденоматоз\"",
                "+ 1.25*\"Репродуктивный статус: менопауза более 5 лет\"",
                "+ 3.01*\"Жалоба на уплотнение \"",
                "+ 1.77*\"Cимптом ретракции\"",
                "+ 1.75*\"Наследственная предрасположенность\"",
                "+ 1.19*\"Отсутсвие гормональное терапии\"",
                "+ 2.18*\"Фон на ММГ: железистая ткань\"",
                "+ 2.25*\"Характеристика узла на ММГ: фокус упролнения\"",
                "+ 5.02*\"Края образованияна ММГ: нечеткие\"."
))


table(dfXlsxSnr$mmg_number_nodles)
fit_preDiagSnr<- glm (dfXlsxSnr$hist_is_tumor  ~
                        mmg_category_birads
                      , dfXlsxSnr, family = "binomial")


summary(fit_preDiagSnr)

fit_preDiagSnr<- glm (dfXlsxSnr$hist_is_tumor  ~
                        age_patient +
                        diagnosis_primary +
                        side	+ 
                        satus_reproductive +
                        complaints +
                        breast_surgery_before +
                        nipple_retraction +
                        nipple_release +
                        quadrant +
                        genetics +
                        hormonal_medications +
                        mmg_conclusion_skin +
                        mmg_areola +
                        mmg_nipple +
                        mmg_background_breast+
                        mmg_nodle +
                        mmg_nodle_contour+
                        mmg_nodle_size +
                        mmg_calcifications +
                        mmg_number_formations_visualized +
                        mmg_axillary_lymph_nodes +
                        mmg_conclusion +
                        type_structure_acr +
                        mmg_number_nodles +
                        mmg_category_birads 
                      , dfXlsxSnr, family = "binomial")


summary(fit_preDiagSnr)
exp(coef(fit_preDiagSnr))


dfXlsxSnr$preDiagSnr <- predict(object = fit_preDiagSnr, type = "response")



pred_fitSnr <- prediction(dfXlsxSnr$preDiagSnr , dfXlsxSnr$hist_is_tumor)
perf_fitSnr <- performance(pred_fitSnr,"tpr","fpr")
plot(perf_fitSnr, colorize=T , print.cutoffs.at = seq(0,1,by=0.1))
aucSnr  <- performance(pred_fitSnr, measure = "auc")
str(aucSnr)
# plot(perf_fitSnr, col='blue')
pROC_obj_preDiagSnr <- roc(dfXlsxSnr$hist_is_tumor,dfXlsxSnr$preDiagSnr,
                       smoothed = TRUE,
                       ci=TRUE, ci.alpha=0.9, stratified=FALSE,
                       plot=TRUE, auc.polygon=TRUE, max.auc.polygon=TRUE, grid=TRUE,
                       print.auc=TRUE, show.thres=TRUE)

perf3Snr  <- performance(pred_fitSnr, x.measure = "cutoff", measure = "spec")
perf4Snr <- performance(pred_fitSnr, x.measure = "cutoff", measure = "sens")
perf5Snr  <- performance(pred_fitSnr, x.measure = "cutoff", measure = "acc")

plot(perf3Snr, col = "red", lwd =2)
plot(add=T, perf4Snr , col = 'blue', lwd =2)
plot(add=T, perf5Snr, lwd =2,col = 'green')

legend(x = 0.6,y = 0.3, c("Специфичность", "Чувствительность", "Точность"), 
       lty = 1, col =c('red', 'blue', 'green'), bty = 'n', cex = 1, lwd = 2)

abline_vSnr <- 0.935
abline(v= abline_v, lwd = 4)

escribir (paste("Были расчитаны предикторные коэфициенты на основании пердставленной модели и построек график ROC- кривой качества модели (Рисунок 6.4).",
                "Площадь под кривой составила", round(aucSnr@y.values[[1]],4),
                "Также были расчитаны показатели точности, специфичности и чувствительности модели с определением коэфициента отсечения (Рисунок 6.5).",
                "в представленной модели коэфициент отсечения был ", abline_vSnr,
                "По высчитанному коэфициенту отсечиния был составлен прогноз рекомендаций к скринингу "))

escribir ("![](images6/plotpreDiagSnr.png)")
escribir ("Рисунок 6.4. ROC- кривая предикторной модели опредления показаний к ABUS для скрининга у пациенток в выборке 40 лет и старше")
escribir ("![](images6/plotpreDiagSnrСutoff.png)")
escribir ("Рисунок 6.5. Показатели точности, специфичности и чувствительности модели с определением коэфициента отсечения в выборке 40 лет и старше")



dfXlsxSnr$pred_resp  <- factor(ifelse(dfXlsxSnr$preDiagSnr > abline_v, 1, 0), labels = c("Да", "Нет"))
dfXlsxSnr$correct  <- factor(ifelse(dfXlsxSnr$pred_resp == dfXlsxSnr$hist_is_tumor, 1, 0), labels = c("Нет", "Да"))

write.xlsx(dfXlsxSnr,"testSnr.xlsx")
Quantity_discr("На основании данных, полученных в нашем исследовании скрининг с ABUS в выборке 40 лет и старше не показан ",dfXlsxSnr$pred_resp)

Quantity_discr("Представленная модель в выборке 40 лет и старше сработала корректно ",dfXlsxSnr$correct)

escribir ("### 6.2.3 Алгоритм оптимизации использования ABUS")


# 6.3 Заключение  ------------------------------------------------
escribir ("## 6.3 Заключение")