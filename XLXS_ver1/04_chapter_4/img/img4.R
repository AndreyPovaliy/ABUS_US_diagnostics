library(tidyverse)



# ABUS --------------------------------------------------------------------

## Симптом ретракции  --------------------------------------------------------------------
dfXlsxGr4_symptom_retraction <- dfXlsxGr4
dfXlsxGr4_symptom_retraction$abus_symptom_retraction <- factor(dfXlsxGr4_symptom_retraction$abus_symptom_retraction, order=TRUE,
                                                               levels=c("есть", 
                                                                        "нет"),
                                                               labels = c("есть" = "1", 
                                                                          "нет" = "2"))

figure1 <- ggplot(dfXlsxGr4_symptom_retraction, aes(x=abus_symptom_retraction, fill = abus_symptom_retraction))+
  geom_bar(position = "dodge")+
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown"   )+
  labs(
    x= "Наличие симптома ретракции
    1 = есть, 2 = нет",
    y = "Количество",
    fill = "Симптом ретракции"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_symptom_retraction.png",figure1)
rm(figure1)
## Размеры узлов  --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_nodle_size!="нет")
dfXlsxGr4_isNode$abus_nodle_size <- factor(dfXlsxGr4_isNode$abus_nodle_size, order=TRUE,
                                           levels=c("0,5-1,0 см", 
                                                    "1,1-1,5 см", 
                                                    "1,5-2,0 см",
                                                    "2,1-2,5 см",
                                                    "2,5-3,0 см",
                                                    "более 3 см"),
                                           labels = c("0,5-1,0 см" = "1", 
                                                      "1,1-1,5 см" = "2", 
                                                      "1,5-2,0 см" = "3",
                                                      "2,1-2,5 см" = "4",
                                                      "2,5-3,0 см" = "5",
                                                      "более 3 см" = "6"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_nodle_size, fill = abus_nodle_size))+
  geom_bar(position = "dodge")+   
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown"   )+
  labs(
    x= "Размер
    1 = 0,5-1,0 см, 2 = 1,1-1,5 см, 
    3 = 1,5-2,0 см, 4 = 2,1-2,5 см,
    5 = 2,5-3,0 см, 6 = более 3 см",
    y = "Количество",
    fill = "Размер"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_nodle_size.png",figure1)
rm(figure1)
## Контуры узлов  --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_nodle_contours!="нет узла")
dfXlsxGr4_isNode$abus_nodle_contours <- factor(dfXlsxGr4_isNode$abus_nodle_contours, order=TRUE,
                                               levels=c("ровные",
                                                        "неровные",
                                                        "полициклические",
                                                        "четкие",
                                                        "нечеткие",
                                                        "волнистые",
                                                        "звездчатые",
                                                        "нарушение архитектоники"),
                                               labels = c("ровные" = "1",
                                                          "неровные" = "2",
                                                          "полициклические" = "3",
                                                          "четкие" = "4",
                                                          "нечеткие" = "5",
                                                          "звездчатые" = "6",
                                                          "волнистые" = "7",
                                                          "нарушение архитектоники" = "8"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_nodle_contours, fill = abus_nodle_contours))+
  geom_bar(position = "dodge")+   
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown")+
  labs(
    x= "Контуры
    1 = ровные, 2 = неровные,
    3 = полициклические, 4 = четкие,
    5 = нечеткие, 7 = звезчатые,
    6 = волнистые,
    7 = нарушение архитектоники",
    y = "Количество",
    fill = "Контур"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_nodle_contours.png",figure1)
rm(figure1)
## Эхогенность --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_echogenicity_formation!="нет узла")
dfXlsxGr4_isNode$abus_echogenicity_formation <- factor(dfXlsxGr4_isNode$abus_echogenicity_formation, order=TRUE,
                                                       levels=c("гиперэхогенное",
                                                                "гипоэхогенное",
                                                                "изоэхогенное",
                                                                "смешанная",
                                                                "анэхогенное"),
                                                       labels = c("гиперэхогенное" ="1",
                                                                  "гипоэхогенное" = "2",
                                                                  "изоэхогенное" = "3",
                                                                  "смешанная" = "4",
                                                                  "анэхогенное" = "5"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_echogenicity_formation, fill = abus_echogenicity_formation))+
  geom_bar(position = "dodge")+   
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown")+
  labs(
    x= "Эхогенность
   1 = гиперэхогенное, 2 = гипоэхогенное,
   3 = изоэхогенное, 4 = смешанная, 
    5 = анэхогенное",
    y = "Количество",
    fill = "Эхогенность"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_echogenicity_formation.png",figure1)
rm(figure1)
## Структура узлов  --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_structure!="нет узла")
dfXlsxGr4_isNode$abus_structure <- factor(dfXlsxGr4_isNode$abus_structure, order=TRUE,
                                          levels=c("однородная",
                                                   "неоднородная",
                                                   "с жидкостным содержимым",
                                                   "с кальцинатами",
                                                   "наличие внутрикистозных пристеночных разрастаний"),
                                          labels = c("однородная" = "1",
                                                     "неоднородная" = "2",
                                                     "с жидкостным содержимым" = "3",
                                                     "с кальцинатами" = "4",
                                                     "наличие внутрикистозных пристеночных разрастаний" = "5"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_structure, fill = abus_structure))+
  geom_bar(position = "dodge")+   
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown")+
  labs(
    x= "Структура узлов
    1 = однородная, 2= неоднородная,
    3 = с жидкостным содержимым, 4 = с кальцинатами,
    5 = наличие внутрикистозных пристеночных разрастаний",
    y = "Количество",
    fill = "Структура узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_structure.png",figure1)
rm(figure1)

## Количество --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4, dfXlsxGr4$abus_number_nodles != "не определяется")
dfXlsxGr4_isNode$abus_number_nodles <- factor(dfXlsxGr4_isNode$abus_number_nodles, order=TRUE,
                                              levels=c("один", 
                                                       "два", 
                                                       "три",
                                                       "множественные кисты"),
                                              labels = c("один"= "1", 
                                                         "два" = "2", 
                                                         "три" = "3",
                                                         "множественные кисты" = "4"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_number_nodles, fill = abus_number_nodles))+
  geom_bar(position = "dodge")+   geom_text(     aes(label = ..count..),     size = 6.5,     stat = "count",      vjust = -0.5,      colour = "brown"   )+
  geom_text(
    aes(label = ..count..),
    size = 6.5,
    stat = "count", 
    vjust = -0.5, 
    colour = "brown"
  )+
  labs(
    x= "Количество
        1 = один, 2 = два, 
    3 = три, 4 = множественные",
    y = "Количество",
    fill = "Количество"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_number_nodles.png",figure1)
rm(figure1)

## категория BIRADS --------------------------------------------------------------------
dfXlsxGr4_BIRADS <- dfXlsxGr4
dfXlsxGr4_BIRADS$abus_category_birads <- factor(dfXlsxGr4_BIRADS$abus_category_birads, order=TRUE,
                                                levels=c("Birads 1",
                                                         "Birads 2",
                                                         "Birads 3",
                                                         "Birads 4а",
                                                         "Birads 4b",
                                                         "Birads 4c",
                                                         "Birads 5",
                                                         "Birads 6",
                                                         "Birads 0"),
                                                labels = c("Birads 1" = "1",
                                                           "Birads 2" = "2",
                                                           "Birads 3" = "3",
                                                           "Birads 4а" = "4",
                                                           "Birads 4b" = "5" ,
                                                           "Birads 4c" = "6",
                                                           "Birads 5" = "7",
                                                           "Birads 6" = "8",
                                                           "Birads 0" = "9"))
figure1 <- ggplot(dfXlsxGr4_BIRADS, aes(x=abus_category_birads, fill = abus_category_birads))+
  geom_bar(position = "dodge")+  
  geom_text(
    aes(label = paste("n =",..count..)),
    size = 6.5,
    stat = "count", 
    vjust = -0.5, 
    colour = "brown")+
  labs(
    x = "Категория BIRADS:
    1 = Birads 1, 2 = Birads 2, 3 = Birads 3,
    4 = Birads 4а, 5 = Birads 4b, 6 = Birads 4c,
    7 = Birads 5, 8 = Birads 6, 9 = Birads 0",
    y = "Количество",
    fill = "категория BIRADS"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_category_birads.png",figure1)
rm(figure1)
## диагноз  --------------------------------------------------------------------
# ggplot(dfXlsxGr4, aes(x=abus_diagnosis, fill = abus_diagnosis))+
#   geom_bar(position = "dodge")+   geom_text(     aes(label = ..count..),     size = 6.5,     stat = "count",      vjust = -0.5,      colour = "brown"   )+
#   labs(
#     x= "Количество",
#     y = "Количество",
#     fill = "Количество"
#     
#   )+
#   theme(legend.position="top",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(1.3)),
#         axis.text = element_text(size = rel(1.3)),
#         legend.text = element_text(size = rel(1.0)),
#         legend.title=element_text(size = rel(1.3)))

## кальцинаты   --------------------------------------------------------------------
# dfXlsxGr4_calc <- subset(dfXlsxGr4,dfXlsxGr4$abus_calcinates != "нет")
# dfXlsxGr4_calc$abus_calcinates <- factor(dfXlsxGr4_calc$abus_calcinates, order=TRUE,
#                                                                levels=c("есть", 
#                                                                         "нет"),
#                                                                labels = c("есть" = "1", 
#                                                                           "нет" = "2"))
# figure1 <- ggplot(dfXlsxGr4_calc, aes(x=abus_calcinates, fill = abus_calcinates))+
#   geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
#   labs(
#     x= "Кальцинаты",
#     y = "Количество",
#     fill = "Количество"
#     
#   )+
#   theme(legend.position="top",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(1.3)),
#         axis.text = element_text(size = rel(1.3)),
#         legend.text = element_text(size = rel(1.0)),
#         legend.title=element_text(size = rel(1.3)))
# 
# figure1
# ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_calcinates.png",figure1)
# rm(figure1)
## рак --------------------------------------------------------------------
dfXlsxGr4_is_tumor <- dfXlsxGr4
dfXlsxGr4_is_tumor$abus_is_tumor <- factor(dfXlsxGr4_is_tumor$abus_is_tumor, order=TRUE,
                                           levels=c("Да", 
                                                    "Нет"),
                                           labels = c("Да" = "1", 
                                                      "Нет" = "2"))

figure1 <- ggplot(dfXlsxGr4_is_tumor, aes(x=abus_is_tumor, fill = abus_is_tumor))+
  geom_bar(position = "dodge")+
  geom_text(     
    aes(label = ..count..),     
    size = 6.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown"   )+
  labs(
    x= "Злокачественное образование
    1 = Да, 2 = Нет",
    y = "Количество",
    fill = "Количество"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_is_tumor.png",figure1)
rm(figure1)
## Наличие узла  --------------------------------------------------------------------
dfXlsxSnr_mmg_mmg_is_nodleT <- dfXlsxSnr

dfXlsxSnr_mmg_mmg_is_nodleT$mmg_is_nodle <- factor(dfXlsxSnr_mmg_mmg_is_nodleT$mmg_is_nodle, 
                                                   order=TRUE,
                                                   levels=c("Да",
                                                            "Нет"),
                                                   labels = c("Да" = "1",
                                                              "Нет" = "2"))

figure1 <- ggplot(dfXlsxSnr_mmg_mmg_is_nodleT, aes(x=group_separation, fill = mmg_is_nodle))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_is_nodle), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 - Да, 2 - Нет",
    y = "Количество",
    fill = "Наличие узла"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_mmg_is_nodleT)
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_is_nodle.png",figure1,width = 8,height = 5)
rm(figure1)
## ММГ-фон  --------------------------------------------------------------------
dfXlsxSnr_mmg_background_breasT <- dfXlsxSnr



dfXlsxSnr_mmg_background_breasT$mmg_background_breast <- factor(dfXlsxSnr_mmg_background_breasT$mmg_background_breast, 
                                                                order=TRUE,
                                                                levels=c("нормальная ткань МЖ",
                                                                         "диффузная ФКМ",
                                                                         "узловая мастопатия",
                                                                         "инволюция",
                                                                         "железистая ткань"),
                                                                labels = c("нормальная ткань МЖ" = "1",
                                                                           "диффузная ФКМ" = "2",
                                                                           "узловая мастопатия" = "3",
                                                                           "инволюция" = "4",
                                                                           "железистая ткань" = "5"))

figure1 <- ggplot(dfXlsxSnr_mmg_background_breasT, aes(x=group_separation, fill = mmg_background_breast))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_background_breast), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = нормальная ткань МЖ,
    2 = диффузная ФКМ,
    3 = узловая мастопатия,
    4 = инволюция, 5 = железистая ткань",
    y = "Количество",
    fill = "ММГ-фон "
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_background_breasT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_background_breast.png",figure1,width = 8,height = 5)
rm(figure1)

## Форма узла  --------------------------------------------------------------------
dfXlsxSnr_mmg_nodleT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_nodle!="нет узла")
dfXlsxSnr_mmg_nodleT$mmg_nodle <- factor(dfXlsxSnr_mmg_nodleT$mmg_nodle, 
                                         order=TRUE,
                                         levels=c("неровный",
                                                  "дольчатый",
                                                  "лучистый",
                                                  "ровный",
                                                  "волнистый",
                                                  "фокус уплотнения",
                                                  "участок нарушения архитектоники",
                                                  "участок уплотнения",
                                                  "образование"),
                                         labels = c("неровный" = "1",
                                                    "дольчатый" = "2",
                                                    "лучистый" = "3",
                                                    "ровный" = "4",
                                                    "волнистый" = "5",
                                                    "фокус уплотнения" = "6",
                                                    "участок нарушения архитектоники" = "7",
                                                    "участок уплотнения" = "8",
                                                    "образование" = "9"))

figure1 <- ggplot(dfXlsxSnr_mmg_nodleT, aes(x=group_separation, fill = mmg_nodle))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_nodle), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = неровный, 2 = дольчатый,
    3 = лучистый, 4 = ровный,
    5 = волнистый, 6 = фокус уплотнения,
    7 = участок нарушения архитектоники,
    8 = участок уплотнения,
    9 = образование",
    y = "Количество",
    fill = "Форма узла"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_nodleT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_nodle.png",figure1,width = 8,height = 5)
rm(figure1)

## Края узлов  --------------------------------------------------------------------
dfXlsxSnr_mmg_nodle_contourT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_nodle_contour!="нет")
dfXlsxSnr_mmg_nodle_contourT$mmg_nodle_contour <- factor(dfXlsxSnr_mmg_nodle_contourT$mmg_nodle_contour, 
                                                         order=TRUE,
                                                         levels=c("четкий",
                                                                  "нечеткий",
                                                                  "ровный",
                                                                  "размытый",
                                                                  "полициклический"),
                                                         labels = c("четкий" = "1",
                                                                    "нечеткий" = "2",
                                                                    "ровный" = "3",
                                                                    "размытый" = "4",
                                                                    "полициклический" = "5"))

figure1 <- ggplot(dfXlsxSnr_mmg_nodle_contourT, aes(x=group_separation, fill = mmg_nodle_contour))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_nodle_contour), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = четкий, 2 = нечеткий,
    3 = ровный, 4 = размытый, 
    5 = полициклический",
    y = "Количество",
    fill = "Края узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_nodle_contourT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_nodle_contour.png",figure1,width = 8,height = 5)
