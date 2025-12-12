# Examination -------------------------------------------------------------
dataFrameNeo <- subset(dataFrameAll,tumor_morphology_structure != "не проводилось")

fit<- glm (dataFrameNeo$is_tumor_histology   ~
             age_patient*
             dataFrameNeo$genetics*
             dataFrameNeo$satus_reproductive+
             dataFrameNeo$nipple_retraction
                    , dataFrameNeo, family = "binomial")
            
            
summary(fit)
anova(fit, test="Chisq")



#перейти к заначеням шансов через энспаненту
exp(fit$coefficients)
fit$coefficients

#предсказывание в шансах
head(predict(object = fit))
#предсказывание в вероятности
head(predict(object = fit, type = "response"))

#вывести предсказание в дата фрейм
dataFrameNeo$probability  <- predict(object = fit, type = "response")


library(ROCR)
#предсказанные и полученные
pred_fit <- prediction(dataFrameNeo$probability , dataFrameNeo$is_tumor_histology )
perf_fit <- performance(pred_fit,"tpr","fpr")
plot(perf_fit, colorize=T , print.cutoffs.at = seq(0,1,by=0.1))

#площадь под кривой
auc  <- performance(pred_fit, measure = "auc")
str(auc)

perf3  <- performance(pred_fit_exam, x.measure = "cutoff", measure = "spec")
perf4  <- performance(pred_fit_exam, x.measure = "cutoff", measure = "sens")
perf5  <- performance(pred_fit_exam, x.measure = "cutoff", measure = "acc")


plot(perf3, col = "red", lwd =2)
plot(add=T, perf4 , col = "green", lwd =2)
plot(add=T, perf5, lwd =2)

legend(x = 0.6,y = 0.3, c("spec", "sens", "accur"), 
       lty = 1, col =c('red', 'green', 'black'), bty = 'n', cex = 1, lwd = 2)

abline(v= 0.04, lwd = 2)

dataFrameAll$pred_resp_exam  <- factor(ifelse(dataFrameAll$probability_exam  > 0.04, 1, 0), labels = c("Нет", "Да"))

dataFrameAll$correct_exam  <- ifelse(dataFrameAll$pred_resp_exam == dataFrameAll$is_tumor_final, "Верно", "Не верно")

t <- table(dataFrameAll$correct_exam)

t[2]/t[1]

dataFrameAllNotCorrect <- subset(dataFrameAll, dataFrameAll$correct_exam=="Не верно")

table(dataFrameAllNotCorrect$is_tumor_histology )
