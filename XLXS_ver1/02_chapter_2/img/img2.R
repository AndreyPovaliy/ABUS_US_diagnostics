library(tidyverse)

# Jun -----------------------------------------------------------------------

## (а) первичный диагноз -----------------------------------------------------------------------
dfXlsxJun_diagnosis_primaryT <- dfXlsxJun
dfXlsxJun_diagnosis_primaryT$diagnosis_primary <- factor(dfXlsxJun_diagnosis_primaryT$diagnosis_primary, 
                                                   order=TRUE,
                                                   levels=c("Без патологии",
                                                            "Рак",
                                                            "Саркома",
                                                            "Фиброаденома", 
                                                            "Фиброзно-кистозная болезнь",
                                                            "Киста",
                                                            "Листовидная опухоль",
                                                            "Внутрипротоковая папиллома",
                                                            "Гиперплазия",
                                                            "Диффузный фиброаденоматоз",
                                                            "Локализованный фиброаденоматоз",
                                                            "Мастит"),
                                                   labels = c("Без патологии" = "1",
                                                              "Рак" = "2",
                                                              "Саркома" = "3",
                                                              "Фиброаденома" = "4",
                                                              "Фиброзно-кистозная болезнь" = "5",
                                                              "Киста" = "6",
                                                              "Листовидная опухоль" = "7",
                                                              "Внутрипротоковая папиллома" = "8",
                                                              "Гиперплазия" = "9",
                                                              "Диффузный фиброаденоматоз" = "10",
                                                              "Локализованный фиброаденоматоз" = "11",
                                                              "Мастит" = "12"))

figure1 <- ggplot(dfXlsxJun_diagnosis_primaryT, aes(x=group_separation, fill = diagnosis_primary))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = diagnosis_primary), 
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
1 - Без патологии, 2 - Рак,
3 - Саркома, 4 - Фиброаденома,
5 - Фиброзно-кистозная болезнь,
6 - Киста, 7 - Листовидная опухоль,
8 - Внутрипротоковая папиллома,
9 - Гиперплазия,
10 - Диффузный фиброаденоматоз,
11 - Локализованный фиброаденоматоз,
12 - Мастит",
    y = "Количество",
    fill = "Первичный диагноз"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_diagnosis_primaryT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/diagnosis_primary.png",figure1,width = 8,height = 5)
rm(figure1)

## (б) жалобы -----------------------------------------------------------------------
dfXlsxJun_complaintsT <- dfXlsxJun
dfXlsxJun_complaintsT$complaints <- factor(dfXlsxJun_complaintsT$complaints, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "есть опухоль",
                                                                  "выделения из соска",
                                                                  "боль",
                                                                  "уплотнение",
                                                                  "гиперемия",
                                                                  "гипертермия"),
                                                          labels = c("нет" = "1",
                                                                     "есть опухоль" = "2",
                                                                     "выделения из соска" = "3",
                                                                     "боль" = "4",
                                                                     "уплотнение" = "5",
                                                                     "гиперемия" = "6",
                                                                     "гипертермия" = "7"))

figure1 <- ggplot(dfXlsxJun_complaintsT, aes(x=group_separation, fill = complaints))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = complaints), 
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
    1 - нет, 2 - есть опухоль,
    3 - выделения из соска, 4 - боль,
    5 - уплотнение, 6 - гиперемия, 
    7 - гипертермия",
    y = "Количество",
    fill = "Жалобы"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
