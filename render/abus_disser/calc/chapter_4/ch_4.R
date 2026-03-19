library(caret)
library(knitr)

x1_mmg <- as.factor(dfXlsxSnr$mmg_is_tumor)
y2_mmg <- as.factor(dfXlsxSnr$hist_is_tumor)
cm_object_us <- confusionMatrix(x1_mmg,y2_mmg)


x1_mmgC <- as.factor(dfXlsxGr2$mmg_is_tumor)
y2_mmgC <- as.factor(dfXlsxGr2$hist_is_tumor)
cm_object_usC <- confusionMatrix(x1_mmgC,y2_mmgC)

x1_mmgD <- as.factor(dfXlsxGr4$mmg_is_tumor)
y2_mmgD <- as.factor(dfXlsxGr4$hist_is_tumor)
cm_object_usD <- confusionMatrix(x1_mmgD,y2_mmgD)

x1_us <- as.factor(dfXlsxSnr$us_is_tumor)
y2_us <- as.factor(dfXlsxSnr$hist_is_tumor)
cm_object_us <- confusionMatrix(x1_us,y2_us)


x1_usC <- as.factor(dfXlsxGr2$us_is_tumor)
y2_usC <- as.factor(dfXlsxGr2$hist_is_tumor)
cm_object_usA <- confusionMatrix(x1_usC,y2_usC)

x1_usD <- as.factor(dfXlsxGr4$us_is_tumor)
y2_usD <- as.factor(dfXlsxGr4$hist_is_tumor)
cm_object_usB <- confusionMatrix(x1_usD,y2_usD)

x1_abus <- as.factor(dfXlsxGr4$abus_is_tumor)
y2_abus <- as.factor(dfXlsxGr4$hist_is_tumor)
cm_object_abus <- confusionMatrix(x1_abus,y2_abus)

sum(cm_object_usB$table)

# УЗИ с 3УЗИ --------------------------------------------------------------


# Создание таблицы дискордантных пар для сравнения чувствительности
mcnemar_sens <- matrix(c(121, 4, 0, 17), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно положительно", "Ложноотрицательно"),
                                       "3D УЗИ" = c("Истинно положительно", "Ложноотрицательно")))

# Выполнение теста МакНемара для чувствительности
mcnemar.test(mcnemar_sens)

# Создание таблицы дискордантных пар для сравнения специфичности
mcnemar_spec <- matrix(c(495, 14, 0, 4), 
                       nrow = 2,
                       dimnames = list("УЗИ" = c("Истинно отрицательно", "Ложноположительно"),
                                       "3D УЗИ" = c("Истинно отрицательно", "Ложноположительно")))

# Выполнение теста МакНемара для специфичности
mcnemar.test(mcnemar_spec)

# Создание общей таблицы дискордантных пар (все пациенты)
total_test <- matrix(c(121, 21, 18, 495), 
                     nrow = 2,
                     dimnames = list("УЗИ" = c("Положительный", "Отрицательный"),
                                     "3D УЗИ" = c("Положительный", "Отрицательный")))



# Выполнение теста МакНемара для общей точности
mcnemar.test(total_test)


# УЗИ с ММГ --------------------------------------------------------------


# Таблица для чувствительности (больные)
mcnemar_sens_mm_uzi <- matrix(c(76, 0, 45, 21), nrow = 2,
                              dimnames = list("Маммография" = c("Истинно+", "Ложно-"),
                                              "УЗИ" = c("Истинно+", "Ложно-")))
mcnemar.test(mcnemar_sens_mm_uzi)


# Таблица для специфичности (здоровые)
mcnemar_spec_mm_uzi <- matrix(c(495, 14, 0, 4), nrow = 2,
                              dimnames = list("Маммография" = c("Истинно-", "Ложно+"),
                                              "УЗИ" = c("Истинно-", "Ложно+")))
mcnemar.test(mcnemar_spec_mm_uzi)

# Таблица для общей точности (все пациенты)
mcnemar_total_mm_uzi <- matrix(c(62, 18, 77, 498), nrow = 2,
                               dimnames = list("Маммография" = c("Положит.", "Отрицат."),
                                               "УЗИ" = c("Положит.", "Отрицат.")))
mcnemar.test(mcnemar_total_mm_uzi)




# ММГ с 3УЗИ --------------------------------------------------------------


# Таблица для чувствительности (больные)
mcnemar_sens_mm_3d <- matrix(c(76, 0, 49, 17), nrow = 2,
                             dimnames = list("Маммография" = c("Истинно+", "Ложно-"),
                                             "3D УЗИ" = c("Истинно+", "Ложно-")))
mcnemar.test(mcnemar_sens_mm_3d)

# Таблица для специфичности (здоровые)
mcnemar_spec_mm_3d <- matrix(c(509, 14, 1, 4), nrow = 2,
                             dimnames = list("Маммография" = c("Истинно-", "Ложно+"),
                                             "3D УЗИ" = c("Истинно-", "Ложно+")))
mcnemar.test(mcnemar_spec_mm_3d)

# Таблица для общей точности (все пациенты)
mcnemar_total_mm_3d <- matrix(c(76, 4, 53, 522), nrow = 2,
                              dimnames = list("Маммография" = c("Положит.", "Отрицат."),
                                              "3D УЗИ" = c("Положит.", "Отрицат.")))
mcnemar.test(mcnemar_total_mm_3d)