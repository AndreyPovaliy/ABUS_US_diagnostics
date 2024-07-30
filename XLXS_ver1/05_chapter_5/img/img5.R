library(tidyverse)
source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

# Jun -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus$methodsVizualisation<- factor(dfXlsxMetCompJunUsAbus$methodsVizualisation,
                                                     levels=c("us","abus"),
                                                     labels = c("us"="2D УЗИ",
                                                                "abus"="3D УЗИ"))
## (а) “Края образования” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_nodleContourT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$nodleContour!="нет узла")
dfXlsxMetCompJunUsAbus_nodleContourT$nodleContour <- factor(dfXlsxMetCompJunUsAbus_nodleContourT$nodleContour, 
                                                         order=TRUE,
                                                         levels=c("ровные",
                                                                  "неровные",
                                                                  "полициклические",
                                                                  "звездчатые",
                                                                  "единичные тяжи по одному из контуров",
                                                                  "другое",
                                                                  "волнистые",
                                                                  "нарушение архитектоники"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_nodleContourT, aes(x=methodsVizualisation, fill = nodleContour))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(0.7)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_nodleContourT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/nodleContour.png",figure1,width = 8,height = 5)
rm(figure1)
## (б) “Размер образования” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_nodleSizeT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$nodleSize!="нет")
dfXlsxMetCompJunUsAbus_nodleSizeT$nodleSize <- factor(dfXlsxMetCompJunUsAbus_nodleSizeT$nodleSize, 
                                                            order=TRUE,
                                                            levels=c( "0,5-1,0 см",
                                                                      "1,1-1,5 см",
                                                                      "1,5-2,0 см",
                                                                      "2,1-2,5 см",
                                                                      "2,5-3,0 см",
                                                                      "более 3 см"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_nodleSizeT, aes(x=methodsVizualisation, fill = nodleSize))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(0.8)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_nodleSizeT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/nodleSize.png",figure1,width = 8,height = 5)
rm(figure1)
## (в) “Эхогенность образования” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_echogenicityFormationT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$echogenicityFormation!="нет узла")

dfXlsxMetCompJunUsAbus_echogenicityFormationT$echogenicityFormation <- factor(dfXlsxMetCompJunUsAbus_echogenicityFormationT$echogenicityFormation, 
                                                      order=TRUE,
                                                      levels=c( "гиперэхогенное",
                                                                "гипоэхогенное",
                                                                "изоэхогенное",
                                                                "смешанная",
                                                                "анэхогенное",
                                                                "другое"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_echogenicityFormationT, aes(x=methodsVizualisation, fill = echogenicityFormation))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_echogenicityFormationT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/echogenicityFormation.png",figure1,width = 8,height = 5)
rm(figure1)
## (г) “Структура образования” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_structureT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$structure!="нет узла")

dfXlsxMetCompJunUsAbus_structureT$structure <- factor(dfXlsxMetCompJunUsAbus_structureT$structure, 
                                                                              order=TRUE,
                                                                              levels=c( "однородная",
                                                                                        "неоднородная",
                                                                                        "с жидкостным содержимым",
                                                                                        "с кальцинатами",
                                                                                        "наличие внутрикистозных пристеночных разрастаний"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_structureT, aes(x=methodsVizualisation, fill = structure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Структура образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(0.7)),
        legend.title=element_text(size = rel(1.0)))

rm(dfXlsxMetCompJunUsAbus_structureT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/structure.png",figure1,width = 8,height = 5)
rm(figure1)
## (д) “Количество узлов” -----------------------------------------------------------------------

dfXlsxMetCompJunUsAbus_numberNodlesT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$numberNodles!="не определяется")

dfXlsxMetCompJunUsAbus_numberNodlesT$numberNodles <- factor(dfXlsxMetCompJunUsAbus_numberNodlesT$numberNodles, 
                                                      order=TRUE,
                                                      levels=c( "один",
                                                                "два",
                                                                "три",
                                                                "множественные кисты"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_numberNodlesT, aes(x=methodsVizualisation, fill = numberNodles))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_numberNodlesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/numberNodles.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) “Кальцинаты” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_calcinatesT <- subset(dfXlsxMetCompJunUsAbus,dfXlsxMetCompJunUsAbus$calcinates!="нет")

dfXlsxMetCompJunUsAbus_calcinatesT$calcinates <- factor(dfXlsxMetCompJunUsAbus_calcinatesT$calcinates, 
                                                            order=TRUE,
                                                            levels=c("микрокальцинаты",
                                                                     "макрокальцинаты"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_calcinatesT, aes(x=methodsVizualisation, fill = calcinates))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Кальцинаты"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_calcinatesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/calcinates.png",figure1,width = 8,height = 5)
rm(figure1)
## (ж) “Категория BIRADS” -----------------------------------------------------------------------

dfXlsxMetCompJunUsAbus_categoryBiradsT <- dfXlsxMetCompJunUsAbus
dfXlsxMetCompJunUsAbus_categoryBiradsT$categoryBirads <- factor(dfXlsxMetCompJunUsAbus_categoryBiradsT$categoryBirads, 
                                                        order=TRUE,
                                                        levels=c("Birads 1",
                                                                 "Birads 2",
                                                                 "Birads 3",
                                                                 "Birads 4а",
                                                                 "Birads 4b",
                                                                 "Birads 4c",
                                                                 "Birads 5",
                                                                 "Birads 6",
                                                                 "Birads 0"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_categoryBiradsT, aes(x=methodsVizualisation, fill = categoryBirads))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_categoryBiradsT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/categoryBirads.png",figure1,width = 8,height = 5)
rm(figure1)



# Snr -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus$methodsVizualisation<- factor(dfXlsxMetCompSnrUsAbus$methodsVizualisation,
                                                     levels=c("us","abus"),
                                                     labels = c("us"="2D УЗИ",
                                                                "abus"="3D УЗИ"))
## (а) “Края образования” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_nodleContourT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$nodleContour!="нет узла")
dfXlsxMetCompSnrUsAbus_nodleContourT$nodleContour <- factor(dfXlsxMetCompSnrUsAbus_nodleContourT$nodleContour, 
                                                            order=TRUE,
                                                            levels=c("ровные",
                                                                     "неровные",
                                                                     "полициклические",
                                                                     "звездчатые",
                                                                     "единичные тяжи по одному из контуров",
                                                                     "другое",
                                                                     "волнистые",
                                                                     "нарушение архитектоники"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_nodleContourT, aes(x=methodsVizualisation, fill = nodleContour))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(0.7)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_nodleContourT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/nodleContour.png",figure1,width = 8,height = 5)
rm(figure1)
## (б) “Размер образования” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_nodleSizeT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$nodleSize!="нет")
dfXlsxMetCompSnrUsAbus_nodleSizeT$nodleSize <- factor(dfXlsxMetCompSnrUsAbus_nodleSizeT$nodleSize, 
                                                      order=TRUE,
                                                      levels=c( "0,5-1,0 см",
                                                                "1,1-1,5 см",
                                                                "1,5-2,0 см",
                                                                "2,1-2,5 см",
                                                                "2,5-3,0 см",
                                                                "более 3 см"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_nodleSizeT, aes(x=methodsVizualisation, fill = nodleSize))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_nodleSizeT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/nodleSize.png",figure1,width = 8,height = 5)
rm(figure1)
## (в) “Эхогенность образования” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_echogenicityFormationT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$echogenicityFormation!="нет узла")

dfXlsxMetCompSnrUsAbus_echogenicityFormationT$echogenicityFormation <- factor(dfXlsxMetCompSnrUsAbus_echogenicityFormationT$echogenicityFormation, 
                                                                              order=TRUE,
                                                                              levels=c( "гиперэхогенное",
                                                                                        "гипоэхогенное",
                                                                                        "изоэхогенное",
                                                                                        "смешанная",
                                                                                        "анэхогенное",
                                                                                        "другое"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_echogenicityFormationT, aes(x=methodsVizualisation, fill = echogenicityFormation))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_echogenicityFormationT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/echogenicityFormation.png",figure1,width = 8,height = 5)
rm(figure1)
## (г) “Структура образования” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_structureT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$structure!="нет узла")

dfXlsxMetCompSnrUsAbus_structureT$structure <- factor(dfXlsxMetCompSnrUsAbus_structureT$structure, 
                                                      order=TRUE,
                                                      levels=c( "однородная",
                                                                "неоднородная",
                                                                "с жидкостным содержимым",
                                                                "с кальцинатами",
                                                                "наличие внутрикистозных пристеночных разрастаний"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_structureT, aes(x=methodsVizualisation, fill = structure))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Структура образования"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(0.5)),
        legend.title=element_text(size = rel(1.0)))

rm(dfXlsxMetCompSnrUsAbus_structureT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/structure.png",figure1,width = 8,height = 5)
rm(figure1)
## (д) “Количество узлов” -----------------------------------------------------------------------

dfXlsxMetCompSnrUsAbus_numberNodlesT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$numberNodles!="не определяется")

dfXlsxMetCompSnrUsAbus_numberNodlesT$numberNodles <- factor(dfXlsxMetCompSnrUsAbus_numberNodlesT$numberNodles, 
                                                            order=TRUE,
                                                            levels=c( "один",
                                                                      "два",
                                                                      "три",
                                                                      "множественные кисты"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_numberNodlesT, aes(x=methodsVizualisation, fill = numberNodles))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_numberNodlesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/numberNodles.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) “Кальцинаты” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_calcinatesT <- subset(dfXlsxMetCompSnrUsAbus,dfXlsxMetCompSnrUsAbus$calcinates!="нет")

dfXlsxMetCompSnrUsAbus_calcinatesT$calcinates <- factor(dfXlsxMetCompSnrUsAbus_calcinatesT$calcinates, 
                                                        order=TRUE,
                                                        levels=c("микрокальцинаты",
                                                                 "макрокальцинаты"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_calcinatesT, aes(x=methodsVizualisation, fill = calcinates))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Кальцинаты"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_calcinatesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/calcinates.png",figure1,width = 8,height = 5)
rm(figure1)
## (ж) “Категория BIRADS” -----------------------------------------------------------------------

dfXlsxMetCompSnrUsAbus_categoryBiradsT <- dfXlsxMetCompSnrUsAbus
dfXlsxMetCompSnrUsAbus_categoryBiradsT$categoryBirads <- factor(dfXlsxMetCompSnrUsAbus_categoryBiradsT$categoryBirads, 
                                                                order=TRUE,
                                                                levels=c("Birads 1",
                                                                         "Birads 2",
                                                                         "Birads 3",
                                                                         "Birads 4а",
                                                                         "Birads 4b",
                                                                         "Birads 4c",
                                                                         "Birads 5",
                                                                         "Birads 6",
                                                                         "Birads 0"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_categoryBiradsT, aes(x=methodsVizualisation, fill = categoryBirads))+
  geom_bar(position = "dodge")+
  labs(
    x= "Метод",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_categoryBiradsT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/categoryBirads.png",figure1,width = 8,height = 5)
rm(figure1)