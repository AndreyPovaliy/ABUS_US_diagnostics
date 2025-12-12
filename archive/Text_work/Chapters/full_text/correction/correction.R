library(tidyverse)

# Кровоток в образовании --------------------------------------------------


# Надо объединить интранодулряный и определялся внутри
# И по периферии и перинодулярный- тэто одно и тоже
# И в таблице испраавить
dfXlsx$tumor_receptors[dfXlsx$hist_is_tumor == "Да" & dfXlsx$tumor_receptors == "не проводилось"] <- "негатив"

table(dfXlsx$is_Receptors[dfXlsx$group_separation == "A"])

table(dfXlsx$us_formation_blood_flow)

chapter_3_4_text("Кровоток в образовании",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxNodleUsGr1$us_formation_blood_flow,
                 dfXlsxNodleUsGr3$us_formation_blood_flow,
                 dfXlsxNodleUsJun$us_formation_blood_flow,
                 dfXlsxNodleUsJun$group_separation)




# Гистологическая оценка --------------------------------------------------
chapter_3_4_text("Морфологическая структура",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetMalignancyGr1$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyGr3$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyJun$tumor_morphology_structure,
                 dfXlsxSubsetMalignancyJun$group_separation)


chapter_3_4_text("Рецепторы опухоли",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxSubsetReceptorsGr1$tumor_receptors,
                 dfXlsxSubsetReceptorsGr3$tumor_receptors,
                 dfXlsxSubsetReceptorsJun$tumor_receptors,
                 dfXlsxSubsetReceptorsJun$group_separation)




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
    size = 5.5,
    stat = "count", 
    vjust = -0.5, 
    colour = "brown")+
  labs(
    x = "Категория BIRADS:
    1 = Birads 1, 2 = Birads 2, 3 = Birads 3,
    4 = Birads 4а, 5 = Birads 4b, 6 = Birads 4c,
    7 = Birads 5",
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
ggsave("./XLXS_ver1/04_chapter_4/img/ABUS/abus_category_birads.png",figure1,width = 9,height = 7)
rm(figure1)



dfXlsxMetCompJun %>% 
  group_by(diagnosis) %>% 
  summarise(n = n()) %>% 
  arrange(diagnosis)


dfXlsx %>% 
  filter(us_is_nodle == "Нет") %>% 
  group_by(us_diagnosis) %>% 
  summarise(n = n())


dfXlsxMetCompUsAbus$time



cols <- c("#E9E294","#AE75DA")


dd_ff <- dfXlsxMetCompUsAbus
dd_ff$methodsVizualisation <- factor(dd_ff$methodsVizualisation,
       levels=c("us","abus"),
       labels = c(
         "us"="2D УЗИ",
         "abus"="3D УЗИ"))
General_us_timePlot <-Violinplot(dd_ff, dd_ff$time, dd_ff$methodsVizualisation, "Время (в мин)", "Метод")+
  scale_fill_manual(values = cols)
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Chapters/Chapter6/images6/AbusUsTimeTime.png",
       plot = General_us_timePlot, units = "in", width = 14, height = 8)