rm(dfXlsxJun_complaintsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/complaints.png",figure1,width = 8,height = 5)
rm(figure1)

## (в) репродуктивный статус -----------------------------------------------------------------------

dfXlsxJun_satus_reproductiveT <- dfXlsxJun
dfXlsxJun_satus_reproductiveT$satus_reproductive <- factor(dfXlsxJun_satus_reproductiveT$satus_reproductive, 
                                           order=TRUE,
                                           levels=c("репродуктивный возраст",
                                                    "менопауза до 5 лет",
                                                    "менопауза более 5 лет",
                                                    "пременопауза",
                                                    "оперативная менопауза",
                                                    "беременность"),
                                           labels = c("репродуктивный возраст" = "1",
                                                      "менопауза до 5 лет" = "2",
                                                      "менопауза более 5 лет" = "3",
                                                      "пременопауза" = "4",
                                                      "оперативная менопауза" = "5",
                                                      "беременность" = "6"))

figure1 <- ggplot(dfXlsxJun_satus_reproductiveT, aes(x=group_separation, fill = satus_reproductive))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = satus_reproductive), 
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
1 - репродуктивный возраст, 2 - менопауза до 5 лет,
3 - менопауза более 5 лет, 4 - пременопауза,
5 - оперативная менопауза, 6 - беременность",
    y = "Количество",
    fill = "Репродуктивный статус"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_satus_reproductiveT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/satus_reproductive.png",figure1,width = 8,height = 5)
rm(figure1)

## (г) операции на молочной железе----------------------------------------------------------------------- 


dfXlsxJun_breast_surgery_beforeT <- dfXlsxJun
dfXlsxJun_breast_surgery_beforeT$breast_surgery_before <- factor(dfXlsxJun_breast_surgery_beforeT$breast_surgery_before, 
                                                           order=TRUE,
                                                           levels=c("не было операций",
                                                                    "были операции"),
                                                           labels = c("не было операций" = "1",
                                                                      "были операции" = "2"))


figure1 <- ggplot(dfXlsxJun_breast_surgery_beforeT, aes(x=group_separation, fill = breast_surgery_before))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = breast_surgery_before), 
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
1 - не было операций,
2 - были операции",
    y = "Количество",
    fill = "Операции на молочной железе"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_breast_surgery_beforeT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/breast_surgery_before.png",figure1,width = 8,height = 5)
rm(figure1)

## (д) прием гормональных препаратов ----------------------------------------------------------------------- 

dfXlsxJun_hormonal_medicationsT <- dfXlsxJun
dfXlsxJun_hormonal_medicationsT$hormonal_medications <- factor(dfXlsxJun_hormonal_medicationsT$hormonal_medications, 
                                                                 order=TRUE,
                                                                 levels=c("да",
                                                                          "нет"),
                                                               labels = c("да" = "1",
                                                                          "нет" = "2"))


figure1 <- ggplot(dfXlsxJun_hormonal_medicationsT, aes(x=group_separation, fill = hormonal_medications))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = hormonal_medications), 
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
1 - да, 2 - нет",
    y = "Количество",
    fill = "Прием гормональных препаратов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_hormonal_medicationsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/hormonal_medications.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) Наследственная предрасположенность ----------------------------------------------------------------------- 

dfXlsxJun_geneticsT <- dfXlsxJun
dfXlsxJun_geneticsT$genetics <- factor(dfXlsxJun_geneticsT$genetics, 
                                                               order=TRUE,
                                                               levels=c("есть",
                                                                        "нет"),
                                       labels = c("есть" = "1",
                                                  "нет" = "2"))


figure1 <- ggplot(dfXlsxJun_geneticsT, aes(x=group_separation, fill = genetics))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = genetics), 
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
1 - есть, 2 - нет",
    y = "Количество",
    fill = "Наследственная предрасположенность"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_geneticsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/genetics.png",figure1,width = 8,height = 5)
rm(figure1)
## (а) мутация BRCA ----------------------------------------------------------------------- 


dfXlsxJun_mutation_brcaT <- subset(dfXlsxJun,dfXlsxJun$mutation_brca!="Оценка не проводилась")
dfXlsxJun_mutation_brcaT$mutation_brca <- factor(dfXlsxJun_mutation_brcaT$mutation_brca, 
                                       order=TRUE,
                                       levels=c("мутаций не выявлено",
                                                "BRCA1",
                                                "BRCA2",
                                                "образование не визуал на ММГ",
                                                "ложноположительный результат"),
                                       labels = c("мутаций не выявлено" = "1",
                                                  "BRCA1" = "2",
                                                  "BRCA2" = "3",
                                                  "образование не визуал на ММГ" = "4",
                                                  "ложноположительный результат" = "5"))


