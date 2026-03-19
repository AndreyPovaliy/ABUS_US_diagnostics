library(caret)
library(knitr)



x1_usD <- as.factor(dfXlsxGr4$us_is_calc)
y2_usD <- as.factor(dfXlsxGr4$mmg_is_calc)
cm_object_usB <- confusionMatrix(x1_usD,y2_usD)

x1_abus <- as.factor(dfXlsxGr4$abus_is_calc)
y2_abus <- as.factor(dfXlsxGr4$mmg_is_calc)
cm_object_abus <- confusionMatrix(x1_abus,y2_abus)

sum(cm_object_usB$table)

# УЗИ с 3УЗИ --------------------------------------------------------------


# Создание таблицы дискордантных пар для сравнения чувствительности
mcnemar_sens <- matrix(c(62, 3, 0, 84), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно положительно", "Ложноотрицательно"),
                                       "3D УЗИ" = c("Истинно положительно", "Ложноотрицательно")))

# Выполнение теста МакНемара для чувствительности
mcnemar.test(mcnemar_sens)

# Создание таблицы дискордантных пар для сравнения специфичности
mcnemar_spec <- matrix(c(488, 0, 0, 1), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно отрицательно", "Ложноположительно"),
                                       "3D УЗИ" = c("Истинно отрицательно", "Ложноположительно")))

# Выполнение теста МакНемара для специфичности
mcnemar.test(mcnemar_spec)

# Создание общей таблицы дискордантных пар (все пациенты)
total_test <- matrix(c(65, 18, 15, 557), 
                     nrow = 2,
                     dimnames = list("УЗИ" = c("Положительный", "Отрицательный"),
                                     "3D УЗИ" = c("Положительный", "Отрицательный")))



# Выполнение теста МакНемара для общей точности
mcnemar.test(total_test)