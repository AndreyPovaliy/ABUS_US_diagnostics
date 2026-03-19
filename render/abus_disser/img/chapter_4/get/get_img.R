source("./render/abus_disser/calc/input/getdata.R")
library(pROC)
library(ggpubr)
library(ggplot2)


# Открываем устройство для сохранения
png("/Users/andreypovaliy/Yandex.Disk.localized/Documents/science/ABUS_US_diagnostics/render/abus_disser/img/chapter_4/ch_4_fig_n19.png", width = 1600, height = 1600, res = 200)

# Настройка области для 4 графиков (2 ряда, 2 колонки)
par(mfrow = c(2, 2),          # 2 ряда, 2 колонки
    mar = c(5, 5, 4, 2),      # Отступы: снизу, слева, сверху, справа
    oma = c(0, 0, 2, 0))      # Внешние отступы для общего заголовка

# График 1 (Группа 1, УЗИ)
roc(dfXlsxGr2$hist_is_tumor, dfXlsxGr2$us_probabilityNeoCa,
    smoothed = TRUE,
    ci = TRUE, 
    ci.alpha = 0.9, 
    stratified = FALSE,
    plot = TRUE, 
    auc.polygon = TRUE, 
    max.auc.polygon = TRUE, 
    grid = TRUE,
    print.auc = TRUE, 
    print.auc.cex = 1.2,
    print.auc.x = 0.8,              # Центрирование
    print.auc.y = 0.4,
    show.thres = TRUE,
    cex.lab = 1.5,
    cex.axis = 1.5,
    main = "а",
    xlab = "Специфичность",
    ylab = "Чувствительность")

# График 2 (Группа 3, УЗИ)
roc(dfXlsxGr4$hist_is_tumor, dfXlsxGr4$us_probabilityNeoCa,
    smoothed = TRUE,
    ci = TRUE, 
    ci.alpha = 0.9, 
    stratified = FALSE,
    plot = TRUE, 
    auc.polygon = TRUE, 
    max.auc.polygon = TRUE, 
    grid = TRUE,
    print.auc = TRUE, 
    print.auc.cex = 1.2,
    print.auc.x = 0.8,              # Центрирование
    print.auc.y = 0.4,
    show.thres = TRUE,
    cex.lab = 1.5,
    cex.axis = 1.5,
    main = "б",
    xlab = "Специфичность",
    ylab = "Чувствительность")

# График 3 (Группа 3, 3D УЗИ)
roc(dfXlsxGr4$hist_is_tumor, dfXlsxGr4$abus_probabilityNeoCa,
    smoothed = TRUE,
    ci = TRUE, 
    ci.alpha = 0.9, 
    stratified = FALSE,
    plot = TRUE, 
    auc.polygon = TRUE, 
    max.auc.polygon = TRUE, 
    grid = TRUE,
    print.auc = TRUE, 
    print.auc.cex = 1.2,
    print.auc.x = 0.8,              # Центрирование
    print.auc.y = 0.4,
    show.thres = TRUE,
    cex.lab = 1.5,
    cex.axis = 1.5,
    main = "в",
    xlab = "Специфичность",
    ylab = "Чувствительность")

# График 4 (Моложе 40 лет, 3D УЗИ)
roc(dfXlsxSnr$hist_is_tumor, dfXlsxSnr$abus_probabilityNeoCa,
    smoothed = TRUE,
    ci = TRUE, 
    ci.alpha = 0.9, 
    stratified = FALSE,
    plot = TRUE, 
    auc.polygon = TRUE, 
    max.auc.polygon = TRUE, 
    grid = TRUE,
    print.auc = TRUE, 
    print.auc.cex = 1.2,
    print.auc.x = 0.8,              # Центрирование
    print.auc.y = 0.4,
    show.thres = TRUE,
    cex.lab = 1.5,
    cex.axis = 1.5,
    main = "г",
    xlab = "Специфичность",
    ylab = "Чувствительность")

# Добавление общего заголовка
# mtext("ROC-кривые для различных групп и методов", 
#       outer = TRUE, cex = 1.8, font = 2, line = 0.5)

# Закрытие устройства и сохранение файла
dev.off()

# Сброс параметров
par(mfrow = c(1, 1))

# Сообщение о сохранении
cat("Файл сохранен: ch_4_fig_n19.png\n")



