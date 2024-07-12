library(tidyverse)



# ABUS --------------------------------------------------------------------

  ## Симптом ретракции  --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxGr3, aes(x=abus_symptom_retraction, fill = abus_symptom_retraction))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_symptom_retraction.png",figure1)
rm(figure1)
  ## Размеры узлов  --------------------------------------------------------------------
dfXlsxGr3_isNode <- subset(dfXlsxGr3,dfXlsxGr3$abus_nodle_size!="нет")
dfXlsxGr3_isNode$abus_nodle_size <- factor(dfXlsxGr3_isNode$abus_nodle_size, order=TRUE,
                                              levels=c("0,5-1,0 см", "1,1-1,5 см", "1,5-2,0 см","2,1-2,5 см","2,5-3,0 см","более 3 см"))
figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_nodle_size, fill = abus_nodle_size))+
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
# rm(dfXlsxGr3_isNode)
figure1
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_nodle_size.png",figure1)
rm(figure1)
  ## Контуры узлов  --------------------------------------------------------------------
dfXlsxGr3_isNode$abus_nodle_contours <- factor(dfXlsxGr3_isNode$abus_nodle_contours, order=TRUE,
                                           levels=c("ровные",
                                                    "неровные",
                                                    "полициклические",
                                                    "четкие",
                                                    "нечеткие",
                                                    "волнистые",
                                                    "нарушение архитектоники"))
figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_nodle_contours, fill = abus_nodle_contours))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_nodle_contours.png",figure1)
rm(figure1)
  ## Эхогенность --------------------------------------------------------------------
dfXlsxGr3_isNode$abus_echogenicity_formation <- factor(dfXlsxGr3_isNode$abus_echogenicity_formation, order=TRUE,
                                               levels=c("гиперэхогенное",
                                                        "гипоэхогенное",
                                                        "изоэхогенное",
                                                        "смешанная",
                                                        "анэхогенное"))
figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_echogenicity_formation, fill = abus_echogenicity_formation))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_echogenicity_formation.png",figure1)
rm(figure1)
## Структура узлов  --------------------------------------------------------------------
dfXlsxGr3_isNode$abus_structure <- factor(dfXlsxGr3_isNode$abus_structure, order=TRUE,
                                                       levels=c("однородная",
                                                                "неоднородная",
                                                                "с жидкостным содержимым",
                                                                "с кальцинатами",
                                                                "наличие внутрикистозных пристеночных разрастаний"))
figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_structure, fill = abus_structure))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_structure.png",figure1)
rm(figure1)

## Количество --------------------------------------------------------------------
dfXlsxGr3_isNode$abus_number_nodles <- factor(dfXlsxGr3_isNode$abus_number_nodles, order=TRUE,
                                              levels=c("один", "два", "три","множественные"))
figure1 <- ggplot(dfXlsxGr3_isNode, aes(x=abus_number_nodles, fill = abus_number_nodles))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_number_nodles.png",figure1)
rm(figure1)

## категория BIRADS --------------------------------------------------------------------
dfXlsxGr3_BIRADS <- dfXlsxGr3
dfXlsxGr3_BIRADS$abus_category_birads <- factor(dfXlsxGr3_BIRADS$abus_category_birads, order=TRUE,
                                                levels=c("Birads 1",
                                                         "Birads 2",
                                                         "Birads 3",
                                                         "Birads 4а",
                                                         "Birads 4b",
                                                         "Birads 4c",
                                                         "Birads 5",
                                                         "Birads 6",
                                                         "Birads 0"))
