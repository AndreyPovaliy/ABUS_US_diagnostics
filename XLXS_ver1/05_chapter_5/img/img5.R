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
                                                                  "нарушение архитектоники"),
                                                         labels = c("ровные" = "1",
                                                                    "неровные" = "2",
                                                                    "полициклические" = "3",
                                                                    "звездчатые" = "4",
                                                                    "единичные тяжи по одному из контуров" = "5",
                                                                    "другое" = "6",
                                                                    "волнистые" = "7",
                                                                    "нарушение архитектоники" = "8"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_nodleContourT, aes(x=methodsVizualisation, fill = nodleContour))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nodleContour), 
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
    x= "Метод
    1 - ровные, 2 - неровные,
    3 - полициклические, 4 - звездчатые,
    5 - единичные тяжи по одному из контуров,
    6 - другое, 7 - волнистые,
    8 - нарушение архитектоники",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                      "более 3 см"),
                                                      labels = c("0,5-1,0 см" = "1",
                                                                 "1,1-1,5 см" = "2",
                                                                 "1,5-2,0 см" = "3",
                                                                 "2,1-2,5 см" = "4",
                                                                 "2,5-3,0 см" = "5",
                                                                 "более 3 см" = "6"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_nodleSizeT, aes(x=methodsVizualisation, fill = nodleSize))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nodleSize), 
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
    x= "Метод
    1 - 0,5-1,0 см, 2 - 1,1-1,5 см,
    3 - 1,5-2,0 см, 4 - 2,1-2,5 см,
    5 - 2,5-3,0 см, 6 - более 3 см",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                "другое"),
                                                      labels = c("гиперэхогенное" = "1",
                                                                 "гипоэхогенное" = "2",
                                                                 "изоэхогенное" = "3",
                                                                 "смешанная" = "4",
                                                                 "анэхогенное" = "5",
                                                                 "другое" = "6"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_echogenicityFormationT, aes(x=methodsVizualisation, fill = echogenicityFormation))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = echogenicityFormation), 
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
    x= "Метод
    1 - гиперэхогенное, 2 - гипоэхогенное,
    3 - изоэхогенное, 4 - смешанная,
    5 - анэхогенное, 6 - другое",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                                        "наличие внутрикистозных пристеночных разрастаний"),
                                                      labels = c("однородная" = "1",
                                                                 "неоднородная" = "2",
                                                                 "с жидкостным содержимым" = "3",
                                                                 "с кальцинатами" = "4",
                                                                 "наличие внутрикистозных пристеночных разрастаний" = "5"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_structureT, aes(x=methodsVizualisation, fill = structure))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = structure), 
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
    x= "Метод
    1 - однородная, 2 - неоднородная,
    3 - с жидкостным содержимым,
    4 - с кальцинатами,
    5 - наличие внутрикистозных пристеночных разрастаний",
    y = "Количество",
    fill = "Структура образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

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
                                                                "множественные кисты"),
                                                      labels = c("один" = "1",
                                                                 "два" = "2",
                                                                 "три" = "3",
                                                                 "множественные кисты" = "4"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_numberNodlesT, aes(x=methodsVizualisation, fill = numberNodles))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = numberNodles), 
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
    x= "Метод
    1 - один, 2 - два,
    3 - три,
    4 - множественные кисты",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompJunUsAbus_numberNodlesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Jun/numberNodles.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) “Кальцинаты” -----------------------------------------------------------------------
dfXlsxMetCompJunUsAbus_calcinatesT <- dfXlsxMetCompJunUsAbus

dfXlsxMetCompJunUsAbus_calcinatesT$calcinates <- factor(dfXlsxMetCompJunUsAbus_calcinatesT$calcinates, 
                                                            order=TRUE,
                                                            levels=c("кальцинаты",
                                                                     "нет"),
                                                        labels = c("кальцинаты" = "1",
                                                                   "нет" = "2"))

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_calcinatesT, aes(x=methodsVizualisation, fill = calcinates))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = calcinates), 
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
    x= "Метод
    1 - кальцинаты, 2 - нет",
    y = "Количество",
    fill = "Кальцинаты"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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