rm(figure1)

## Размер узлов --------------------------------------------------------------------
dfXlsxSnr_mmg_nodle_sizeT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_nodle_size!="нет")
dfXlsxSnr_mmg_nodle_sizeT$mmg_nodle_size <- factor(dfXlsxSnr_mmg_nodle_sizeT$mmg_nodle_size, 
                                                   order=TRUE,
                                                   levels=c("0,5-1,0 см",
                                                            "1,1-1,5 см",
                                                            "1,5-2,0 см",
                                                            "2,1-2,5 см",
                                                            "2,5-3,0 см",
                                                            "более 3 см"),
                                                   labels = c("0,5-1,0 см" = "1",
                                                              "1,1-1,5 см" = "2",
                                                              "1,5-2,0 см" = "3",
                                                              "2,1-2,5 см" = "4",
                                                              "2,5-3,0 см" = "5",
                                                              "более 3 см" = "6"))

figure1 <- ggplot(dfXlsxSnr_mmg_nodle_sizeT, aes(x=group_separation, fill = mmg_nodle_size))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_nodle_size), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = 0,5-1,0 см, 2 = 1,1-1,5 см,
    3 = 1,5-2,0 см, 4 = 2,1-2,5 см,
    5 = 2,5-3,0 см, 6 = более 3 см",
    y = "Количество",
    fill = "Размер узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_nodle_sizeT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_nodle_size.png",figure1,width = 8,height = 5)