figure1 <- ggplot(dfXlsxJun_mutation_brcaT, aes(x=group_separation, fill = mutation_brca))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = mutation_brca), 
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
1 - мутаций не выявлено, 2 - BRCA1,
3 - BRCA2,
4 - образование не визуал на ММГ,
5 - ложноположительный результат",
    y = "Количество",
    fill = "Мутация BRCA"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_mutation_brcaT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/mutation_brca.png",figure1,width = 8,height = 5)
rm(figure1)
## (б) сторона поражения при осмотре ----------------------------------------------------------------------- 

dfXlsxJun_sideT <- dfXlsxJun
dfXlsxJun_sideT$side <- factor(dfXlsxJun_sideT$side, 
                                       order=TRUE,
                                       levels=c("правая",
                                                "левая",
                                                "обе",
                                                "не пальпируются"),
                               labels = c("правая" = "1",
                                          "левая" = "2",
                                          "обе" = "3",
                                          "не пальпируются" = "4"))


figure1 <- ggplot(dfXlsxJun_sideT, aes(x=group_separation, fill = side))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = side), 
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
1 - правая, 2 - левая,
3 - обе, 4 - не пальпируются",
    y = "Количество",
    fill = "Сторона поражения "
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_sideT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/side.png",figure1,width = 8,height = 5)
rm(figure1)
## (в) Симптом втягивания соска----------------------------------------------------------------------- 

dfXlsxJun_nipple_retractionT <- dfXlsxJun
dfXlsxJun_nipple_retractionT$nipple_retraction <- factor(dfXlsxJun_nipple_retractionT$nipple_retraction, 
                               order=TRUE,
                               levels=c("нет",
                                        "да"),
                               labels = c("нет" = "1",
                                          "да" = "2"))


figure1 <- ggplot(dfXlsxJun_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nipple_retraction), 
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
1 - нет, 2 - да",
    y = "Количество",
    fill = "Симптом втягивания соска"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/nipple_retraction.png",figure1,width = 8,height = 5)
rm(figure1)

## (г) симптом выделения  ----------------------------------------------------------------------- 


dfXlsxJun_nipple_retractionT <- dfXlsxJun
dfXlsxJun_nipple_retractionT$nipple_release <- factor(dfXlsxJun_nipple_retractionT$nipple_release, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "кровянистые",
                                                                  "светлые"),
                                                      labels = c("нет" = "1",
                                                                 "кровянистые" = "2",
                                                                 "светлые" = "3"))


figure1 <- ggplot(dfXlsxJun_nipple_retractionT, aes(x=group_separation, fill = nipple_release))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nipple_release), 
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
1 - нет, 2 - кровянистые,
3 - светлые",
    y = "Количество",
    fill = "Симптом выделения"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/nipple_release.png",figure1,width = 8,height = 5)
rm(figure1)

## (д) тип структуры ACR   ----------------------------------------------------------------------- 


dfXlsxJun_type_structure_acrT <- dfXlsxJun
dfXlsxJun_type_structure_acrT$type_structure_acr <- factor(dfXlsxJun_type_structure_acrT$type_structure_acr, 
                                                         order=TRUE,
                                                         levels=c("А",
                                                                  "В",
                                                                  "С",
                                                                  "D"),
                                                         labels = c("А" = "1",
                                                                    "В" = "2",
                                                                    "С" = "3",
                                                                    "D" = "4"))


figure1 <- ggplot(dfXlsxJun_type_structure_acrT, aes(x=group_separation, fill = type_structure_acr))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = type_structure_acr), 
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
1 - А, 2 - В,
3 - С, 4 - D",
    y = "Количество",
    fill = "Тип структуры ACR"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_type_structure_acrT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/type_structure_acr.png",figure1,width = 8,height = 5)
rm(figure1)

## (е) квадрант локализации   ----------------------------------------------------------------------- 


