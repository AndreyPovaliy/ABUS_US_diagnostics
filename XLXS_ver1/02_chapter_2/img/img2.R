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
                                                            "Мастит"))

figure1 <- ggplot(dfXlsxJun_diagnosis_primaryT, aes(x=group_separation, fill = diagnosis_primary))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Первичный диагноз"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_diagnosis_primaryT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/diagnosis_primary.png",figure1)
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
                                                                  "гипертермия"))

figure1 <- ggplot(dfXlsxJun_complaintsT, aes(x=group_separation, fill = complaints))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Жалобы"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_complaintsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/complaints.png",figure1)
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
                                                    "беременность"))

figure1 <- ggplot(dfXlsxJun_satus_reproductiveT, aes(x=group_separation, fill = satus_reproductive))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Репродуктивный статус"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_satus_reproductiveT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/satus_reproductive.png",figure1)
rm(figure1)

## (г) операции на молочной железе----------------------------------------------------------------------- 


dfXlsxJun_breast_surgery_beforeT <- dfXlsxJun
dfXlsxJun_breast_surgery_beforeT$breast_surgery_before <- factor(dfXlsxJun_breast_surgery_beforeT$breast_surgery_before, 
                                                           order=TRUE,
                                                           levels=c("не было операций",
                                                                    "были операции"))

figure1 <- ggplot(dfXlsxJun_breast_surgery_beforeT, aes(x=group_separation, fill = breast_surgery_before))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Операции на молочной железе"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_breast_surgery_beforeT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/breast_surgery_before.png",figure1)
rm(figure1)

## (д) прием гормональных препаратов ----------------------------------------------------------------------- 

dfXlsxJun_hormonal_medicationsT <- dfXlsxJun
dfXlsxJun_hormonal_medicationsT$hormonal_medications <- factor(dfXlsxJun_hormonal_medicationsT$hormonal_medications, 
                                                                 order=TRUE,
                                                                 levels=c("да",
                                                                          "нет"))

figure1 <- ggplot(dfXlsxJun_hormonal_medicationsT, aes(x=group_separation, fill = hormonal_medications))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Прием гормональных препаратов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_hormonal_medicationsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/hormonal_medications.png",figure1)
rm(figure1)
## (е) Наследственная предрасположенность ----------------------------------------------------------------------- 

dfXlsxJun_geneticsT <- dfXlsxJun
dfXlsxJun_geneticsT$genetics <- factor(dfXlsxJun_geneticsT$genetics, 
                                                               order=TRUE,
                                                               levels=c("есть",
                                                                        "нет"))

figure1 <- ggplot(dfXlsxJun_geneticsT, aes(x=group_separation, fill = genetics))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Наследственная предрасположенность"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_geneticsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/genetics.png",figure1)
rm(figure1)
## (а) мутация BRCA ----------------------------------------------------------------------- 


dfXlsxJun_mutation_brcaT <- subset(dfXlsxJun,dfXlsxJun$mutation_brca!="Оценка не проводилась")
dfXlsxJun_mutation_brcaT$mutation_brca <- factor(dfXlsxJun_mutation_brcaT$mutation_brca, 
                                       order=TRUE,
                                       levels=c("мутаций не выявлено",
                                                "BRCA1",
                                                "BRCA2",
                                                "образование не визуал на ММГ",
                                                "ложноположительный результат"))

figure1 <- ggplot(dfXlsxJun_mutation_brcaT, aes(x=group_separation, fill = mutation_brca))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Мутация BRCA"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_mutation_brcaT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/mutation_brca.png",figure1)
rm(figure1)
## (б) сторона поражения при осмотре ----------------------------------------------------------------------- 

dfXlsxJun_sideT <- dfXlsxJun
dfXlsxJun_sideT$side <- factor(dfXlsxJun_sideT$side, 
                                       order=TRUE,
                                       levels=c("правая",
                                                "левая",
                                                "обе",
                                                "не пальпируются"))

figure1 <- ggplot(dfXlsxJun_sideT, aes(x=group_separation, fill = side))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Сторона поражения "
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_sideT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/side.png",figure1)
rm(figure1)
## (в) Симптом втягивания соска----------------------------------------------------------------------- 