rm(figure1)


## количество визуализируемых образований --------------------------------------------------------------------
dfXlsxSnr_mmg_number_formations_visualizedT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_number_formations_visualized!="не определяется")
dfXlsxSnr_mmg_number_formations_visualizedT$mmg_number_formations_visualized <- factor(dfXlsxSnr_mmg_number_formations_visualizedT$mmg_number_formations_visualized, 
                                                                                       order=TRUE,
                                                                                       levels=c("одно",
                                                                                                "два",
                                                                                                "три",
                                                                                                "четыре",
                                                                                                "участок асимметрии"),
                                                                                       labels = c("одно" = "1",
                                                                                                  "два" = "2",
                                                                                                  "три" = "3",
                                                                                                  "четыре" = "4",
                                                                                                  "участок асимметрии" = "5"))

figure1 <- ggplot(dfXlsxSnr_mmg_number_formations_visualizedT, aes(x=group_separation, fill = mmg_number_formations_visualized))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_number_formations_visualized), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = одно, 2 = два, 
    3 = три, 4 = четыре,
    5 = участок асимметрии",
    y = "Количество",
    fill = "количество визуализируемых образований"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_number_formations_visualizedT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_number_formations_visualized.png",figure1,width = 8,height = 5)
rm(figure1)

## количество узлов --------------------------------------------------------------------
dfXlsxSnr_mmg_number_nodlesT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_number_nodles!="не определяется"&
                                         dfXlsxSnr$mmg_number_nodles!="не проводилось")
dfXlsxSnr_mmg_number_nodlesT$mmg_number_nodles <- factor(dfXlsxSnr_mmg_number_nodlesT$mmg_number_nodles, 
                                                         order=TRUE,
                                                         levels=c("один",
                                                                  "два",
                                                                  "три",
                                                                  "множественные",
                                                                  "фиброзно-кистозная мастопатия"),
                                                         labels = c("один" = "1",
                                                                    "два" = "2",
                                                                    "три" = "3",
                                                                    "множественные" = "4",
                                                                    "фиброзно-кистозная мастопатия" = "5"))

figure1 <- ggplot(dfXlsxSnr_mmg_number_nodlesT, aes(x=group_separation, fill = mmg_number_nodles))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_number_nodles), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = один, 2 = два,
    3 = три, 4 = множественные, 
    5 = фиброзно-кистозная мастопатия",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_number_nodlesT)
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_number_nodles.png",figure1,width = 8,height = 5)
rm(figure1)
## Кальцификаты --------------------------------------------------------------------
dfXlsxSnr_mmg_calcificationsT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_calcifications!="нет")
dfXlsxSnr_mmg_calcificationsT$mmg_calcifications <- factor(dfXlsxSnr_mmg_calcificationsT$mmg_calcifications, 
                                                           order=TRUE,
                                                           levels=c("полиморфные",
                                                                    "единичные мелкие",
                                                                    "крупные",
                                                                    "диффузные",
                                                                    "сгруппированные",
                                                                    "микрокальцинаты",
                                                                    "разнокалиберные",
                                                                    "плеоморфные",
                                                                    "глыбчатые",
                                                                    "множественные точечные",
                                                                    "по типу пудры"),
                                                           labels = c("полиморфные" = "1",
                                                                      "единичные мелкие" = "2",
                                                                      "крупные" = "3",
                                                                      "диффузные" = "4",
                                                                      "сгруппированные" = "5",
                                                                      "микрокальцинаты" = "6",
                                                                      "разнокалиберные" = "7",
                                                                      "плеоморфные" = "8",
                                                                      "глыбчатые" = "9",
                                                                      "множественные точечные" = "10",
                                                                      "по типу пудры" = "11"))