dfXlsxJun_quadrantT <- subset(dfXlsxJun,dfXlsxJun$quadrant!="нет")
dfXlsxJun_quadrantT$quadrant <- factor(dfXlsxJun_quadrantT$quadrant, 
                                                         order=TRUE,
                                                         levels=c("верхне-наружный",
                                                                  "верхне-внутренний",
                                                                  "нижне-наружный",
                                                                  "нижне-внутренний",
                                                                  "граница внутреннего",
                                                                  "граница наружного",
                                                                  "граница верхнего",
                                                                  "граница нижних",
                                                                  "вся железа",
                                                                  "1/2 железы",
                                                                  "центральный квадрант"),
                                       labels = c("верхне-наружный" = "1",
                                                  "верхне-внутренний" = "2",
                                                  "нижне-наружный" = "3",
                                                  "нижне-внутренний" = "4",
                                                  "граница внутреннего" = "5",
                                                  "граница наружного" = "6",
                                                  "граница верхнего" = "7",
                                                  "граница нижних" = "8",
                                                  "вся железа" = "9",
                                                  "1/2 железы" = "10",
                                                  "центральный квадрант" = "11"))


figure1 <- ggplot(dfXlsxJun_quadrantT, aes(x=group_separation, fill = quadrant))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = quadrant), 
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
1 - верхне-наружный, 2 - верхне-внутренний,
3 - нижне-наружный, 4 - нижне-внутренний,
5 - граница внутреннего, 6 - граница наружного,
7 - граница верхнего, 8 - граница нижних,
9 - вся железа, 10 - 1/2 железы,
11 - центральный квадрант",
    y = "Количество",
    fill = "Квадрант локализации"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
rm(dfXlsxJun_quadrantT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/quadrant.png",figure1,width = 8,height = 5)
rm(figure1)

# Snr -----------------------------------------------------------------------

## (а) первичный диагноз -----------------------------------------------------------------------
dfXlsxSnr_diagnosis_primaryT <- dfXlsxSnr
dfXlsxSnr_diagnosis_primaryT$diagnosis_primary <- factor(dfXlsxSnr_diagnosis_primaryT$diagnosis_primary, 
                                                         order=TRUE,
                                                         levels=c("Без патологии",
                                                                  "Рак",
                                                                  "Саркома",
                                                                  "Фиброаденома", 
                                                                  "Фиброзно-кистозная болезнь",
                                                                  "Киста",
                                                                  "Листовидная опухоль",
                                                                  "Внутрипротоковая папиллома",
                                                                  "Гиперплазия",
                                                                  "Диффузный фиброаденоматоз",
                                                                  "Локализованный фиброаденоматоз",
                                                                  "Мастит"),
                                                         labels = c("Без патологии" = "1",
                                                                    "Рак" = "2",
                                                                    "Саркома" = "3",
                                                                    "Фиброаденома" = "4",
                                                                    "Фиброзно-кистозная болезнь" = "5",
                                                                    "Киста" = "6",
                                                                    "Листовидная опухоль" = "7",
                                                                    "Внутрипротоковая папиллома" = "8",
                                                                    "Гиперплазия" = "9",
                                                                    "Диффузный фиброаденоматоз" = "10",
                                                                    "Локализованный фиброаденоматоз" = "11",
                                                                    "Мастит" = "12"))

figure1 <- ggplot(dfXlsxSnr_diagnosis_primaryT, aes(x=group_separation, fill = diagnosis_primary))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = diagnosis_primary), 
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
1 - Без патологии, 2 - Рак,
3 - Саркома, 4 - Фиброаденома,
5 - Фиброзно-кистозная болезнь,
6 - Киста, 7 - Листовидная опухоль,
8 - Внутрипротоковая папиллома,
9 - Гиперплазия,
10 - Диффузный фиброаденоматоз,
11 - Локализованный фиброаденоматоз,
12 - Мастит",
    y = "Количество",
    fill = "Первичный диагноз"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_diagnosis_primaryT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/diagnosis_primary.png",figure1,width = 8,height = 5)