dfXlsxJun_nipple_retractionT <- dfXlsxJun
dfXlsxJun_nipple_retractionT$nipple_retraction <- factor(dfXlsxJun_nipple_retractionT$nipple_retraction, 
                               order=TRUE,
                               levels=c("нет",
                                        "да"))

figure1 <- ggplot(dfXlsxJun_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Симптом втягивания соска"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/nipple_retraction.png",figure1)
rm(figure1)

## (г) симптом выделения  ----------------------------------------------------------------------- 


dfXlsxJun_nipple_retractionT <- dfXlsxJun
dfXlsxJun_nipple_retractionT$nipple_retraction <- factor(dfXlsxJun_nipple_retractionT$nipple_retraction, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "да"))

figure1 <- ggplot(dfXlsxJun_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Симптом выделения"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/nipple_retraction.png",figure1)
rm(figure1)

## (д) тип структуры ACR   ----------------------------------------------------------------------- 


dfXlsxJun_type_structure_acrT <- dfXlsxJun
dfXlsxJun_type_structure_acrT$type_structure_acr <- factor(dfXlsxJun_type_structure_acrT$type_structure_acr, 
                                                         order=TRUE,
                                                         levels=c("А",
                                                                  "В",
                                                                  "С",
                                                                  "D"))

figure1 <- ggplot(dfXlsxJun_type_structure_acrT, aes(x=group_separation, fill = type_structure_acr))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Тип структуры ACR"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_type_structure_acrT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/type_structure_acr.png",figure1)
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
                                                                  "центральный квадрант"))

figure1 <- ggplot(dfXlsxJun_quadrantT, aes(x=group_separation, fill = quadrant))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Квадрант локализации"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxJun_quadrantT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Jun/quadrant.png",figure1)
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
                                                                  "Мастит"))

figure1 <- ggplot(dfXlsxSnr_diagnosis_primaryT, aes(x=group_separation, fill = diagnosis_primary))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Первичный диагноз"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_diagnosis_primaryT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/diagnosis_primary.png",figure1)
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
                                                    "гипертермия"))

figure1 <- ggplot(dfXlsxSnr_complaintsT, aes(x=group_separation, fill = complaints))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Жалобы"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_complaintsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/complaints.png",figure1)
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
                                                                    "беременность"))

figure1 <- ggplot(dfXlsxSnr_satus_reproductiveT, aes(x=group_separation, fill = satus_reproductive))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Репродуктивный статус"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_satus_reproductiveT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/satus_reproductive.png",figure1)
rm(figure1)

## (г) операции на молочной железе----------------------------------------------------------------------- 


dfXlsxSnr_breast_surgery_beforeT <- dfXlsxSnr
dfXlsxSnr_breast_surgery_beforeT$breast_surgery_before <- factor(dfXlsxSnr_breast_surgery_beforeT$breast_surgery_before, 
                                                                 order=TRUE,
                                                                 levels=c("не было операций",
                                                                          "были операции"))

figure1 <- ggplot(dfXlsxSnr_breast_surgery_beforeT, aes(x=group_separation, fill = breast_surgery_before))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Операции на молочной железе"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_breast_surgery_beforeT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/breast_surgery_before.png",figure1)
rm(figure1)

## (д) прием гормональных препаратов ----------------------------------------------------------------------- 

dfXlsxSnr_hormonal_medicationsT <- dfXlsxSnr
dfXlsxSnr_hormonal_medicationsT$hormonal_medications <- factor(dfXlsxSnr_hormonal_medicationsT$hormonal_medications, 
                                                               order=TRUE,
                                                               levels=c("да",
                                                                        "нет"))

figure1 <- ggplot(dfXlsxSnr_hormonal_medicationsT, aes(x=group_separation, fill = hormonal_medications))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Прием гормональных препаратов"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_hormonal_medicationsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/hormonal_medications.png",figure1)
rm(figure1)
## (е) Наследственная предрасположенность ----------------------------------------------------------------------- 

dfXlsxSnr_geneticsT <- dfXlsxSnr
dfXlsxSnr_geneticsT$genetics <- factor(dfXlsxSnr_geneticsT$genetics, 
                                       order=TRUE,
                                       levels=c("есть",
                                                "нет"))