figure1 <- ggplot(dfXlsxSnr_mmg_calcificationsT, aes(x=group_separation, fill = mmg_calcifications))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_calcifications), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = полиморфные, 2 = единичные мелкие, 
    3 = крупные, 4 = диффузные, 
    5 = сгруппированные, 6 = микрокальцинаты, 
    7 = разнокалиберные, 8 = плеоморфные,
    9 = глыбчатые, 10 =множественные точечные,
    11 = по типу пудры",
    y = "Количество",
    fill = "Кальцификаты"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_calcificationsT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_calcifications.png",figure1,width = 8,height = 5)
rm(figure1)

## категория BIRADS  --------------------------------------------------------------------
dfXlsxSnr_mmg_category_biradsT <- dfXlsxSnr

dfXlsxSnr_mmg_category_biradsT$mmg_category_birads <- factor(dfXlsxSnr_mmg_category_biradsT$mmg_category_birads, 
                                                             order=TRUE,
                                                             levels=c("Birads 1",
                                                                      "Birads 2",
                                                                      "Birads 3",
                                                                      "Birads 4а",
                                                                      "Birads 4b",
                                                                      "Birads 4c",
                                                                      "Birads 5",
                                                                      "Birads 6",
                                                                      "Birads 0"),
                                                             labels = c("Birads 1" = "1",
                                                                        "Birads 2" = "2",
                                                                        "Birads 3" = "3",
                                                                        "Birads 4а" = "4",
                                                                        "Birads 4b" = "5",
                                                                        "Birads 4c" = "6",
                                                                        "Birads 5" = "7",
                                                                        "Birads 6" = "8",
                                                                        "Birads 0" = "9"))

figure1 <- ggplot(dfXlsxSnr_mmg_category_biradsT, aes(x=group_separation, fill = mmg_category_birads))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = mmg_category_birads), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = Birads 1, 2 = Birads 2,
    3 = Birads 3, 4 = Birads 4а,
    5 = Birads 4b, 6 = Birads 4c,
    7 = Birads 5, 8 = Birads 6,
    9 = Birads 0",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_category_biradsT)
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_category_birads.png",figure1,width = 8,height = 5)
rm(figure1)

# US ----------------------------------------------------------------------
## УЗ-фон  --------------------------------------------------------------------
dfXlsxSnr_backgroundT <- dfXlsxSnr
dfXlsxSnr_backgroundT$us_background <- factor(dfXlsxSnr_backgroundT$us_background, 
                                              order=TRUE,
                                              levels=c("жировая ткань",
                                                       "железистая ткань",
                                                       "склероз",
                                                       "фиброзно-кистозная мастопатия",
                                                       "кисты",
                                                       "инволюция"),
                                              labels = c("жировая ткань" = "1",
                                                         "железистая ткань" = "2",
                                                         "склероз" = "3",
                                                         "фиброзно-кистозная мастопатия" = "4",
                                                         "кисты" = "5",
                                                         "инволюция" = "6"))