figure1 <- ggplot(dfXlsxGr3_BIRADS, aes(x=abus_category_birads, fill = abus_category_birads))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_category_birads.png",figure1)
rm(figure1)
## диагноз  --------------------------------------------------------------------
# ggplot(dfXlsxGr3, aes(x=abus_diagnosis, fill = abus_diagnosis))+
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
dfXlsxGr3_calc <- subset(dfXlsxGr3,dfXlsxGr3$abus_calcinates != "нет")
figure1 <- ggplot(dfXlsxGr3_calc, aes(x=abus_calcinates, fill = abus_calcinates))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_calcinates.png",figure1)
rm(figure1)
## рак --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxGr3, aes(x=abus_is_tumor, fill = abus_is_tumor))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/ABUS/abus_is_tumor.png",figure1)
rm(figure1)
# US ----------------------------------------------------------------------
## УЗ-фон  --------------------------------------------------------------------
dfXlsxJun_backgroundT <- dfXlsxJun
dfXlsxJun_backgroundT$us_background <- factor(dfXlsxJun_backgroundT$us_background, 
                                           order=TRUE,
                                           levels=c("жировая ткань",
                                                    "железистая ткань",
                                                    "склероз",
                                                    "фиброзно-кистозная мастопатия",
                                                    "кисты",
                                                    "инволюция"))

figure1 <- ggplot(dfXlsxJun_backgroundT, aes(x=group_separation, fill = us_background))+
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

