library(tidyverse)



# ABUS --------------------------------------------------------------------

## Симптом ретракции  --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxGr4, aes(x=abus_symptom_retraction, fill = abus_symptom_retraction))+
  geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
  labs(
    x= "Наличие симптома ретракции",
    y = "Количество",
    fill = "Симптом ретракции"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.3)),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_symptom_retraction.png",figure1)
rm(figure1)
## Размеры узлов  --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_nodle_size!="нет")
dfXlsxGr4_isNode$abus_nodle_size <- factor(dfXlsxGr4_isNode$abus_nodle_size, order=TRUE,
                                           levels=c("0,5-1,0 см", "1,1-1,5 см", "1,5-2,0 см","2,1-2,5 см","2,5-3,0 см","более 3 см"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_nodle_size, fill = abus_nodle_size))+
  geom_bar(position = "dodge")+
  labs(
    x= "Размер",
    y = "Количество",
    fill = "Размер"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.3)),
        legend.title=element_text(size = rel(1.3)))
# rm(dfXlsxGr4_isNode)
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
                                                        "нарушение архитектоники"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_nodle_contours, fill = abus_nodle_contours))+
  geom_bar(position = "dodge")+
  labs(
    x= "Контур",
    y = "Количество",
    fill = "Контур"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                                "анэхогенное"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_echogenicity_formation, fill = abus_echogenicity_formation))+
  geom_bar(position = "dodge")+
  labs(
    x= "Эхогенность",
    y = "Количество",
    fill = "Эхогенность"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                   "наличие внутрикистозных пристеночных разрастаний"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_structure, fill = abus_structure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Структура узлов",
    y = "Количество",
    fill = "Структура узлов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = 10,hjust  = 0.3),
        axis.title.x = element_text(size=10),
        axis.text.x = element_text(size=8),
        legend.text = element_text(size = 10),
        legend.title=element_text(size = 13))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_structure.png",figure1)
rm(figure1)

## Количество --------------------------------------------------------------------
dfXlsxGr4_isNode <- subset(dfXlsxGr4,dfXlsxGr4$abus_number_nodles!="не определяется")
dfXlsxGr4_isNode$abus_number_nodles <- factor(dfXlsxGr4_isNode$abus_number_nodles, order=TRUE,
                                              levels=c("один", "два", "три","множественные"))
figure1 <- ggplot(dfXlsxGr4_isNode, aes(x=abus_number_nodles, fill = abus_number_nodles))+
  geom_bar(position = "dodge")+
  labs(
    x= "Количество",
    y = "Количество",
    fill = "Количество"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                         "Birads 0"))
figure1 <- ggplot(dfXlsxGr4_BIRADS, aes(x=abus_category_birads, fill = abus_category_birads))+
  geom_bar(position = "dodge")+
  labs(
    x= "категория BIRADS",
    y = "Количество",
    fill = "категория BIRADS"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_category_birads.png",figure1)
rm(figure1)
## диагноз  --------------------------------------------------------------------
# ggplot(dfXlsxGr4, aes(x=abus_diagnosis, fill = abus_diagnosis))+
#   geom_bar(position = "dodge")+
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
dfXlsxGr4_calc <- subset(dfXlsxGr4,dfXlsxGr4$abus_calcinates != "нет")
figure1 <- ggplot(dfXlsxGr4_calc, aes(x=abus_calcinates, fill = abus_calcinates))+
  geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
  labs(
    x= "Кальцинаты",
    y = "Количество",
    fill = "Количество"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_calcinates.png",figure1)
rm(figure1)
## рак --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxGr4, aes(x=abus_is_tumor, fill = abus_is_tumor))+
  geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
  labs(
    x= "Злокачественное образование",
    y = "Количество",
    fill = "Количество"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))
figure1
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_is_tumor.png",figure1)
rm(figure1)
# MMG ----------------------------------------------------------------------
## ММГ-фон  --------------------------------------------------------------------
dfXlsxSnr_mmg_background_breasT <- dfXlsxSnr



dfXlsxSnr_mmg_background_breasT$mmg_background_breast <- factor(dfXlsxSnr_mmg_background_breasT$mmg_background_breast, 
                                              order=TRUE,
                                              levels=c("нормальная ткань МЖ",
                                                       "диффузная ФКМ",
                                                       "узловая мастопатия",
                                                       "инволюция",
                                                       "железистая ткань"))

figure1 <- ggplot(dfXlsxSnr_mmg_background_breasT, aes(x=group_separation, fill = mmg_background_breast))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "ММГ-фон "
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_background_breasT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_background_breast.png",figure1)
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
                                                                         "образование"))

figure1 <- ggplot(dfXlsxSnr_mmg_nodleT, aes(x=group_separation, fill = mmg_nodle))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Форма узла"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_nodleT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_nodle.png",figure1)
rm(figure1)

## Края узлов  --------------------------------------------------------------------
dfXlsxSnr_mmg_nodle_contourT <- subset(dfXlsxSnr,dfXlsxSnr$mmg_nodle_contour!="нет")
dfXlsxSnr_mmg_nodle_contourT$mmg_nodle_contour <- factor(dfXlsxSnr_mmg_nodle_contourT$mmg_nodle_contour, 
                                         order=TRUE,
                                         levels=c("четкий",
                                                  "нечеткий",
                                                  "ровный",
                                                  "размытый",
                                                  "полициклический"))