figure1 <- ggplot(dfXlsxMetCompJunUsAbus_categoryBiradsT, aes(x=methodsVizualisation, fill = categoryBirads))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = categoryBirads), 
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
    x= "Метод
    1 - Birads 1, 2 - Birads 2,
    3 - Birads 3, 4 - Birads 4а,
    5 - Birads 4b, 6 - Birads 4c,
    7 - Birads 5, 8 - Birads 6,
    9 - Birads 0",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                     "нарушение архитектоники"),
                                                            labels = c("ровные" = "1",
                                                                       "неровные" = "2",
                                                                       "полициклические" = "3",
                                                                       "звездчатые" = "4",
                                                                       "единичные тяжи по одному из контуров" = "5",
                                                                       "другое" = "6",
                                                                       "волнистые" = "7",
                                                                       "нарушение архитектоники" = "8"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_nodleContourT, aes(x=methodsVizualisation, fill = nodleContour))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nodleContour), 
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
    x= "Метод
    1 - ровные, 2 - неровные,
    3 - полициклические, 4 - звездчатые,
    5 - единичные тяжи по одному из контуров,
    6 - другое, 7 - волнистые,
    8 - нарушение архитектоники",
    y = "Количество",
    fill = "Края образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                "более 3 см"),
                                                      labels = c("0,5-1,0 см" = "1",
                                                                 "1,1-1,5 см" = "2",
                                                                 "1,5-2,0 см" = "3",
                                                                 "2,1-2,5 см" = "4",
                                                                 "2,5-3,0 см" = "5",
                                                                 "более 3 см" = "6"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_nodleSizeT, aes(x=methodsVizualisation, fill = nodleSize))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nodleSize), 
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
    x= "Метод
    1 - 0,5-1,0 см, 2 - 1,1-1,5 см,
    3 - 1,5-2,0 см, 4 - 2,1-2,5 см,
    5 - 2,5-3,0 см, 6 - более 3 см",
    y = "Количество",
    fill = "Размер образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                                        "другое"),
                                                                              labels = c("гиперэхогенное" = "1",
                                                                                         "гипоэхогенное" = "2",
                                                                                         "изоэхогенное" = "3",
                                                                                         "смешанная" = "4",
                                                                                         "анэхогенное" = "5",
                                                                                         "другое" = "6"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_echogenicityFormationT, aes(x=methodsVizualisation, fill = echogenicityFormation))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = echogenicityFormation), 
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
    x= "Метод
    1 - гиперэхогенное, 2 - гипоэхогенное,
    3 - изоэхогенное, 4 - смешанная,
    5 - анэхогенное, 6 - другое",
    y = "Количество",
    fill = "Эхогенность образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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
                                                                "наличие внутрикистозных пристеночных разрастаний"),
                                                      labels = c("однородная" = "1",
                                                                 "неоднородная" = "2",
                                                                 "с жидкостным содержимым" = "3",
                                                                 "с кальцинатами" = "4",
                                                                 "наличие внутрикистозных пристеночных разрастаний" = "5"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_structureT, aes(x=methodsVizualisation, fill = structure))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = structure), 
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
    x= "Метод
    1 - однородная, 2 - неоднородная,
    3 - с жидкостным содержимым,
    4 - с кальцинатами,
    5 - наличие внутрикистозных пристеночных разрастаний",
    y = "Количество",
    fill = "Структура образования"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

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
                                                                      "множественные кисты"),
                                                            labels = c("один" = "1",
                                                                       "два" = "2",
                                                                       "три" = "3",
                                                                       "множественные кисты" = "4"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_numberNodlesT, aes(x=methodsVizualisation, fill = numberNodles))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = numberNodles), 
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
    x= "Метод
    1 - один, 2 - два,
    3 - три,
    4 - множественные кисты",
    y = "Количество",
    fill = "Количество узлов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_numberNodlesT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/numberNodles.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) “Кальцинаты” -----------------------------------------------------------------------
dfXlsxMetCompSnrUsAbus_calcinatesT <- dfXlsxMetCompSnrUsAbus

dfXlsxMetCompSnrUsAbus_calcinatesT$calcinates <- factor(dfXlsxMetCompSnrUsAbus_calcinatesT$calcinates, 
                                                        order=TRUE,
                                                        levels=c("кальцинаты",
                                                                 "нет"),
                                                        labels = c("кальцинаты" = "1",
                                                                   "нет" = "2"))

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_calcinatesT, aes(x=methodsVizualisation, fill = calcinates))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = calcinates), 
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
    x= "Метод
    1 - кальцинаты, 2 - нет",
    y = "Количество",
    fill = "Кальцинаты"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
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

figure1 <- ggplot(dfXlsxMetCompSnrUsAbus_categoryBiradsT, aes(x=methodsVizualisation, fill = categoryBirads))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = categoryBirads), 
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
    x= "Метод
    1 - Birads 1, 2 - Birads 2,
    3 - Birads 3, 4 - Birads 4а,
    5 - Birads 4b, 6 - Birads 4c,
    7 - Birads 5, 8 - Birads 6,
    9 - Birads 0",
    y = "Количество",
    fill = "Категория BIRADS"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxMetCompSnrUsAbus_categoryBiradsT)

figure1
ggsave("./XLXS_ver1/05_chapter_5/img/Snr/categoryBirads.png",figure1,width = 8,height = 5)
rm(figure1)