rm(dfXlsxJun_backgroundT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_background.png",figure1)
rm(figure1)
## Расположение образования  --------------------------------------------------------------------



dfXlsxJun_formationT <- subset(dfXlsxJun,dfXlsxJun$us_formation != "нет")
dfXlsxJun_formationT$us_formation <- factor(dfXlsxJun_formationT$us_formation, 
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

figure1 <- ggplot(dfXlsxJun_formationT, aes(x=group_separation, fill = us_formation))+
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


rm(dfXlsxJun_formationT)


figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_formation.png",figure1)
rm(figure1)
## Форма образования  --------------------------------------------------------------------

dfXlsxJun_formT <- subset(dfXlsxJun,dfXlsxJun$us_form != "нет узла")
dfXlsxJun_formT$us_form <- factor(dfXlsxJun_formT$us_form, 
                                            order=TRUE,
                                            levels=c("округлая",
                                                     "овальная",
                                                     "неправильная",
                                                     "другое",
                                                     "участок нарушения архитектоники"))

figure1 <- ggplot(dfXlsxJun_formT, aes(x=group_separation, fill = us_form))+
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


rm(dfXlsxJun_formT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_form.png",figure1)
rm(figure1)
## Размер образования --------------------------------------------------------------------

dfXlsxJun_sizeT <- subset(dfXlsxJun,dfXlsxJun$us_nodle_size != "нет")
dfXlsxJun_sizeT$us_nodle_size <- factor(dfXlsxJun_sizeT$us_nodle_size, 
                                  order=TRUE,
                                  levels=c("0,5-1,0 см",
                                           "1,1-1,5 см",
                                           "1,5-2,0 см",
                                           "2,1-2,5 см",
                                           "2,5-3,0 см",
                                           "более 3 см"))

figure1 <- ggplot(dfXlsxJun_sizeT, aes(x=group_separation, fill = us_nodle_size))+
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

rm(dfXlsxJun_sizeT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_nodle_size.png",figure1)
rm(figure1)
## Края образования  --------------------------------------------------------------------

dfXlsxJun_contourT <- subset(dfXlsxJun,dfXlsxJun$us_nodle_contour != "нет узла")
dfXlsxJun_contourT$us_nodle_contour <- factor(dfXlsxJun_contourT$us_nodle_contour, 
                                        order=TRUE,
                                        levels=c("ровные",
                                                 "неровные",
                                                 "полициклические",
                                                 "звездчатые",
                                                 "единичные тяжи по одному из контуров",
                                                 "другое",
                                                 "волнистые",
                                                 "нарушение архитектоники"))

figure1 <- ggplot(dfXlsxJun_contourT, aes(x=group_separation, fill = us_nodle_contour))+
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

rm(dfXlsxJun_contourT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_nodle_contour.png",figure1)
rm(figure1)
## Эхогенность образования --------------------------------------------------------------------
dfXlsxJun_echogenicityT <- subset(dfXlsxJun,dfXlsxJun$us_echogenicity_formation != "нет узла")
dfXlsxJun_echogenicityT$us_echogenicity_formation <- factor(dfXlsxJun_echogenicityT$us_echogenicity_formation, 
                                              order=TRUE,
                                              levels=c("гиперэхогенное",
                                                       "гипоэхогенное",
                                                       "изоэхогенное",
                                                       "смешанная",
                                                       "анэхогенное",
                                                       "другое"))

figure1 <- ggplot(dfXlsxJun_echogenicityT, aes(x=group_separation, fill = us_echogenicity_formation))+
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

rm(dfXlsxJun_echogenicityT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_echogenicity_formation.png",figure1)
rm(figure1)
## УЗ-структура образования --------------------------------------------------------------------

dfXlsxJun_structureT <- subset(dfXlsxJun,dfXlsxJun$us_structure != "нет узла")
dfXlsxJun_structureT$us_structure <- factor(dfXlsxJun_structureT$us_structure, 
                                                            order=TRUE,
                                                            levels=c("однородная",
                                                                     "неоднородная",
                                                                     "с жидкостным содержимым",
                                                                     "с кальцинатами",
                                                                     "наличие внутрикистозных пристеночных разрастаний",
                                                                     "другое"))

figure1 <- ggplot(dfXlsxJun_structureT, aes(x=group_separation, fill = us_structure))+
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

rm(dfXlsxJun_structureT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_structure.png",figure1)
rm(figure1)
## Количество узлов --------------------------------------------------------------------
dfXlsxJun_numberT <- subset(dfXlsxJun,dfXlsxJun$us_number_nodles != "не определяется")
dfXlsxJun_numberT$us_number_nodles <- factor(dfXlsxJun_numberT$us_number_nodles, 
                                            order=TRUE,
                                            levels=c("не определяется",
                                                     "один",
                                                     "два",
                                                     "три",
                                                     "множественные кисты"))

figure1 <- ggplot(dfXlsxJun_numberT, aes(x=group_separation, fill = us_number_nodles))+
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

rm(dfXlsxJun_numberT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_number_nodles.png",figure1)
rm(figure1)
## Кровоток в образовании  --------------------------------------------------------------------

dfXlsxJun_bloodT <- subset(dfXlsxJun,dfXlsxJun$us_formation_blood_flow != "нет")
dfXlsxJun_bloodT$us_formation_blood_flow <- factor(dfXlsxJun_bloodT$us_formation_blood_flow, 
                                             order=TRUE,
                                             levels=c("определяются внутри",
                                                      "по периферии",
                                                      "не определяется",
                                                      "интранодулярный",
                                                      "перинодулярный",
                                                      "смешанный"))

figure1 <- ggplot(dfXlsxJun_bloodT, aes(x=group_separation, fill = us_formation_blood_flow))+
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

rm(dfXlsxJun_bloodT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_formation_blood_flow.png",figure1)
rm(figure1)

## Эластография  --------------------------------------------------------------------
dfXlsxJun_elastT <- dfXlsxJun
dfXlsxJun_elastT$us_elastography <- factor(dfXlsxJun_elastT$us_elastography, 
                                                 order=TRUE,
                                                 levels=c("0 эластотип",
                                                          "1 эластотип",
                                                          "2 эластотип",
                                                          "3 эластотип",
                                                          "4 эластотип",
                                                          "нет данных"))

figure1 <- ggplot(dfXlsxJun_elastT, aes(x=group_separation, fill = us_elastography))+
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



rm(dfXlsxJun_elastT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_elastography.png",figure1)
rm(figure1)

## Регионарные лимфоузлы  --------------------------------------------------------------------
dfXlsxJun_lymphT <- dfXlsxJun
dfXlsxJun_lymphT$us_region_lymph_nodes <- factor(dfXlsxJun_lymphT$us_region_lymph_nodes, 
                                                   order=TRUE,
                                                   levels=c("не изменены",
                                                            "правая надключичная область",
                                                            "левая надключичная область",
                                                            "правая подключичная область",
                                                            "левая подключичная область",
                                                            "правая подмышечная область",
                                                            "левая подмышечная область"))
figure1 <- ggplot(dfXlsxJun_lymphT, aes(x=group_separation, fill = us_region_lymph_nodes))+
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

rm(dfXlsxJun_lymphT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_region_lymph_nodes.png",figure1)
rm(figure1)
## Определение категории BI-RADS  --------------------------------------------------------------------
dfXlsxJun_BIRADS <- dfXlsxJun
dfXlsxJun_BIRADS$us_category_birads <- factor(dfXlsxJun_BIRADS$us_category_birads, order=TRUE,
                                                levels=c("Birads 1",
                                                         "Birads 2",
                                                         "Birads 3",
                                                         "Birads 4а",
                                                         "Birads 4b",
                                                         "Birads 4c",
                                                         "Birads 5",
                                                         "Birads 6",
                                                         "Birads 0"))

figure1 <- ggplot(dfXlsxJun_BIRADS, aes(x=group_separation, fill = us_category_birads))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_category_birads.png",figure1)
rm(figure1)
## Кальциаты  --------------------------------------------------------------------

dfXlsxJun_calcT <-  subset(dfXlsxJun,dfXlsxJun$us_calcinates_micro_pure !="нет")
dfXlsxJun_calcT$us_calcinates_micro_pure <- factor(dfXlsxJun_calcT$us_calcinates_micro_pure, 
                                                   order=TRUE,
                                                   levels=c("макрокальцинаты","микрокальцинаты"))
figure1 <- ggplot(dfXlsxJun_calcT, aes(x=group_separation, fill = us_calcinates_micro_pure))+
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

rm(dfXlsxJun_calcT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_calcinates_micro_pure.png",figure1)
rm(figure1)
## рак --------------------------------------------------------------------
figure1 <- ggplot(dfXlsxJun, aes(x=us_is_tumor, fill = us_is_tumor))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/US/us_is_tumor.png",figure1)
rm(figure1)

# MRSI --------------------------------------------------------------------

## Данные МРТ исследования --------------------------------------------------------------------
dfXlsxJun_mrsi_dataT <- subset(dfXlsxJun,dfXlsxJun$mrsi_data !="не проводилось")
dfXlsxJun_mrsi_dataT$mrsi_data <- factor(dfXlsxJun_mrsi_dataT$mrsi_data, 
                                                 order=TRUE,
                                                 levels=c("интраммарные лимфоузлы",
                                                          "сегментарно-протоковая зона контрастирования"))
figure1 <- ggplot(dfXlsxJun_mrsi_dataT, aes(x=group_separation, fill = mrsi_data))+
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

rm(dfXlsxJun_mrsi_dataT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/MRSI/mrsi_data.png",figure1)
rm(figure1)
## Количество узлов на МРТ --------------------------------------------------------------------


dfXlsxJun_mrsi_nodlesT <- subset(dfXlsxJun,dfXlsxJun$mrsi_number_nodles !="не проводилось")
dfXlsxJun_mrsi_nodlesT$mrsi_number_nodles <- factor(dfXlsxJun_mrsi_nodlesT$mrsi_number_nodles, 
                                         order=TRUE,
                                         levels=c("не определяется",
                                                  "один",
                                                  "два",
                                                  "три",
                                                  "множественные",
                                                  "сегментарно-очаговая зона контрастирования"))
figure1 <- ggplot(dfXlsxJun_mrsi_nodlesT, aes(x=group_separation, fill = mrsi_number_nodles))+
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

rm(dfXlsxJun_mrsi_nodlesT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/MRSI/mrsi_number_nodles.png",figure1)
rm(figure1)
# Hist --------------------------------------------------------------------



## Морфологическая структура --------------------------------------------------------------------
dfXlsxJun_morf <-  subset(dfXlsxJun,dfXlsxJun$tumor_morphology_structure !="не проводилось")
dfXlsxJun_morf$tumor_morphology_structure <- factor(dfXlsxJun_morf$tumor_morphology_structure, order=TRUE,
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
figure1 <- ggplot(dfXlsxJun_morf, aes(x=group_separation, fill = tumor_morphology_structure))+
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

rm(dfXlsxJun_morf)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/Hist/tumor_morphology_structure.png",figure1)
rm(figure1)
## Цитологическое заключение --------------------------------------------------------------------
dfXlsxJun_cyt<-  subset(dfXlsxJun,dfXlsxJun$cytological_conclusion !="не проводилось")
dfXlsxJun_cyt$cytological_conclusion <- factor(dfXlsxJun_cyt$cytological_conclusion, order=TRUE,
                                                    levels=c("интрадуктальная папиллома",
                                                             "цистаденопапиллома",
                                                             "фиброзно-кистозные изменения",
                                                             "белковая субстанция, капли жира",
                                                             "фиброаденома",
                                                             "фиброзно- кистозный характер изменений"))
figure1 <- ggplot(dfXlsxJun_cyt, aes(x=group_separation, fill = cytological_conclusion))+
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

rm(dfXlsxJun_cyt)
figure1
ggsave("./XLXS_ver1/03_chapter_3/img/Hist/cytological_conclusion.png",figure1)
rm(figure1)
## Рецепторы опухоли --------------------------------------------------------------------
dfXlsxJun_tumor_receptorsT <- subset(dfXlsxJun,dfXlsxJun$tumor_receptors !="не проводилось")
dfXlsxJun_tumor_receptorsT$tumor_receptors <- factor(dfXlsxJun_tumor_receptorsT$tumor_receptors, 
                                         order=TRUE,
                                         levels=c( "РП",
                                                   "Her-2_neu",
                                                   "РЭ+РП+Her-2_neu негатив",
                                                   "РЭ+Her2_neu",
                                                   "РЭ+РП+Her-2_neu",
                                                   "негатив"))
figure1 <- ggplot(dfXlsxJun_tumor_receptorsT, aes(x=group_separation, fill = tumor_receptors))+
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

rm(dfXlsxJun_tumor_receptorsT)

figure1
ggsave("./XLXS_ver1/03_chapter_3/img/Hist/tumor_receptors.png",figure1)
rm(figure1)
## Гистологическое поддтверждение злокачественного новообразования --------------------------------------------------------------------

figure1 <- ggplot(dfXlsxJun, aes(x=group_separation, fill = hist_is_tumor))+
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
ggsave("./XLXS_ver1/03_chapter_3/img/Hist/hist_is_tumor.png",figure1)
rm(figure1)
## Определение злокачественности новообразования --------------------------------------------------------------------


dfXlsxJun_tumor_malignancyT <- subset(dfXlsxJun,dfXlsxJun$degree_malignancy !="не проводилось")
dfXlsxJun_tumor_malignancyT$degree_malignancy <- factor(dfXlsxJun_tumor_malignancyT$degree_malignancy, 
                                                     order=TRUE,
                                                     levels=c( "I (низкая 3-5 бал)",
                                                               "II (умеренная 6-7 балов)",
                                                               "III(высокая 8-9 бал)"))
figure1 <- ggplot(dfXlsxJun_tumor_malignancyT, aes(x=group_separation, fill = degree_malignancy))+
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

rm(dfXlsxJun_tumor_malignancyT)


figure1
ggsave("./XLXS_ver1/03_chapter_3/img/Hist/degree_malignancy.png",figure1)
rm(figure1)