figure1 <- ggplot(dfXlsxSnr_mmg_nodle_contourT, aes(x=group_separation, fill = mmg_nodle_contour))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Края узлов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mmg_nodle_contourT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/MMG/mmg_nodle_contour.png",figure1)
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
                                                       "инволюция"))

figure1 <- ggplot(dfXlsxSnr_backgroundT, aes(x=group_separation, fill = us_background))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "УЗ-фон"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                     "граница наружных"))

figure1 <- ggplot(dfXlsxSnr_formationT, aes(x=group_separation, fill = us_formation))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Расположение образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                           "участок нарушения архитектоники"))

figure1 <- ggplot(dfXlsxSnr_formT, aes(x=group_separation, fill = us_form))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Форма образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                 "более 3 см"))

figure1 <- ggplot(dfXlsxSnr_sizeT, aes(x=group_separation, fill = us_nodle_size))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                       "нарушение архитектоники"))

figure1 <- ggplot(dfXlsxSnr_contourT, aes(x=group_separation, fill = us_nodle_contour))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                                     "другое"))

figure1 <- ggplot(dfXlsxSnr_echogenicityT, aes(x=group_separation, fill = us_echogenicity_formation))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                     "другое"))

figure1 <- ggplot(dfXlsxSnr_structureT, aes(x=group_separation, fill = us_structure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "УЗ-структура образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_structureT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_structure.png",figure1)
rm(figure1)
## Количество узлов --------------------------------------------------------------------
dfXlsxSnr_numberT <- subset(dfXlsxSnr,dfXlsxSnr$us_number_nodles != "не определяется")
dfXlsxSnr_numberT$us_number_nodles <- factor(dfXlsxSnr_numberT$us_number_nodles, 
                                             order=TRUE,
                                             levels=c("не определяется",
                                                      "один",
                                                      "два",
                                                      "три",
                                                      "множественные кисты"))

figure1 <- ggplot(dfXlsxSnr_numberT, aes(x=group_separation, fill = us_number_nodles))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                            "смешанный"))

figure1 <- ggplot(dfXlsxSnr_bloodT, aes(x=group_separation, fill = us_formation_blood_flow))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Кровоток в образовании"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                    "нет данных"))

figure1 <- ggplot(dfXlsxSnr_elastT, aes(x=group_separation, fill = us_elastography))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Тип"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                          "левая подмышечная область"))
figure1 <- ggplot(dfXlsxSnr_lymphT, aes(x=group_separation, fill = us_region_lymph_nodes))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Регионарные лимфоузлы"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                       "Birads 0"))

figure1 <- ggplot(dfXlsxSnr_BIRADS, aes(x=group_separation, fill = us_category_birads))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_category_birads.png",figure1)
rm(figure1)
## Кальциаты  --------------------------------------------------------------------

dfXlsxSnr_calcT <-  subset(dfXlsxSnr,dfXlsxSnr$us_calcinates_micro_pure !="нет")
dfXlsxSnr_calcT$us_calcinates_micro_pure <- factor(dfXlsxSnr_calcT$us_calcinates_micro_pure, 
                                                   order=TRUE,
                                                   levels=c("макрокальцинаты","микрокальцинаты"))
figure1 <- ggplot(dfXlsxSnr_calcT, aes(x=group_separation, fill = us_calcinates_micro_pure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Кальциаты"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_calcT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/US/us_calcinates_micro_pure.png",figure1)
rm(figure1)
## рак --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxSnr, aes(x=us_is_tumor, fill = us_is_tumor))+
  geom_bar(fill = c("hotpink3","skyblue"),position = "dodge")+
  labs(
    x= "Злокачественное образование",
    y = "Количество",
    fill = "Злокачественное образование по УЗИ"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                  "сегментарно-протоковая зона контрастирования"))
figure1 <- ggplot(dfXlsxSnr_mrsi_dataT, aes(x=group_separation, fill = mrsi_data))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Данные МРТ исследования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                             "сегментарно-очаговая зона контрастирования"))
figure1 <- ggplot(dfXlsxSnr_mrsi_nodlesT, aes(x=group_separation, fill = mrsi_number_nodles))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Количество узлов на МРТ"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                             "фиброаденома с гиперплазией флоридного типа"))
figure1 <- ggplot(dfXlsxSnr_morf, aes(x=group_separation, fill = tumor_morphology_structure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Количество",
    y = "Количество",
    fill = "Морфологическая структура"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                        "фиброзно- кистозный характер изменений"))
figure1 <- ggplot(dfXlsxSnr_cyt, aes(x=group_separation, fill = cytological_conclusion))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группы",
    y = "Количество",
    fill = "Цитологическое заключение"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                               "негатив"))
figure1 <- ggplot(dfXlsxSnr_tumor_receptorsT, aes(x=group_separation, fill = tumor_receptors))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Рецепторы опухоли"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_tumor_receptorsT)

figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/tumor_receptors.png",figure1)
rm(figure1)
## Гистологическое поддтверждение злокачественного новообразования --------------------------------------------------------------------

figure1 <- ggplot(dfXlsxSnr, aes(x=group_separation, fill = hist_is_tumor))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Гистологическое поддтверждение"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
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
                                                                  "III(высокая 8-9 бал)"))
figure1 <- ggplot(dfXlsxSnr_tumor_malignancyT, aes(x=group_separation, fill = degree_malignancy))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Злокачественность новообразования "
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_tumor_malignancyT)


figure1
ggsave("./XLXS_ver1/04_chapter_4/img/Hist/degree_malignancy.png",figure1)
rm(figure1)