figure1 <- ggplot(dfXlsxSnr_backgroundT, aes(x=group_separation, fill = us_background))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = us_background), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),
            aes(label = paste("n =",..count..)),
            size = 4.5,
            stat = "count", 
            vjust = -0.5, 
            colour = "brown")+
  labs(
    x= "Группа
    1 = жировая ткань, 2= железистая ткань,
    3 = склероз, 4 = фиброзно-кистозная мастопатия,
    5 = кисты, 6 = инволюция",
    y = "Количество",
    fill = "УЗ-фон"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_backgroundT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_background.png",figure1)
rm(figure1)
## Расположение образования  --------------------------------------------------------------------
dfXlsxSnr_formationT <- subset(dfXlsxSnr,dfXlsxSnr$us_formation != "нет")
dfXlsxSnr_formationT$us_formation <- factor(dfXlsxSnr_formationT$us_formation, 
                                            order=TRUE,
                                            levels=c("граница",
                                                     "верхне-наружный",
                                                     "верхне-внутренний",
                                                     "нижне-наружный",
                                                     "нижне-внутренний",
                                                     "центральный отдел",
                                                     "вся железа",
                                                     "граница верхних",
                                                     "граница нижних",
                                                     "граница внутренних",
                                                     "граница наружных"),
                                            labels = c("граница" = "1",
                                                       "верхне-наружный" = "2",
                                                       "верхне-внутренний" = "3",
                                                       "нижне-наружный" = "4",
                                                       "нижне-внутренний" = "5",
                                                       "центральный отдел" = "6",
                                                       "вся железа" = "7",
                                                       "граница верхних" = "8",
                                                       "граница нижних" = "9",
                                                       "граница внутренних" = "10",
                                                       "граница наружных" = "11"))

figure1 <- ggplot(dfXlsxSnr_formationT, aes(x=group_separation, fill = us_formation))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = us_formation), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(position = position_dodge(0.9),     
            aes(label = paste("n =",..count..)),     
            size = 4.5,     
            stat = "count",      
            vjust = -0.5,      
            colour = "brown")+
  labs(
    x= "Группа
    1 = граница, 2 = верхне-наружный, 3 = верхне-внутренний,
    4 = нижне-наружный, 5 = нижне-внутренний, 6 = центральный отдел,
    7 = вся железа, 8 = граница верхних, 9 = граница нижних,
    10 = граница внутренних, 11 = граница наружных",
    y = "Количество",
    fill = "Расположение образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))


rm(dfXlsxSnr_formationT)


figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_formation.png",figure1)
rm(figure1)
## Форма образования  --------------------------------------------------------------------

dfXlsxSnr_formT <- subset(dfXlsxSnr,dfXlsxSnr$us_form != "нет узла")
dfXlsxSnr_formT$us_form <- factor(dfXlsxSnr_formT$us_form, 
                                  order=TRUE,
                                  levels=c("округлая",
                                           "овальная",
                                           "неправильная",
                                           "другое",
                                           "участок нарушения архитектоники"),
                                  labels = c("округлая" = "1",
                                             "овальная" = "2",
                                             "неправильная" = "3",
                                             "другое" = "4",
                                             "участок нарушения архитектоники" = "5"))

figure1 <- ggplot(dfXlsxSnr_formT, aes(x=group_separation, fill = us_form))+
  geom_bar(position = "dodge")+ 
  geom_label(position = position_dodge(0.9),
             aes(label = us_form), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text( position = position_dodge(0.9),    
             aes(label = paste("n =",..count..)),     
             size = 4.5,     
             stat = "count",      
             vjust = -0.5,      
             colour = "brown")+
  labs(
    x= "Группа
    1 = округлая, 2 = овальная, 
    3 = неправильная, 4 = другое,
    5 = участок нарушения архитектоники",
    y = "Количество",
    fill = "Форма образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))


rm(dfXlsxSnr_formT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_form.png",figure1)
rm(figure1)
## Размер образования --------------------------------------------------------------------

dfXlsxSnr_sizeT <- subset(dfXlsxSnr,dfXlsxSnr$us_nodle_size != "нет")
dfXlsxSnr_sizeT$us_nodle_size <- factor(dfXlsxSnr_sizeT$us_nodle_size, 
                                        order=TRUE,
                                        levels=c("0,5-1,0 см",
                                                 "1,1-1,5 см",
                                                 "1,5-2,0 см",
                                                 "2,1-2,5 см",
                                                 "2,5-3,0 см",
                                                 "более 3 см"),
                                        labels = c("0,5-1,0 см" = "1",
                                                   "1,1-1,5 см" = "2",
                                                   "1,5-2,0 см" = "3",
                                                   "2,1-2,5 см" = "4",
                                                   "2,5-3,0 см" = "5",
                                                   "более 3 см" = "6"))

figure1 <- ggplot(dfXlsxSnr_sizeT, aes(x=group_separation, fill = us_nodle_size))+
  geom_bar(position = "dodge")+
  geom_label(position = position_dodge(0.9),
             aes(label = us_nodle_size), 
             size = 6.5,
             stat = "count",      
             vjust = 1,      
             colour = "#FF33BE"
  )+
  geom_text(
    position = position_dodge(0.9),    
    aes(label = paste("n =",..count..)),       
    size = 4.5,     
    stat = "count",      
    vjust = -0.5,      
    colour = "brown")+
  labs(
    x= "Группа
    1 = 0,5-1,0 см, 2 = 1,1-1,5 см,
    3 = 1,5-2,0 см, 4 = 2,1-2,5 см, 
    5 = 2,5-3,0 см, 6 = более 3 см",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_sizeT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_nodle_size.png",figure1)
rm(figure1)
## Края образования  --------------------------------------------------------------------

dfXlsxSnr_contourT <- subset(dfXlsxSnr,dfXlsxSnr$us_nodle_contour != "нет узла")
dfXlsxSnr_contourT$us_nodle_contour <- factor(dfXlsxSnr_contourT$us_nodle_contour, 
                                              order=TRUE,
                                              levels=c("ровные",
                                                       "неровные",
                                                       "полициклические",
                                                       "звездчатые",
                                                       "единичные тяжи по одному из контуров",
                                                       "другое",
                                                       "волнистые",
                                                       "нарушение архитектоники"),
                                              labels = c("ровные" = "1",
                                                         "неровные" = "2",
                                                         "полициклические" = "3",
                                                         "звездчатые" = "4",
                                                         "единичные тяжи по одному из контуров" = "5",
                                                         "другое" = "6",
                                                         "волнистые" = "7",
                                                         "нарушение архитектоники" = "8"))

figure1 <- ggplot(dfXlsxSnr_contourT, aes(x=group_separation, fill = us_nodle_contour))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_nodle_contour),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = ровные, 2 = неровные, 3 = полициклические,
    4 = звездчатые, 5 = единичные тяжи по одному из контуров,
    6 = другое, 7 = волнистые",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
rm(dfXlsxSnr_contourT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_nodle_contour.png",figure1)
rm(figure1)
## Эхогенность образования --------------------------------------------------------------------
dfXlsxSnr_echogenicityT <- subset(dfXlsxSnr,dfXlsxSnr$us_echogenicity_formation != "нет узла")
dfXlsxSnr_echogenicityT$us_echogenicity_formation <- factor(dfXlsxSnr_echogenicityT$us_echogenicity_formation, 
                                                            order=TRUE,
                                                            levels=c("гиперэхогенное",
                                                                     "гипоэхогенное",
                                                                     "изоэхогенное",
                                                                     "смешанная",
                                                                     "анэхогенное",
                                                                     "другое"),
                                                            labels = c("гиперэхогенное" = "1",
                                                                       "гипоэхогенное" = "2",
                                                                       "изоэхогенное" = "3",
                                                                       "смешанная" = "4",
                                                                       "анэхогенное" = "5",
                                                                       "другое" = "6"))

figure1 <- ggplot(dfXlsxSnr_echogenicityT, aes(x=group_separation, fill = us_echogenicity_formation))+
  geom_bar(position = "dodge")+   
  geom_label(
    position = position_dodge(0.9),              
    aes(label = us_echogenicity_formation),               
    size = 6.5,              
    stat = "count",                    
    vjust = 1,                    
    colour = "#FF33BE")+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = гиперэхогенное, 2 = гипоэхогенное, 
    3 = изоэхогенное, 4 = смешанная, 
    5 = анэхогенное, 6 = другое",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_echogenicityT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_echogenicity_formation.png",figure1)
rm(figure1)
## УЗ-структура образования --------------------------------------------------------------------

dfXlsxSnr_structureT <- subset(dfXlsxSnr,dfXlsxSnr$us_structure != "нет узла")
dfXlsxSnr_structureT$us_structure <- factor(dfXlsxSnr_structureT$us_structure, 
                                            order=TRUE,
                                            levels=c("однородная",
                                                     "неоднородная",
                                                     "с жидкостным содержимым",
                                                     "с кальцинатами",
                                                     "наличие внутрикистозных пристеночных разрастаний",
                                                     "другое"), 
                                            labels = c("однородная" = "1",
                                                       "неоднородная" = "2",
                                                       "с жидкостным содержимым" = "3",
                                                       "с кальцинатами" = "4",
                                                       "наличие внутрикистозных пристеночных разрастаний" = "5",
                                                       "другое" = "6"))

figure1 <- ggplot(dfXlsxSnr_structureT, 
                  aes(x=group_separation, 
                      fill = us_structure))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_structure),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE")+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = однородная, 2 = неоднородная, 
    3 = с жидкостным содержимым, 4 = с кальцинатами,
    5 = наличие внутрикистозных пристеночных разрастаний, 
    6 = другое",
    y = "Количество",
    fill = "УЗ-структура образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_structureT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_structure.png",figure1)
rm(figure1)
## Количество узлов --------------------------------------------------------------------
dfXlsxSnr_numberT <- subset(dfXlsxSnr,dfXlsxSnr$us_number_nodles != "не определяется")
dfXlsxSnr_numberT$us_number_nodles <- factor(dfXlsxSnr_numberT$us_number_nodles, 
                                             order=TRUE,
                                             levels=c("один",
                                                      "два",
                                                      "три",
                                                      "множественные кисты"),
                                             labels = c("один" = "1",
                                                        "два" = "2",
                                                        "три" = "3",
                                                        "множественные кисты" = "4"))

figure1 <- ggplot(dfXlsxSnr_numberT, aes(x=group_separation, fill = us_number_nodles))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_number_nodles),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE")+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = один, 2 = два,
    3 = три, 4 = множественные кисты",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_numberT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_number_nodles.png",figure1)