rm(figure1)

## (б) жалобы -----------------------------------------------------------------------
dfXlsxSnr_complaintsT <- dfXlsxSnr
dfXlsxSnr_complaintsT$complaints <- factor(dfXlsxSnr_complaintsT$complaints, 
                                           order=TRUE,
                                           levels=c("нет",
                                                    "есть опухоль",
                                                    "выделения из соска",
                                                    "боль",
                                                    "уплотнение",
                                                    "гиперемия",
                                                    "гипертермия"),
                                           labels = c("нет" = "1",
                                                      "есть опухоль" = "2",
                                                      "выделения из соска" = "3",
                                                      "боль" = "4",
                                                      "уплотнение" = "5",
                                                      "гиперемия" = "6",
                                                      "гипертермия" = "7"))

figure1 <- ggplot(dfXlsxSnr_complaintsT, aes(x=group_separation, fill = complaints))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = complaints), 
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
    1 - нет, 2 - есть опухоль,
    3 - выделения из соска, 4 - боль,
    5 - уплотнение, 6 - гиперемия, 
    7 - гипертермия",
    y = "Количество",
    fill = "Жалобы"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
rm(dfXlsxSnr_complaintsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/complaints.png",figure1,width = 8,height = 5)
rm(figure1)

## (в) репродуктивный статус -----------------------------------------------------------------------

dfXlsxSnr_satus_reproductiveT <- dfXlsxSnr
dfXlsxSnr_satus_reproductiveT$satus_reproductive <- factor(dfXlsxSnr_satus_reproductiveT$satus_reproductive, 
                                                           order=TRUE,
                                                           levels=c("репродуктивный возраст",
                                                                    "менопауза до 5 лет",
                                                                    "менопауза более 5 лет",
                                                                    "пременопауза",
                                                                    "оперативная менопауза",
                                                                    "беременность"),
                                                           labels = c("репродуктивный возраст" = "1",
                                                                      "менопауза до 5 лет" = "2",
                                                                      "менопауза более 5 лет" = "3",
                                                                      "пременопауза" = "4",
                                                                      "оперативная менопауза" = "5",
                                                                      "беременность" = "6"))

figure1 <- ggplot(dfXlsxSnr_satus_reproductiveT, aes(x=group_separation, fill = satus_reproductive))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = satus_reproductive), 
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
1 - репродуктивный возраст, 2 - менопауза до 5 лет,
3 - менопауза более 5 лет, 4 - пременопауза,
5 - оперативная менопауза, 6 - беременность",
    y = "Количество",
    fill = "Репродуктивный статус"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_satus_reproductiveT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/satus_reproductive.png",figure1,width = 8,height = 5)
rm(figure1)

## (г) операции на молочной железе----------------------------------------------------------------------- 


dfXlsxSnr_breast_surgery_beforeT <- dfXlsxSnr
dfXlsxSnr_breast_surgery_beforeT$breast_surgery_before <- factor(dfXlsxSnr_breast_surgery_beforeT$breast_surgery_before, 
                                                                 order=TRUE,
                                                                 levels=c("не было операций",
                                                                          "были операции"),
                                                                 labels = c("не было операций" = "1",
                                                                            "были операции" = "2"))


figure1 <- ggplot(dfXlsxSnr_breast_surgery_beforeT, aes(x=group_separation, fill = breast_surgery_before))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = breast_surgery_before), 
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
1 - не было операций,
2 - были операции",
    y = "Количество",
    fill = "Операции на молочной железе"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_breast_surgery_beforeT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/breast_surgery_before.png",figure1,width = 8,height = 5)
rm(figure1)

## (д) прием гормональных препаратов ----------------------------------------------------------------------- 

dfXlsxSnr_hormonal_medicationsT <- dfXlsxSnr
dfXlsxSnr_hormonal_medicationsT$hormonal_medications <- factor(dfXlsxSnr_hormonal_medicationsT$hormonal_medications, 
                                                               order=TRUE,
                                                               levels=c("да",
                                                                        "нет"),
                                                               labels = c("да" = "1",
                                                                          "нет" = "2"))


