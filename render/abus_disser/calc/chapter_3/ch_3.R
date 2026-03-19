library(caret)
library(knitr)

x1_us <- as.factor(dfXlsxJun$us_is_tumor)
y2_us <- as.factor(dfXlsxJun$hist_is_tumor)
cm_object_us <- confusionMatrix(x1_us,y2_us)


x1_usA <- as.factor(dfXlsxGr1$us_is_tumor)
y2_usA <- as.factor(dfXlsxGr1$hist_is_tumor)
cm_object_usA <- confusionMatrix(x1_usA,y2_usA)

x1_usB <- as.factor(dfXlsxGr3$us_is_tumor)
y2_usB <- as.factor(dfXlsxGr3$hist_is_tumor)
cm_object_usB <- confusionMatrix(x1_usB,y2_usB)

x1_abus <- as.factor(dfXlsxGr3$abus_is_tumor)
y2_abus <- as.factor(dfXlsxGr3$hist_is_tumor)
cm_object_abus <- confusionMatrix(x1_abus,y2_abus)


# Создание таблицы дискордантных пар для сравнения чувствительности
mcnemar_sens <- matrix(c(30, 1, 5, 1), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно положительно", "Ложноотрицательно"),
                                       "3D УЗИ" = c("Истинно положительно", "Ложноотрицательно")))

# Выполнение теста МакНемара для чувствительности
mcnemar.test(mcnemar_sens)

# Создание таблицы дискордантных пар для сравнения специфичности
mcnemar_spec <- matrix(c(670, 4, 8, 5), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно отрицательно", "Ложноположительно"),
                                       "3D УЗИ" = c("Истинно отрицательно", "Ложноположительно")))

# Выполнение теста МакНемара для специфичности
mcnemar.test(mcnemar_spec)

# Создание общей таблицы дискордантных пар (все пациенты)
total_test <- matrix(c(183, 4, 11, 2), 
                     nrow = 2,
                     dimnames = list("УЗИ" = c("Положительный", "Отрицательный"),
                                     "3D УЗИ" = c("Положительный", "Отрицательный")))

# Выполнение теста МакНемара для общей точности
mcnemar.test(total_test)