rm(figure1)
## Кровоток в образовании  --------------------------------------------------------------------

dfXlsxSnr_bloodT <- subset(dfXlsxSnr,dfXlsxSnr$us_formation_blood_flow != "нет")
dfXlsxSnr_bloodT$us_formation_blood_flow <- factor(dfXlsxSnr_bloodT$us_formation_blood_flow, 
                                                   order=TRUE,
                                                   levels=c("определяются внутри",
                                                            "по периферии",
                                                            "не определяется",
                                                            "интранодулярный",
                                                            "перинодулярный",
                                                            "смешанный"),
                                                   labels = c("определяются внутри" = "1",
                                                              "по периферии" = "2",
                                                              "не определяется" = "3",
                                                              "интранодулярный" = "4",
                                                              "перинодулярный" = "5",
                                                              "смешанный" = "6"))

figure1 <- ggplot(dfXlsxSnr_bloodT, aes(x=group_separation, fill = us_formation_blood_flow))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_formation_blood_flow),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = определяются внутри, 2 = по периферии,
    3 = не определяется, 4 = интранодулярный, 
    5 = перинодулярный, 6 = смешанный",
    y = "Количество",
    fill = "Кровоток в образовании"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_bloodT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_formation_blood_flow.png",figure1)
rm(figure1)

## Эластография  --------------------------------------------------------------------
dfXlsxSnr_elastT <- dfXlsxSnr
dfXlsxSnr_elastT$us_elastography <- factor(dfXlsxSnr_elastT$us_elastography, 
                                           order=TRUE,
                                           levels=c("0 эластотип",
                                                    "1 эластотип",
                                                    "2 эластотип",
                                                    "3 эластотип",
                                                    "4 эластотип",
                                                    "нет данных"),
                                           labels = c("0 эластотип" = "1",
                                                      "1 эластотип" = "2",
                                                      "2 эластотип" = "3",
                                                      "3 эластотип" = "4",
                                                      "4 эластотип" = "5",
                                                      "нет данных" = "6"))

figure1 <- ggplot(dfXlsxSnr_elastT, aes(x=group_separation, fill = us_elastography))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_elastography),               
             size = 6.5,              
             stat = "count",                   
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = 0 эластотип, 2 = 1 эластотип,
    2 = 2 эластотип, 4 = 3 эластотип, 
    5 = 4 эластотип, 6 = нет данных",
    y = "Количество",
    fill = "Тип"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))



rm(dfXlsxSnr_elastT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_elastography.png",figure1)
rm(figure1)

## Регионарные лимфоузлы  --------------------------------------------------------------------
dfXlsxSnr_lymphT <- dfXlsxSnr
dfXlsxSnr_lymphT$us_region_lymph_nodes <- factor(dfXlsxSnr_lymphT$us_region_lymph_nodes, 
                                                 order=TRUE,
                                                 levels=c("не изменены",
                                                          "правая надключичная область",
                                                          "левая надключичная область",
                                                          "правая подключичная область",
                                                          "левая подключичная область",
                                                          "правая подмышечная область",
                                                          "левая подмышечная область"),
                                                 labels = c("не изменены" = "1",
                                                            "правая надключичная область" = "2",
                                                            "левая надключичная область" = "3",
                                                            "правая подключичная область" = "4",
                                                            "левая подключичная область" = "5",
                                                            "правая подмышечная область" = "6",
                                                            "левая подмышечная область" = "7"))
figure1 <- ggplot(dfXlsxSnr_lymphT, aes(x=group_separation, fill = us_region_lymph_nodes))+
  geom_bar(position = "dodge")+   geom_label(position = position_dodge(0.9),              
                                             aes(label = us_region_lymph_nodes),               
                                             size = 6.5,              
                                             stat = "count",                    
                                             vjust = 1,                    
                                             colour = "#FF33BE"   )+    
  geom_text(     position = position_dodge(0.9),         
                 aes(label = paste("n =",..count..)),            
                 size = 4.5,          
                 stat = "count",           
                 vjust = -0.5,           
                 colour = "brown")+
  labs(
    x= "Группа
    1 = не изменены, 2 = правая надключичная область,
    3 = левая надключичная область, 4 = правая подключичная область, 
    5 = левая подключичная область, 6 = правая подмышечная область,
    7 = левая подмышечная область",
    y = "Количество",
    fill = "Регионарные лимфоузлы"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_lymphT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_region_lymph_nodes.png",figure1)
rm(figure1)
## Определение категории BI-RADS  --------------------------------------------------------------------
dfXlsxSnr_BIRADS <- dfXlsxSnr
dfXlsxSnr_BIRADS$us_category_birads <- factor(dfXlsxSnr_BIRADS$us_category_birads, order=TRUE,
                                              levels=c("Birads 1",
                                                       "Birads 2",
                                                       "Birads 3",
                                                       "Birads 4а",
                                                       "Birads 4b",
                                                       "Birads 4c",
                                                       "Birads 5",
                                                       "Birads 6",
                                                       "Birads 0"),
                                              labels =c("Birads 1" = "1",
                                                        "Birads 2" = "2",
                                                        "Birads 3" = "3",
                                                        "Birads 4а" = "4",
                                                        "Birads 4b" = "5",
                                                        "Birads 4c" = "6",
                                                        "Birads 5" = "7",
                                                        "Birads 6" = "8",
                                                        "Birads 0" = "9"))

figure1 <- ggplot(dfXlsxSnr_BIRADS, aes(x=group_separation, fill = us_category_birads))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_category_birads),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",          
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = Birads 1, 2 = Birads 2, 3 = Birads 3,
    4 = Birads 4а, 5 = Birads 4b, 6 = Birads 4c,
    7 = Birads 5, 8 = Birads 6, 9 = Birads 0",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_category_birads.png",figure1)