figure1 <- ggplot(dfXlsxSnr_hormonal_medicationsT, aes(x=group_separation, fill = hormonal_medications))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = hormonal_medications), 
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
1 - да, 2 - нет",
    y = "Количество",
    fill = "Прием гормональных препаратов"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_hormonal_medicationsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/hormonal_medications.png",figure1,width = 8,height = 5)
rm(figure1)
## (е) Наследственная предрасположенность ----------------------------------------------------------------------- 

dfXlsxSnr_geneticsT <- dfXlsxSnr
dfXlsxSnr_geneticsT$genetics <- factor(dfXlsxSnr_geneticsT$genetics, 
                                       order=TRUE,
                                       levels=c("есть",
                                                "нет"),
                                       labels = c("есть" = "1",
                                                  "нет" = "2"))


figure1 <- ggplot(dfXlsxSnr_geneticsT, aes(x=group_separation, fill = genetics))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = genetics), 
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
1 - есть, 2 - нет",
    y = "Количество",
    fill = "Наследственная предрасположенность"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_geneticsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/genetics.png",figure1,width = 8,height = 5)
rm(figure1)
## (а) мутация BRCA ----------------------------------------------------------------------- 


dfXlsxSnr_mutation_brcaT <- subset(dfXlsxSnr,dfXlsxSnr$mutation_brca!="Оценка не проводилась")
dfXlsxSnr_mutation_brcaT$mutation_brca <- factor(dfXlsxSnr_mutation_brcaT$mutation_brca, 
                                                 order=TRUE,
                                                 levels=c("мутаций не выявлено",
                                                          "BRCA1",
                                                          "BRCA2",
                                                          "образование не визуал на ММГ",
                                                          "ложноположительный результат"),
                                                 labels = c("мутаций не выявлено" = "1",
                                                            "BRCA1" = "2",
                                                            "BRCA2" = "3",
                                                            "образование не визуал на ММГ" = "4",
                                                            "ложноположительный результат" = "5"))


figure1 <- ggplot(dfXlsxSnr_mutation_brcaT, aes(x=group_separation, fill = mutation_brca))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = mutation_brca), 
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
1 - мутаций не выявлено, 2 - BRCA1,
3 - BRCA2,
4 - образование не визуал на ММГ,
5 - ложноположительный результат",
    y = "Количество",
    fill = "Мутация BRCA"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mutation_brcaT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/mutation_brca.png",figure1,width = 8,height = 5)
rm(figure1)
## (б) сторона поражения при осмотре ----------------------------------------------------------------------- 

dfXlsxSnr_sideT <- dfXlsxSnr
dfXlsxSnr_sideT$side <- factor(dfXlsxSnr_sideT$side, 
                               order=TRUE,
                               levels=c("правая",
                                        "левая",
                                        "обе",
                                        "не пальпируются"),
                               labels = c("правая" = "1",
                                          "левая" = "2",
                                          "обе" = "3",
                                          "не пальпируются" = "4"))


figure1 <- ggplot(dfXlsxSnr_sideT, aes(x=group_separation, fill = side))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = side), 
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
1 - правая, 2 - левая,
3 - обе, 4 - не пальпируются",
    y = "Количество",
    fill = "Сторона поражения "
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_sideT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/side.png",figure1,width = 8,height = 5)
rm(figure1)
## (в) Симптом втягивания соска----------------------------------------------------------------------- 

dfXlsxSnr_nipple_retractionT <- dfXlsxSnr
dfXlsxSnr_nipple_retractionT$nipple_retraction <- factor(dfXlsxSnr_nipple_retractionT$nipple_retraction, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "да"),
                                                         labels = c("нет" = "1",
                                                                    "да" = "2"))


figure1 <- ggplot(dfXlsxSnr_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nipple_retraction), 
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
1 - нет, 2 - да",
    y = "Количество",
    fill = "Симптом втягивания соска"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/nipple_retraction.png",figure1,width = 8,height = 5)
