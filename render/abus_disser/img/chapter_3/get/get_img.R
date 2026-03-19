source("./render/abus_disser/calc/input/getdata.R")
library(pROC)
library(ggpubr)
library(ggplot2)


# Открываем устройство для сохранения
png("/Users/andreypovaliy/Yandex.Disk.localized/Documents/science/ABUS_US_diagnostics/render/abus_disser/img/chapter_3/ch_3_fig_n13.png", width = 1600, height = 1600, res = 200)

# Настройка области для 4 графиков (2 ряда, 2 колонки)
par(mfrow = c(2, 2),          # 2 ряда, 2 колонки
    mar = c(5, 5, 4, 2),      # Отступы: снизу, слева, сверху, справа
    oma = c(0, 0, 2, 0))      # Внешние отступы для общего заголовка

# График 1 (Группа 1, УЗИ)
roc(dfXlsxGr1$hist_is_tumor, dfXlsxGr1$us_probabilityNeoCa,
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
roc(dfXlsxGr3$hist_is_tumor, dfXlsxGr3$us_probabilityNeoCa,
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
roc(dfXlsxGr3$hist_is_tumor, dfXlsxGr3$abus_probabilityNeoCa,
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
roc(dfXlsxJun$hist_is_tumor, dfXlsxJun$abus_probabilityNeoCa,
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
cat("Файл сохранен: ch_3_fig_n13.png\n")




# 
# ## Симптом ретракции  --------------------------------------------------------------------
# dfXlsxGr3_symptom_retraction <- dfXlsxGr3
# dfXlsxGr3_symptom_retraction$abus_symptom_retraction <- factor(dfXlsxGr3_symptom_retraction$abus_symptom_retraction, order=TRUE,
#                                                                levels=c("есть", 
#                                                                         "нет"),
#                                                                labels = c("есть" = "1", 
#                                                                           "нет" = "2"))
# 
# figure1 <- ggplot(dfXlsxGr3_symptom_retraction, aes(x=abus_symptom_retraction, fill = abus_symptom_retraction))+
#   geom_bar(position = "dodge")+
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown"   )+
#   labs(
#     x= "Наличие симптома ретракции
#     1 = есть, 2 = нет",
#     y = "Количество",
#     fill = "Симптом ретракции"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_symptom_retraction.png",figure1)
# rm(figure1)
# ## Размеры узлов  --------------------------------------------------------------------
# dfXlsxGr3_isNode <- subset(dfXlsxGr3,dfXlsxGr3$abus_nodle_size!="нет")
# dfXlsxGr3_isNode$abus_nodle_size <- factor(dfXlsxGr3_isNode$abus_nodle_size, order=TRUE,
#                                            levels=c("0,5-1,0 см", 
#                                                     "1,1-1,5 см", 
#                                                     "1,5-2,0 см",
#                                                     "2,1-2,5 см",
#                                                     "2,5-3,0 см",
#                                                     "более 3 см"),
#                                            labels = c("0,5-1,0 см" = "1", 
#                                                       "1,1-1,5 см" = "2", 
#                                                       "1,5-2,0 см" = "3",
#                                                       "2,1-2,5 см" = "4",
#                                                       "2,5-3,0 см" = "5",
#                                                       "более 3 см" = "6"))
# figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_nodle_size, fill = abus_nodle_size))+
#   geom_bar(position = "dodge")+   
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown"   )+
#   labs(
#     x= "Размер
#     1 = 0,5-1,0 см, 2 = 1,1-1,5 см, 
#     3 = 1,5-2,0 см, 4 = 2,1-2,5 см,
#     5 = 2,5-3,0 см, 6 = более 3 см",
#     y = "Количество",
#     fill = "Размер"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_nodle_size.png",figure1)
# rm(figure1)
# ## Контуры узлов  --------------------------------------------------------------------
# dfXlsxGr3_isNode$abus_nodle_contours <- factor(dfXlsxGr3_isNode$abus_nodle_contours, order=TRUE,
#                                                levels=c("ровные",
#                                                         "неровные",
#                                                         "полициклические",
#                                                         "четкие",
#                                                         "нечеткие",
#                                                         "волнистые",
#                                                         "нарушение архитектоники"),
#                                                labels = c("ровные" = "1",
#                                                           "неровные" = "2",
#                                                           "полициклические" = "3",
#                                                           "четкие" = "4",
#                                                           "нечеткие" = "5",
#                                                           "волнистые" = "6",
#                                                           "нарушение архитектоники" = "7"))
# figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_nodle_contours, fill = abus_nodle_contours))+
#   geom_bar(position = "dodge")+   
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown")+
#   labs(
#     x= "Контуры
#     1 = ровные, 2 = неровные,
#     3 = полициклические, 4 = четкие,
#     5 = нечеткие, 6 = волнистые,
#     7 = нарушение архитектоники",
#     y = "Количество",
#     fill = "Контур"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_nodle_contours.png",figure1)
# rm(figure1)
# ## Эхогенность --------------------------------------------------------------------
# 
# dfXlsxGr3_isNode$abus_echogenicity_formation <- factor(dfXlsxGr3_isNode$abus_echogenicity_formation, order=TRUE,
#                                                        levels=c("гиперэхогенное",
#                                                                 "гипоэхогенное",
#                                                                 "изоэхогенное",
#                                                                 "смешанная",
#                                                                 "анэхогенное"),
#                                                        labels = c("гиперэхогенное" ="1",
#                                                                   "гипоэхогенное" = "2",
#                                                                   "изоэхогенное" = "3",
#                                                                   "смешанная" = "4",
#                                                                   "анэхогенное" = "5"))
# figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_echogenicity_formation, fill = abus_echogenicity_formation))+
#   geom_bar(position = "dodge")+   
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown")+
#   labs(
#     x= "Эхогенность
#    1 = гиперэхогенное, 2 = гипоэхогенное,
#    3 = изоэхогенное, 4 = смешанная, 
#     5 = анэхогенное",
#     y = "Количество",
#     fill = "Эхогенность"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_echogenicity_formation.png",figure1)
# rm(figure1)
# ## Структура узлов  --------------------------------------------------------------------
# dfXlsxGr3_isNode$abus_structure <- factor(dfXlsxGr3_isNode$abus_structure, order=TRUE,
#                                           levels=c("однородная",
#                                                    "неоднородная",
#                                                    "с жидкостным содержимым",
#                                                    "с кальцинатами",
#                                                    "наличие внутрикистозных пристеночных разрастаний"),
#                                           labels = c("однородная" = "1",
#                                                      "неоднородная" = "2",
#                                                      "с жидкостным содержимым" = "3",
#                                                      "с кальцинатами" = "4",
#                                                      "наличие внутрикистозных пристеночных разрастаний" = "5"))
# figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_structure, fill = abus_structure))+
#   geom_bar(position = "dodge")+   
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown")+
#   labs(
#     x= "Структура узлов
#     1 = однородная, 2= неоднородная,
#     3 = с жидкостным содержимым, 4 = с кальцинатами,
#     5 = наличие внутрикистозных пристеночных разрастаний",
#     y = "Количество",
#     fill = "Структура узлов"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_structure.png",figure1)
# rm(figure1)
# 
# ## Количество --------------------------------------------------------------------
# dfXlsxGr3_isNode <- subset(dfXlsxGr3, dfXlsxGr3$abus_number_nodles != "не определяется")
# dfXlsxGr3_isNode$abus_number_nodles <- factor(dfXlsxGr3_isNode$abus_number_nodles, order=TRUE,
#                                               levels=c("один", 
#                                                        "два", 
#                                                        "три",
#                                                        "множественные кисты"),
#                                               labels = c("один"= "1", 
#                                                          "два" = "2", 
#                                                          "три" = "3",
#                                                          "множественные кисты" = "4"))
# figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_number_nodles, fill = abus_number_nodles))+
#   geom_bar(position = "dodge")+   geom_text(     aes(label = ..count..),     size = 6.5,     stat = "count",      vjust = -0.5,      colour = "brown"   )+
#   geom_text(
#     aes(label = ..count..),
#     size = 6.5,
#     stat = "count", 
#     vjust = -0.5, 
#     colour = "brown"
#   )+
#   labs(
#     x= "Количество
#         1 = один, 2 = два, 
#     3 = три, 4 = множественные",
#     y = "Количество",
#     fill = "Количество"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# 
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_number_nodles.png",figure)
# rm(figure1)
# 
# ## категория BIRADS --------------------------------------------------------------------
# dfXlsxGr3_BIRADS <- dfXlsxGr3
# dfXlsxGr3_BIRADS$abus_category_birads <- factor(dfXlsxGr3_BIRADS$abus_category_birads, order=TRUE,
#                                                 levels=c("Birads 1",
#                                                          "Birads 2",
#                                                          "Birads 3",
#                                                          "Birads 4а",
#                                                          "Birads 4b",
#                                                          "Birads 4c",
#                                                          "Birads 5",
#                                                          "Birads 6",
#                                                          "Birads 0"),
#                                                 labels = c("Birads 1" = "1",
#                                                            "Birads 2" = "2",
#                                                            "Birads 3" = "3",
#                                                            "Birads 4а" = "4",
#                                                            "Birads 4b" = "5" ,
#                                                            "Birads 4c" = "6",
#                                                            "Birads 5" = "7",
#                                                            "Birads 6" = "8",
#                                                            "Birads 0" = "9"))
# figure1 <- ggplot(dfXlsxGr3_BIRADS, aes(x=abus_category_birads, fill = abus_category_birads))+
#   geom_bar(position = "dodge")+  
#   geom_text(
#     aes(label = paste("n =",..count..)),
#     size = 6.5,
#     stat = "count", 
#     vjust = -0.5, 
#     colour = "brown")+
#   labs(
#     x = "Категория BIRADS:
#     1 = Birads 1, 2 = Birads 2, 3 = Birads 3,
#     4 = Birads 4а, 5 = Birads 4b, 6 = Birads 4c,
#     7 = Birads 5",
#     y = "Количество",
#     fill = "категория BIRADS"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_category_birads.png",figure1)
# rm(figure1)
# ## диагноз  --------------------------------------------------------------------
# # ggplot(dfXlsxGr3, aes(x=abus_diagnosis, fill = abus_diagnosis))+
# #   geom_bar(position = "dodge")+   geom_text(     aes(label = ..count..),     size = 6.5,     stat = "count",      vjust = -0.5,      colour = "brown"   )+
# #   labs(
# #     x= "Количество",
# #     y = "Количество",
# #     fill = "Количество"
# #     
# #   )+
# #   theme(legend.position="top",
# #         axis.title.y = element_text(size = rel(1.3)),
# #         axis.title.x = element_text(size = rel(1.3)),
# #         axis.text = element_text(size = rel(1.3)),
# #         legend.text = element_text(size = rel(1.0)),
# #         legend.title=element_text(size = rel(1.3)))
# 
# ## кальцинаты   --------------------------------------------------------------------
# # dfXlsxGr3_calc <- subset(dfXlsxGr3,dfXlsxGr3$abus_calcinates != "нет")
# # dfXlsxGr3_calc$abus_calcinates <- factor(dfXlsxGr3_calc$abus_calcinates, order=TRUE,
# #                                                                levels=c("есть", 
# #                                                                         "нет"),
# #                                                                labels = c("есть" = "1", 
# #                                                                           "нет" = "2"))
# # figure1 <- ggplot(dfXlsxGr3_calc, aes(x=abus_calcinates, fill = abus_calcinates))+
# #   geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
# #   labs(
# #     x= "Кальцинаты",
# #     y = "Количество",
# #     fill = "Количество"
# #     
# #   )+
# #   theme(legend.position="top",
# #         axis.title.y = element_text(size = rel(1.3)),
# #         axis.title.x = element_text(size = rel(1.3)),
# #         axis.text = element_text(size = rel(1.3)),
# #         legend.text = element_text(size = rel(1.0)),
# #         legend.title=element_text(size = rel(1.3)))
# # 
# # figure1
# # ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_calcinates.png",figure1)
# # rm(figure1)
# ## рак --------------------------------------------------------------------
# dfXlsxGr3_is_tumor <- dfXlsxGr3
# dfXlsxGr3_is_tumor$abus_is_tumor <- factor(dfXlsxGr3_is_tumor$abus_is_tumor, order=TRUE,
#                                            levels=c("Да", 
#                                                     "Нет"),
#                                            labels = c("Да" = "1", 
#                                                       "Нет" = "2"))
# 
# figure1 <- ggplot(dfXlsxGr3_is_tumor, aes(x=abus_is_tumor, fill = abus_is_tumor))+
#   geom_bar(position = "dodge")+
#   geom_text(     
#     aes(label = ..count..),     
#     size = 6.5,     
#     stat = "count",      
#     vjust = -0.5,      
#     colour = "brown"   )+
#   labs(
#     x= "Злокачественное образование
#     1 = Да, 2 = Нет",
#     y = "Количество",
#     fill = "Количество"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# figure1
# ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_is_tumor.png",figure1)
# rm(figure1)