rm(figure1)
## Кальциаты  --------------------------------------------------------------------

# dfXlsxSnr_calcT <-  subset(dfXlsxSnr,dfXlsxSnr$us_calcinates_micro_pure !="нет")
# dfXlsxSnr_calcT$us_calcinates_micro_pure <- factor(dfXlsxSnr_calcT$us_calcinates_micro_pure, 
#                                                    order=TRUE,
#                                                    levels=c("макрокальцинаты","микрокальцинаты"))
# figure1 <- ggplot(dfXlsxSnr_calcT, aes(x=group_separation, fill = us_calcinates_micro_pure))+
#   geom_bar(position = "dodge")+   geom_label(position = position_dodge(0.9),              aes(label = us_nodle_size),               size = 6.5,              stat = "count",                    vjust = 1,                    colour = "#FF33BE"   )+    geom_text(     position = position_dodge(0.9),         aes(label = paste("n =",..count..)),            size = 4.5,          stat = "count",           vjust = -0.5,           colour = "brown")+
#   labs(
#     x= "Группа",
#     y = "Количество",
#     fill = "Кальциаты"
#     
#   )+
#   theme(legend.position="none",
#         axis.title.y = element_text(size = rel(1.3)),
#         axis.title.x = element_text(size = rel(2)),
#         axis.text = element_text(size = 20),
#         legend.text = element_text(size = 6.5),
#         legend.title=element_text(size = rel(1.3)))
# 
# rm(dfXlsxSnr_calcT)
# 
# figure1
# ggsave("./XLXS_ver1/04_chapter_4/img/US/us_calcinates_micro_pure.png",figure1)
# rm(figure1)
## рак --------------------------------------------------------------------
dfXlsxSnr_us_is_tumorT <- dfXlsxSnr
dfXlsxSnr_us_is_tumorT$us_is_tumor <- factor(dfXlsxSnr_us_is_tumorT$us_is_tumor, order=TRUE,
                                             levels=c("Да",
                                                      "Нет"),
                                             labels =c("Да" = "1",
                                                       "Нет" = "2"))
figure1 <- ggplot(dfXlsxSnr_us_is_tumorT, aes(x=us_is_tumor, fill = us_is_tumor))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = us_is_tumor),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Злокачественное образование
    1= Да, 2 = Нет",
    y = "Количество",
    fill = "Злокачественное образование по УЗИ"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_is_tumor.png",figure1)
rm(figure1)
# MRSI --------------------------------------------------------------------

## Данные МРТ исследования --------------------------------------------------------------------
dfXlsxSnr_mrsi_dataT <- subset(dfXlsxSnr,dfXlsxSnr$mrsi_data !="не проводилось")
dfXlsxSnr_mrsi_dataT$mrsi_data <- factor(dfXlsxSnr_mrsi_dataT$mrsi_data, 
                                         order=TRUE,
                                         levels=c("интраммарные лимфоузлы",
                                                  "сегментарно-протоковая зона контрастирования"),
                                         labels = c("интраммарные лимфоузлы" = "1",
                                                    "сегментарно-протоковая зона контрастирования" = "2"))
figure1 <- ggplot(dfXlsxSnr_mrsi_dataT, aes(x=group_separation, fill = mrsi_data))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = mrsi_data),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = интраммарные лимфоузлы, 
    2 = сегментарно-протоковая зона контрастирования",
    y = "Количество",
    fill = "Данные МРТ исследования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mrsi_dataT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MRSI/mrsi_data.png",figure1)
rm(figure1)
## Количество узлов на МРТ --------------------------------------------------------------------


dfXlsxSnr_mrsi_nodlesT <- subset(dfXlsxSnr,dfXlsxSnr$mrsi_number_nodles !="не проводилось")
dfXlsxSnr_mrsi_nodlesT$mrsi_number_nodles <- factor(dfXlsxSnr_mrsi_nodlesT$mrsi_number_nodles, 
                                                    order=TRUE,
                                                    levels=c("не определяется",
                                                             "один",
                                                             "два",
                                                             "три",
                                                             "множественные",
                                                             "сегментарно-очаговая зона контрастирования"),
                                                    labels = c("не определяется" = "1",
                                                               "один" = "2",
                                                               "два" = "3",
                                                               "три" = "4",
                                                               "множественные" = "5",
                                                               "сегментарно-очаговая зона контрастирования" = "6"))
figure1 <- ggplot(dfXlsxSnr_mrsi_nodlesT, aes(x=group_separation, fill = mrsi_number_nodles))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = mrsi_number_nodles),             
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = не определяется, 2 = один,
    3 = два, 4 = три, 5 = множественные,
    6 = сегментарно-очаговая зона контрастирования",
    y = "Количество",
    fill = "Количество узлов на МРТ"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mrsi_nodlesT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MRSI/mrsi_number_nodles.png",figure1)
rm(figure1)

# Hist --------------------------------------------------------------------



## Морфологическая структура --------------------------------------------------------------------
dfXlsxSnr_morf <-  subset(dfXlsxSnr,dfXlsxSnr$tumor_morphology_structure !="не проводилось")
dfXlsxSnr_morf$tumor_morphology_structure <- factor(dfXlsxSnr_morf$tumor_morphology_structure, order=TRUE,
                                                    levels=c("инвазивный рак неспециального типа",
                                                             "периканаликулярная фиброаденома",
                                                             "склерозирующий аденоз",
                                                             "фиброз стромы с гиалинозом",
                                                             "фиброаденома",
                                                             "миксоидная фиброаденома",
                                                             "протоковый рак in situ",
                                                             "инвазивный дольковый рак",
                                                             "ткань молочной железы с фиброзом стромы",
                                                             "интраканаликулярная фиброаденома",
                                                             "нелактационный мастит",
                                                             "очаговый аденоз",
                                                             "фиброаденома с гиперплазией флоридного типа"),
                                                    labels = c("инвазивный рак неспециального типа" = "1",
                                                               "периканаликулярная фиброаденома" = "2",
                                                               "склерозирующий аденоз" = "3",
                                                               "фиброз стромы с гиалинозом" = "4",
                                                               "фиброаденома" = "5",
                                                               "миксоидная фиброаденома" = "6",
                                                               "протоковый рак in situ" = "7",
                                                               "инвазивный дольковый рак" = "8",
                                                               "ткань молочной железы с фиброзом стромы" = "9",
                                                               "интраканаликулярная фиброаденома" = "10",
                                                               "нелактационный мастит" = "11",
                                                               "очаговый аденоз" = "12",
                                                               "фиброаденома с гиперплазией флоридного типа" = "13"))