rm(figure1)

## (г) симптом выделения  ----------------------------------------------------------------------- 


dfXlsxSnr_nipple_retractionT <- dfXlsxSnr
dfXlsxSnr_nipple_retractionT$nipple_release <- factor(dfXlsxSnr_nipple_retractionT$nipple_release, 
                                                      order=TRUE,
                                                      levels=c("нет",
                                                               "кровянистые",
                                                               "светлые"),
                                                      labels = c("нет" = "1",
                                                                 "кровянистые" = "2",
                                                                 "светлые" = "3"))


figure1 <- ggplot(dfXlsxSnr_nipple_retractionT, aes(x=group_separation, fill = nipple_release))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = nipple_release), 
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
1 - нет, 2 - кровянистые,
3 - светлые",
    y = "Количество",
    fill = "Симптом выделения"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/nipple_release.png",figure1,width = 8,height = 5)
rm(figure1)

## (д) тип структуры ACR   ----------------------------------------------------------------------- 


dfXlsxSnr_type_structure_acrT <- dfXlsxSnr
dfXlsxSnr_type_structure_acrT$type_structure_acr <- factor(dfXlsxSnr_type_structure_acrT$type_structure_acr, 
                                                           order=TRUE,
                                                           levels=c("А",
                                                                    "В",
                                                                    "С",
                                                                    "D"),
                                                           labels = c("А" = "1",
                                                                      "В" = "2",
                                                                      "С" = "3",
                                                                      "D" = "4"))


figure1 <- ggplot(dfXlsxSnr_type_structure_acrT, aes(x=group_separation, fill = type_structure_acr))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = type_structure_acr), 
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
1 - А, 2 - В,
3 - С, 4 - D",
    y = "Количество",
    fill = "Тип структуры ACR"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_type_structure_acrT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/type_structure_acr.png",figure1,width = 8,height = 5)
rm(figure1)

## (е) квадрант локализации   ----------------------------------------------------------------------- 


dfXlsxSnr_quadrantT <- subset(dfXlsxSnr,dfXlsxSnr$quadrant!="нет")
dfXlsxSnr_quadrantT$quadrant <- factor(dfXlsxSnr_quadrantT$quadrant, 
                                       order=TRUE,
                                       levels=c("верхне-наружный",
                                                "верхне-внутренний",
                                                "нижне-наружный",
                                                "нижне-внутренний",
                                                "граница внутреннего",
                                                "граница наружного",
                                                "граница верхнего",
                                                "граница нижних",
                                                "вся железа",
                                                "1/2 железы",
                                                "центральный квадрант"),
                                       labels = c("верхне-наружный" = "1",
                                                  "верхне-внутренний" = "2",
                                                  "нижне-наружный" = "3",
                                                  "нижне-внутренний" = "4",
                                                  "граница внутреннего" = "5",
                                                  "граница наружного" = "6",
                                                  "граница верхнего" = "7",
                                                  "граница нижних" = "8",
                                                  "вся железа" = "9",
                                                  "1/2 железы" = "10",
                                                  "центральный квадрант" = "11"))


figure1 <- ggplot(dfXlsxSnr_quadrantT, aes(x=group_separation, fill = quadrant))+
  geom_bar(position = "dodge")+   
  geom_label(position = position_dodge(0.9),
             aes(label = quadrant), 
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
1 - верхне-наружный, 2 - верхне-внутренний,
3 - нижне-наружный, 4 - нижне-внутренний,
5 - граница внутреннего, 6 - граница наружного,
7 - граница верхнего, 8 - граница нижних,
9 - вся железа, 10 - 1/2 железы,
11 - центральный квадрант",
    y = "Количество",
    fill = "Квадрант локализации"
    
  )+
  theme(legend.position="none",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(2)),
        axis.text = element_text(size = 20),
        legend.text = element_text(size = 6.5),
        legend.title=element_text(size = rel(1.3)))
rm(dfXlsxSnr_quadrantT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/quadrant.png",figure1,width = 8,height = 5)
rm(figure1)