figure1 <- ggplot(dfXlsxSnr_geneticsT, aes(x=group_separation, fill = genetics))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Наследственная предрасположенность"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_geneticsT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/genetics.png",figure1)
rm(figure1)
## (а) мутация BRCA ----------------------------------------------------------------------- 


dfXlsxSnr_mutation_brcaT <- subset(dfXlsxSnr,dfXlsxSnr$mutation_brca!="Оценка не проводилась")
dfXlsxSnr_mutation_brcaT$mutation_brca <- factor(dfXlsxSnr_mutation_brcaT$mutation_brca, 
                                                 order=TRUE,
                                                 levels=c("мутаций не выявлено",
                                                          "BRCA1",
                                                          "BRCA2",
                                                          "образование не визуал на ММГ",
                                                          "ложноположительный результат"))

figure1 <- ggplot(dfXlsxSnr_mutation_brcaT, aes(x=group_separation, fill = mutation_brca))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Мутация BRCA"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_mutation_brcaT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/mutation_brca.png",figure1)
rm(figure1)
## (б) сторона поражения при осмотре ----------------------------------------------------------------------- 

dfXlsxSnr_sideT <- dfXlsxSnr
dfXlsxSnr_sideT$side <- factor(dfXlsxSnr_sideT$side, 
                               order=TRUE,
                               levels=c("правая",
                                        "левая",
                                        "обе",
                                        "не пальпируются"))

figure1 <- ggplot(dfXlsxSnr_sideT, aes(x=group_separation, fill = side))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Сторона поражения "
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_sideT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/side.png",figure1)
rm(figure1)
## (в) Симптом втягивания соска----------------------------------------------------------------------- 

dfXlsxSnr_nipple_retractionT <- dfXlsxSnr
dfXlsxSnr_nipple_retractionT$nipple_retraction <- factor(dfXlsxSnr_nipple_retractionT$nipple_retraction, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "да"))

figure1 <- ggplot(dfXlsxSnr_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Симптом втягивания соска"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/nipple_retraction.png",figure1)
rm(figure1)

## (г) симптом выделения  ----------------------------------------------------------------------- 


dfXlsxSnr_nipple_retractionT <- dfXlsxSnr
dfXlsxSnr_nipple_retractionT$nipple_retraction <- factor(dfXlsxSnr_nipple_retractionT$nipple_retraction, 
                                                         order=TRUE,
                                                         levels=c("нет",
                                                                  "да"))

figure1 <- ggplot(dfXlsxSnr_nipple_retractionT, aes(x=group_separation, fill = nipple_retraction))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Симптом выделения"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_nipple_retractionT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/nipple_retraction.png",figure1)
rm(figure1)

## (д) тип структуры ACR   ----------------------------------------------------------------------- 
type_structure_acr

dfXlsxSnr_type_structure_acrT <- dfXlsxSnr
dfXlsxSnr_type_structure_acrT$type_structure_acr <- factor(dfXlsxSnr_type_structure_acrT$type_structure_acr, 
                                                           order=TRUE,
                                                           levels=c("А",
                                                                    "В",
                                                                    "С",
                                                                    "D"))

figure1 <- ggplot(dfXlsxSnr_type_structure_acrT, aes(x=group_separation, fill = type_structure_acr))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Тип структуры ACR"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_type_structure_acrT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/type_structure_acr.png",figure1)
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
                                                "центральный квадрант"))

figure1 <- ggplot(dfXlsxSnr_quadrantT, aes(x=group_separation, fill = quadrant))+
  geom_bar(position = "dodge")+
  labs(
    x= "Группа",
    y = "Количество",
    fill = "Квадрант локализации"
    
  )+
  theme(legend.position="top",
        axis.title.y = element_text(size = rel(1.3)),
        axis.title.x = element_text(size = rel(1.3)),
        axis.text = element_text(size = rel(1.3)),
        legend.text = element_text(size = rel(1.0)),
        legend.title=element_text(size = rel(1.3)))

rm(dfXlsxSnr_quadrantT)

figure1
ggsave("./XLXS_ver1/02_chapter_2/img/intro_Snr/quadrant.png",figure1)
rm(figure1)