figure1 <- ggplot(dfXlsxSnr_morf, aes(x=group_separation, fill = tumor_morphology_structure))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = tumor_morphology_structure),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Количество
    1 = инвазивный рак неспециального типа, 
    2 = периканаликулярная фиброаденома,
    3 = склерозирующий аденоз, 4 = фиброз стромы с гиалинозом,
    5 = фиброаденома, 6 = миксоидная фиброаденома,
    7 = протоковый рак in situ, 8 = инвазивный дольковый рак,
    9 = ткань молочной железы с фиброзом стромы, 
    10 = интраканаликулярная фиброаденома,
    11 = нелактационный мастит, 12 = очаговый аденоз,
    12 = фиброаденома с гиперплазией флоридного типа",
    y = "Количество",
    fill = "Морфологическая структура"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_morf)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/tumor_morphology_structure.png",figure1)
rm(figure1)
## Цитологическое заключение --------------------------------------------------------------------
dfXlsxSnr_cyt<-  subset(dfXlsxSnr,dfXlsxSnr$cytological_conclusion !="не проводилось")
dfXlsxSnr_cyt$cytological_conclusion <- factor(dfXlsxSnr_cyt$cytological_conclusion, order=TRUE,
                                               levels=c("интрадуктальная папиллома",
                                                        "цистаденопапиллома",
                                                        "фиброзно-кистозные изменения",
                                                        "белковая субстанция, капли жира",
                                                        "фиброаденома",
                                                        "фиброзно- кистозный характер изменений"),
                                               labels = c("интрадуктальная папиллома" = "1",
                                                          "цистаденопапиллома" = "2",
                                                          "фиброзно-кистозные изменения" = "3",
                                                          "белковая субстанция, капли жира" = "4",
                                                          "фиброаденома" = "5",
                                                          "фиброзно- кистозный характер изменений" = "6"))
figure1 <- ggplot(dfXlsxSnr_cyt, aes(x=group_separation, fill = cytological_conclusion))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = cytological_conclusion),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группы
    1 = интрадуктальная папиллома, 2 = цистаденопапиллома,
    3 = фиброзно-кистозные изменения, 
    4 = белковая субстанция, капли жира,
    5 = фиброаденома, 
    6 = фиброзно- кистозный характер изменений",
    y = "Количество",
    fill = "Цитологическое заключение"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_cyt)
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/cytological_conclusion.png",figure1)
rm(figure1)
## Рецепторы опухоли --------------------------------------------------------------------
dfXlsxSnr_tumor_receptorsT <- subset(dfXlsxSnr,dfXlsxSnr$tumor_receptors !="не проводилось")
dfXlsxSnr_tumor_receptorsT$tumor_receptors <- factor(dfXlsxSnr_tumor_receptorsT$tumor_receptors, 
                                                     order=TRUE,
                                                     levels=c( "РП",
                                                               "Her-2_neu",
                                                               "РЭ+РП+Her-2_neu негатив",
                                                               "РЭ+Her2_neu",
                                                               "РЭ+РП+Her-2_neu",
                                                               "негатив"),                                                     ,
                                                     labels =c( "РП" = "1",
                                                                "Her-2_neu" = "2",
                                                                "РЭ+РП+Her-2_neu негатив" = "3",
                                                                "РЭ+Her2_neu" = "4",
                                                                "РЭ+РП+Her-2_neu" = "5",
                                                                "негатив" = "6"))
figure1 <- ggplot(dfXlsxSnr_tumor_receptorsT, aes(x=group_separation, fill = tumor_receptors))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = tumor_receptors),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE")+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = РП, 2 = Her-2/neu,
    3 = РЭ+РП+Her-2/neu негатив, 
    4 = РЭ+Her2/neu, 
    5 = РЭ+РП+Her-2/neu, 6 = негатив",
    y = "Количество",
    fill = "Рецепторы опухоли"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_tumor_receptorsT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/tumor_receptors.png",figure1)
rm(figure1)
## Гистологическое поддтверждение злокачественного новообразования --------------------------------------------------------------------
dfXlsxSnr_hist_is_tumor <- dfXlsxSnr
dfXlsxSnr_hist_is_tumor$hist_is_tumor <- factor(dfXlsxSnr_hist_is_tumor$hist_is_tumor, order=TRUE,
                                                levels=c("Да", 
                                                         "Нет"),
                                                labels = c("Да" = "1", 
                                                           "Нет" = "2"))

figure1 <- ggplot(dfXlsxSnr_hist_is_tumor, aes(x=group_separation, fill = hist_is_tumor))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = hist_is_tumor),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     position = position_dodge(0.9),         
                 aes(label = paste("n =",..count..)),            
                 size = 4.5,          
                 stat = "count",           
                 vjust = -0.5,           
                 colour = "brown")+
  labs(
    x= "Группа
    1= Да, 2 = Нет",
    y = "Количество",
    fill = "Гистологическое поддтверждение"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/hist_is_tumor.png",figure1)
rm(figure1)
## Определение злокачественности новообразования --------------------------------------------------------------------


dfXlsxSnr_tumor_malignancyT <- subset(dfXlsxSnr,dfXlsxSnr$degree_malignancy !="не проводилось")
dfXlsxSnr_tumor_malignancyT$degree_malignancy <- factor(dfXlsxSnr_tumor_malignancyT$degree_malignancy, 
                                                        order=TRUE,
                                                        levels=c( "I (низкая 3-5 бал)",
                                                                  "II (умеренная 6-7 балов)",
                                                                  "III(высокая 8-9 бал)"),
                                                        labels =c( "I (низкая 3-5 бал)" = "1",
                                                                   "II (умеренная 6-7 балов)" = "2",
                                                                   "III(высокая 8-9 бал)" = "3"))
figure1 <- ggplot(dfXlsxSnr_tumor_malignancyT, aes(x=group_separation, fill = degree_malignancy))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),              
             aes(label = degree_malignancy),               
             size = 6.5,              
             stat = "count",                    
             vjust = 1,                    
             colour = "#FF33BE"   )+    
  geom_text(     
    position = position_dodge(0.9),         
    aes(label = paste("n =",..count..)),            
    size = 4.5,          
    stat = "count",           
    vjust = -0.5,           
    colour = "brown")+
  labs(
    x= "Группа
    1 = I (низкая 3-5 бал),
    2 = II (умеренная 6-7 балов),
    3 = III(высокая 8-9 бал)",
    y = "Количество",
    fill = "Злокачественность новообразования "
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_tumor_malignancyT)


figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/degree_malignancy.png",figure1)
rm(figure1)
