#####_01_DescrPart####

#####Personal####
df_Personal$SatusReproductive	<- factor(df_Personal$SatusReproductive, 
                                        levels=c(1, 2, 3, 4, 5, 6),
                                        labels = c(
                                          "1"="репродуктивный возраст",
                                          "2"="менопауза до 5 лет",
                                          "3"="менопауза > 5 лет",
                                          "4"="пременопауза",
                                          "5"="оперативная менопауза",
                                          "6"="беременность"
                                        ))

df_Personal$BreastSurgeryBefore <- factor(df_Personal$BreastSurgeryBefore  , 
                                          levels=c(1, 2),
                                          labels = c(
                                            "1"="Не было операций",
                                            "2"="Были операции"
                                          ))

df_Personal$hormonalMedications	<- 	factor(df_Personal$hormonalMedications,
                                           levels=c(1,2),
                                           labels = c(
                                             "1"="да",
                                             "2"="нет"
                                             
                                           ))

df_Personal$genetics	<- 	factor(df_Personal$genetics,
                                levels=c(1,2),
                                labels = c(
                                  "1"="нет",
                                  "2"="есть"
                                  
                                ))


df_Personal$MutationBRCA <- factor(df_Personal$MutationBRCA,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="Оценка не проводилась",
                                     "1"="BRCA1",
                                     "2"="мутаций не выявлено",
                                     "3"="BRCA2",
                                     "4"="образование не визуал на ММГ",
                                     "5" = "ложноположительный результат"))





#####Diagnosis_primary####
df_Diagnosis$DiagnosisPrimary <- factor(df_Diagnosis$DiagnosisPrimary, 
                                        levels=c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11),
                                        labels = c(
                                          "0"="Без патологии",
                                          "1"="Рак",
                                          "2"="Саркома",
                                          "3"="Фиброаденома", 
                                          "4"="Фиброзно-кистозная болезнь",
                                          "5"="Киста",
                                          "6"="Листовидная опухоль",
                                          "7"="Внутрипротоковая папиллома",
                                          "8"= "Гиперплазия",
                                          "9"= "Диффузный фиброаденоматоз",
                                          "10"="Локализованный фиброаденоматоз",
                                          "11"="Мастит"
                                        ))
#####Сomplaints####
df_Сomplaints$Сomplaints<- factor(df_Сomplaints$Сomplaints, 
                                  levels=c(1, 2, 3, 4, 5, 6,7),
                                  labels = c(
                                    "1"= "нет",
                                    "2"= "есть опухоль",
                                    "3"= "выделения из соска",
                                    "4"= "боль",
                                    "5"= "уплотнение",
                                    "6"= "гиперемия",
                                    "7"= "гипертермия"
                                  ))

#####Discr####
df_PersonalDiscr$Side <- factor(df_PersonalDiscr$Side, 
                                levels=c(1, 2, 3, 4),
                                labels = c(
                                  "1"="правая",
                                  "2"="левая",
                                  "3"="обе",
                                  "4"="не пальпируются"
                                ))


df_PersonalDiscr$skinSymptoms	<- factor(df_PersonalDiscr$skinSymptoms,
                                        levels=c(1,2,3,4,5,6,7),
                                        labels = c(
                                          "1"="нет",
                                          "2"="умбиликация кожи",
                                          "3"="лимонная корка",
                                          "4"= "отек",
                                          "5"= "гиперемия",
                                          "6"= "изъязвление",
                                          "7"= "эрозия"
                                        ))

df_PersonalDiscr$nippleRetraction	<- factor(df_PersonalDiscr$nippleRetraction,
                                            levels=c(1,2),
                                            labels = c(
                                              "1"="нет",
                                              "2"="да"
                                            ))



df_PersonalDiscr$nippleRelease <- 	factor(df_PersonalDiscr$nippleRelease,
                                          levels=c(1,2,3,4),
                                          labels = c(
                                            "1"="нет",
                                            "2"= "светлые",
                                            "3"= "кровянистые",
                                            "4"="гноевидные"
                                          ))

df_PersonalDiscr$typeRtructureACR<- 	factor(df_PersonalDiscr$typeRtructureACR,
                                            levels=c(1,2,3,4),
                                            labels = c(
                                              "1"="А",
                                              "2"="В",
                                              "3"="С",
                                              "4"="D"
                                            ))

#####Quadrant####
df_Quadrant$quadrant <- 	factor(df_Quadrant$quadrant,
                                levels=c(0,1,2,3,4,5,6,7,8,9,10,11),
                                labels = c(
                                  "0"="нет",
                                  "1"="в-нар",
                                  "2"="в-внутр",
                                  "3"="н-наруж",
                                  "4"="н-внутр",
                                  "5"="граница внутр",
                                  "6"="граница наруж",
                                  "7"= "граница верх",
                                  "8"= "граница нижних",
                                  "9"="вся железа",
                                  "10"= "1/2 железы",
                                  "11"="центральный"
                                ))




#####_01_US####
#####USDiscr####
df_USDiscr$USskin	<- 	factor(df_USDiscr$USskin,
                             levels=c(1,2,3),
                             labels = c(
                               "1"="не изменена",
                               "2"="утолщена",
                               "3"="другое"
                               
                             ))

df_USDiscr$USducts	<- 	factor(df_USDiscr$USducts,
                              levels=c(1,2),
                              labels = c(
                                "1"="не расширены",
                                "2"="расширены"
                                
                              ))

df_USDiscr$USform	<- 	factor(df_USDiscr$USform,
                             levels=c(0,1,2,3,4,5),
                             labels = c(
                               "0"="нет узла",
                               "1"="округлая",
                               "2"="овальная",
                               "3"="неправ",
                               "4"= "другое",
                               "5"="участок нарушения архитектоники"
                               
                             ))

df_USDiscr$USechogenicityFormation	<- 	factor(df_USDiscr$USechogenicityFormation,
                                              levels=c(0,1,2,3,4,5,6),
                                              labels = c(
                                                "0"="нет узла",
                                                "1"="гиперэхогенное",
                                                "2"="гипоэхогенное",
                                                "3"="изоэхогенное",
                                                "4"="смешанная",
                                                "5"="анэхогенное",
                                                "6"= "другое"
                                                
                                                
                                              ))



df_USDiscr$USregionLymphNodes	<- 	factor(df_USDiscr$USregionLymphNodes,
                                         levels=c(0,1,2,3,4,5,6),
                                         labels = c(
                                           "0"="не изменены",
                                           "1"="в прав надкл.обл.",
                                           "2"="в лев.надкл.обл.",
                                           "3"="в прав.подкл",
                                           "4"="в лев подкл",
                                           "5"="в прав.подм",
                                           "6"="в лев.подм."
                                         ))

df_USDiscr$numberNodlesUS <- 	factor(df_USDiscr$numberNodlesUS,
                                     levels=c(1,2,3,4,5,6),
                                     labels = c(
                                       "1"="не опред",
                                       "2"="один",
                                       "3"="два",
                                       "4"="три",
                                       "5"="множественные",
                                       "6"="кисты"
                                       
                                     ))


df_USDiscr$CategoryBiradsUltrasound	<- 	factor(df_USDiscr$CategoryBiradsUltrasound,
                                               levels=c(1,2,3,4,5,6,7,8,9),
                                               labels = c(
                                                 "1"="Birads 1",
                                                 "2"="Birads 2",
                                                 "3"="Birads 3",
                                                 "4"="Birads 4а",
                                                 "5"="Birads 4b",
                                                 "6"="Birads 4c",
                                                 "7"="Birads 5",
                                                 "8"="Birads 6",
                                                 "9"="Birads 0"
                                               ))


#####USnodleContour####
df_USnodleContour$USnodleContour	<- 	factor(df_USnodleContour$USnodleContour,
                                            levels=c(0,1,2,3,4,5,6,7),
                                            labels = c(
                                              "0"="нет узла",
                                              "1"="ровные",
                                              "2"="неровные",
                                              "3"="полициклические",
                                              "4"="звездчатые",
                                              "5"="единич. тяжи по одному из контуров",
                                              "6"= "другое",
                                              "7"="волнистые"
                                              
                                              
                                            ))

#####USbackground####
df_USbackground$USbackground	<- 	factor(df_USbackground$USbackground,
                                        levels=c(1,2,3,4,5,6),
                                        labels = c(
                                          "1"="жировая ткань",
                                          "2"="железистая ткань",
                                          "3"="склероз",
                                          "4"= "ФКМ",
                                          "5"="кисты",
                                          "6"="инволюция"
                                          
                                        ))

#####USformation####
df_USformation$USformation	<- 	factor(df_USformation$USformation,
                                      levels=c(0,1,2,3,4,5,6,7,8,9,10,11),
                                      labels = c(
                                        "0"="нет",
                                        "1"= "граница",
                                        "2"="верх-наруж. Кв.",
                                        "3"="верх-внутр. Кв.",
                                        "4"="ниж-наруж",
                                        "5"="ниж-внутр",
                                        "6"="центр.отдел",
                                        "7"="вся железа",
                                        "8"="верхних",
                                        "9"="нижних",
                                        "10"="внутренних",
                                        "11"= "наружных"
                                        
                                        
                                      ))

#####USnodleSize####
df_USnodleSize$USnodleSize	<- 	factor(df_USnodleSize$USnodleSize,
                                      levels=c(0,1,2,3,4,5,6),
                                      labels = c(
                                        "0"="нет",
                                        "1"="0,5-1,0 см",
                                        "2"= "1,1-1,5 см",
                                        "3"= "1,5-2,0 см",
                                        "4"="2,1-2,5 см",
                                        "5"= "2,5-3,0 см",
                                        "6"= "более 3 см"
                                        
                                        
                                      ))

#####USstructure####
df_USstructure$USstructure<- 	factor(df_USstructure$USstructure,
                                     levels=c(0,1,2,3,4,5,6),
                                     labels = c(
                                       "0"="нет узла",
                                       "1"="однородная",
                                       "2"="неоднородная",
                                       "3"="с жидкостным содержимым",
                                       "4"="с кальцинатами",
                                       "5"= "наличие внутрикистозных пристен.разрастаний",
                                       "6"= "другое"
                                       
                                     ))

#####USformationBloodFlow####
df_USformationBloodFlow$USformationBloodFlow	<- 	factor(df_USformationBloodFlow$USformationBloodFlow,
                                                        levels=c(0,1,2,3,4,5,6),
                                                        labels = c(
                                                          "0"="нет",
                                                          "1"="опред. Внутри",
                                                          "2"="по периферии",
                                                          "3"="не определяется",
                                                          "4"="интранодулярный",
                                                          "5"="перинодулярный",
                                                          "6"="смешанный"
                                                          
                                                        ))
#####USelastography####
df_USelastography$USelastography	<- 	factor(df_USelastography$USelastography,
                                            levels=c(0,1,2,3,4,5),
                                            labels = c(
                                              "1" = "0 эластотип",
                                              "2"="1 эластотип",
                                              "3"= "2 эластотип",
                                              "4"="3 эластотип",
                                              "5"= "4 эластотип",
                                              "0"="нет данных"
                                            ))


#####USdiagnosis####
df_USdiagnosis$Usdiagnosis	<- 	factor(df_USdiagnosis$Usdiagnosis,
                                      levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16),
                                      labels = c(
                                        "0"="без патологии",
                                        "1"="ФА единичная",
                                        "2"="ФА множествненные",
                                        "3"="киста",
                                        "4"="кисты",
                                        "5"="сложная киста",
                                        "6"="образование СА",
                                        "7"="Внутрипротоковая папиллома молочной железы",
                                        "8"="ФКМ",
                                        "9"="Диф фам",
                                        "10"="мультфок са",
                                        "11"="мультицентричный са",
                                        "12"="лок фам",
                                        "13"= "липома",
                                        "14"= "мастит",
                                        "15"= "интрамаммарн.лу",
                                        "16"="цистаденопапиллома"
                                        
                                        
                                      ))

#####UScalcinatesMicroPure####
df_UScalcinatesMicroPure$UScalcinatesMicroPure <- 	factor(df_UScalcinatesMicroPure$UScalcinatesMicroPure,
                                                          levels=c(0,1,2,3),
                                                          labels = c(
                                                            "0"="нет",
                                                            "1"="определяются",
                                                            "2"="макрокальцинаты",
                                                            "3"="микрокальцинаты" 
                                                            
                                                          ))

#####USisTumor####
df_USisTumor$USisTumor <- 	factor(df_USisTumor$USisTumor,
                                  levels=c(0,1),
                                  labels = c(
                                    "0"="нет",
                                    "1"="да"
                                  ))


#####_02_MMG####
#####df_USDiscr####
df_MMGDescr$conclusionMMGskin	<- 	factor(df_MMGDescr$conclusionMMGskin,
                                         levels=c(0,1,2,3,4,5,6),
                                         labels = c(
                                           "0"= "не выполнялась",
                                           "1"="не изменена",
                                           "2"="отечна",
                                           "3"="локальное утолщение",
                                           "4"="выбухание",
                                           "5"="диффузное утолщение",
                                           "6"="диагностическая ММГ"
                                         ))

df_MMGDescr$MMGareola	<- 	factor(df_MMGDescr$MMGareola,
                                 levels=c(1,2,3,4,5,99),
                                 labels = c(
                                   "1"="не изменена",
                                   "2"="подтянута",
                                   "3"="деформирована",
                                   "4"="отечна",
                                   "5"="уплотнена",
                                   "99"="не проводилась"
                                   
                                 ))

df_MMGDescr$MMGnipple	<- 	factor(df_MMGDescr$MMGnipple,
                                 levels=c(1,2,3,99),
                                 labels = c(
                                   "1"="не изменен",
                                   "2"="втянут",
                                   "3"="отечен",
                                   "99"="не проводилась"
                                   
                                 ))

df_MMGDescr$MMGbackgroundBreast	<- 	factor(df_MMGDescr$MMGbackgroundBreast,
                                           levels=c(1,2,3,4,5,99),
                                           labels = c(
                                             "1"="нормальная ткань МЖ",
                                             "2"="диффузная ФКМ",
                                             "3"="узловая мастопатия",
                                             "4"="инволюция",
                                             "5"="железистая ткань",
                                             "99"="не проводилась"
                                             
                                           ))





df_MMGDescr$MMGnumberFormationsVisualized	<- 	factor(df_MMGDescr$MMGnumberFormationsVisualized	,
                                                     levels=c(0,1,2,3,4,5,99),
                                                     labels = c(
                                                       "0"="не определяется",
                                                       "1"="одно",
                                                       "2"="два",
                                                       "3"="три",
                                                       "4"="четыре",
                                                       "5"="участок асимметрии",
                                                       "99"="не проводилась"
                                                     ))

df_MMGDescr$MMGaxillaryLymphNodes	<- 	factor(df_MMGDescr$MMGaxillaryLymphNodes,
                                             levels=c(1,2,3,4,5,6,99),
                                             labels = c(
                                               "1"="не визуализируются",
                                               "2"="не увеличены",
                                               "3"="увеличены",
                                               "4"="мтс. изменены",
                                               "5"="нет данных",
                                               "6"="увеличены, жировая инволюция",
                                               "99"="не проводилась"
                                               
                                             ))



df_MMGDescr$numberNodlesMMG	<- 	factor(df_MMGDescr$numberNodlesMMG,
                                       levels=c(1,2,3,4,5,6,99),
                                       labels = c(
                                         "1"="не опред",
                                         "2"="один",
                                         "3"="два",
                                         "4"="три",
                                         "5"="множественные",
                                         "6"="ФКМ",
                                         "99"="не проводилась"
                                         
                                       ))

df_MMGDescr$CategoryBiradsMMG	<- 	factor(df_MMGDescr$CategoryBiradsMMG	,
                                         levels=c(1,2,3,4,5,6,7,8,9,99),
                                         labels = c(
                                           "1"="Birads 1",
                                           "2"="Birads 2",
                                           "3"="Birads 3",
                                           "4"="Birads 4а",
                                           "5"="Birads 4b",
                                           "6"="Birads 4c",
                                           "7"="Birads 5",
                                           "8"="Birads 6",
                                           "9"="Birads 0",
                                           "99"="не проводилась"
                                           
                                         ))



#####MMGnodle####
df_MMGnodle$MMGnodle 	<- 	factor(df_MMGnodle$MMGnodle,
                                 levels=c(0,1,2,3,4,5,6,7,8,9,99),
                                 labels = c(
                                   "0"="нет узла",
                                   "1"="неровный",
                                   "2"="дольчатый",
                                   "3"="лучистый",
                                   "4"="ровный",
                                   "5"="волнистый",
                                   "6"="фокус уплотнения",
                                   "7"="участок нарушения архитектоники",
                                   "8"= "участок уплотнения",
                                   "9"="образование",
                                   "99"="не проводилась"
                                   
                                 ))

#####MMGnodle####
df_MMGnodleContour$MMGnodleContour	<- 	factor(df_MMGnodleContour$MMGnodleContour,
                                              levels=c(0,1,2,3,4,5,99),
                                              labels = c(
                                                "0"="нет",
                                                "1"="четкий",
                                                "2"="нечеткий",
                                                "3"="ровный",
                                                "4"="размытый",
                                                "5"="полициклический",
                                                "99"="не проводилась"
                                                
                                              ))


#####MMGnodleSize####
df_MMGnodleSize$MMGnodleSize	<- 	factor(df_MMGnodleSize$MMGnodleSize,
                                        levels=c(0,1,2,3,4,5,6,99),
                                        labels = c(
                                          "0"="нет",
                                          "1"="0,5-1,0",
                                          "2"="1,1-1,5см",
                                          "3"="1,6-2,0см",
                                          "4"="2,1-2,5см",
                                          "5"="2,6-3,0см",
                                          "6"="более 3 см",
                                          "99"="не проводилась"
                                          
                                        ))

#####MMGcalcifications####

df_MMGcalcifications$MMGcalcifications	<- 	factor(df_MMGcalcifications$MMGcalcifications,
                                                  levels=c(0,1,2,3,4,5,6,7,8,9,10,11,99),
                                                  labels = c(
                                                    "0"="нет",
                                                    "1"="полиморфные",
                                                    "2"="единичные мелкие",
                                                    "3"="крупные",
                                                    "4"="диффузные",
                                                    "5"="сгруппированные",
                                                    "6"="микрокальцинаты",
                                                    "7"="разнокалиберные",
                                                    "8"="плеоморфные",
                                                    "9"="глыбчатые",
                                                    "10"="множественные точечные",
                                                    "11"="по типу пудры",
                                                    "99"="не проводилась"
                                                    
                                                  ))

#####conclusionMMG####
df_conclusionMMG$conclusionMMG<- 	factor(df_conclusionMMG$conclusionMMG,
                                         levels=c(0,1,2,3,4,5,6,7,8,9,99),
                                         labels = c(
                                           "0"="Без патологии",
                                           "1"="Диф фам",
                                           "2"="Susp Ca",
                                           "3"="Кластер кальцинатов",
                                           "4"="Лок аденоз",
                                           "5"="фиброаденома",
                                           "6"="Киста",
                                           "7"="Мастит",
                                           "8"="интраммарные лимфоузлы",
                                           "9"="образование",
                                           "99"="не проводилась"
                                         ))

#####MMGisTumor####


df_MMGisTumor$isTumor <- 	factor(df_MMGisTumor$isTumor,
                                 levels=c(0,1),
                                 labels = c(
                                   "0"="нет",
                                   "1"="да"
                                   
                                 ))



#####_03_ABUS####
#####ABUSdiscr####
df_ABUSdiscr$ABUSskin	<- 	factor(df_ABUSdiscr$ABUSskin,
                                 levels=c(1,2,3,99),
                                 labels = c(
                                   "1"="не изменена",
                                   "2"="утолщена",
                                   "3"="другое",
                                   "99"="не проводилось исследование"
                                   
                                 ))

df_ABUSdiscr$ABUSechogenicityFormation	<- 	factor(df_ABUSdiscr$ABUSechogenicityFormation,
                                                  levels=c(0,1,2,3,4,5,99),
                                                  labels = c(
                                                    "0"="нет узла",
                                                    "1"="гиперэхогенное",
                                                    "2"="гипоэхогенное",
                                                    "3"="изоэхогенное",
                                                    "4"="смешанная",
                                                    "5"="анэхогенное",
                                                    "99"="не проводилось исследование"
                                                    
                                                  ))



df_ABUSdiscr$ABUSsymptomRetraction	<- 	factor(df_ABUSdiscr$ABUSsymptomRetraction,
                                              levels=c(1,2,99),
                                              labels = c(
                                                "1"="есть",
                                                "2"="нет",
                                                "99"="не проводилось исследование"
                                                
                                              ))



df_ABUSdiscr$numberNodlesABUS	<- 	factor(df_ABUSdiscr$numberNodlesABUS,
                                         levels=c(1,2,3,4,5,6,99),
                                         labels = c(
                                           "1"="не опред",
                                           "2"="один",
                                           "3"="два",
                                           "4"="три",
                                           "5"="множественные",
                                           "6"="кисты",
                                           "99"="не проводилось исследование"
                                           
                                         ))
df_ABUSdiscr$CategoryBiradsABUS	<- 	factor(df_ABUSdiscr$CategoryBiradsABUS,
                                           levels=c(1,2,3,4,5,6,7,8,9,99),
                                           labels = c(
                                             "1"="Birads 1",
                                             "2"="Birads 2",
                                             "3"="Birads 3",
                                             "4"="Birads 4а",
                                             "5"="Birads 4b",
                                             "6"="Birads 4c",
                                             "7"="Birads 5",
                                             "8"="Birads 6",
                                             "9"="Birads 0",
                                             "99"="не проводилось исследование"
                                           ))

df_ABUSdiscr$ABUScalcinates	<- 	factor(df_ABUSdiscr$ABUScalcinates,
                                       levels=c(0,1,2,3,99),
                                       labels = c(
                                         "0"="нет",
                                         "1"="определяются",
                                         "2"="макрокальцинаты",
                                         "3"="микрокальцинаты",
                                         "99"="не проводилось исследование"
                                         
                                       ))


#####ABUSnodleSize####
df_ABUSnodleSize$ABUSnodleSize	<- 	factor(df_ABUSnodleSize$ABUSnodleSize,
                                          levels=c(0,1,2,3,4,5,6,99),
                                          labels = c(
                                            "0"="нет",
                                            "1"="0,5-1,0 см",
                                            "2"= "1,1-1,5 см",
                                            "3"="1,5-2,0 см",
                                            "4"="2,1-2,5 см",
                                            "5"= "2,5-3,0 см",
                                            "6"="более 3 см",
                                            "99"="не проводилось исследование"
                                          ))
#####ABUSnodleContours####
df_ABUSnodleContours$ABUSnodleContours	<- 	factor(df_ABUSnodleContours$ABUSnodleContours,
                                                  levels=c(0,1,2,3,4,5,6,7,8,99),
                                                  labels = c(
                                                    "0"="нет узла",
                                                    "1"="ровные",
                                                    "2"="неровные",
                                                    "3"="полициклические",
                                                    "4"="четкие",
                                                    "5"="нечеткие",
                                                    "6"="волнистые",
                                                    "7"= "другое",
                                                    "8"= "нарушение архитектоники",
                                                    "99"="не проводилось исследование"
                                                    
                                                  ))
#####ABUSstructure####
df_ABUSstructure$ABUSstructure	<- 	factor(df_ABUSstructure$ABUSstructure,
                                          levels=c(0,1,2,3,4,5,99),
                                          labels = c(
                                            "0"="нет узла",
                                            "1"="однородная",
                                            "2"="неоднородная",
                                            "3"="с жидкостным содержимым",
                                            "4"="с кальцинатами",
                                            "5"= "наличие внутрикистозных пристен.разрастаний",
                                            "99"="не проводилось исследование"
                                            
                                          ))

#####ABUSdiagnosis####
df_ABUSdiagnosis$ABUSdiagnosis<- 	factor(df_ABUSdiagnosis$ABUSdiagnosis,
                                         levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,99),
                                         labels = c(
                                           "0"="без патологии",
                                           "1"="ФА единичная",
                                           "2"="ФА множествненные",
                                           "3"="киста",
                                           "4"="кисты",
                                           "5"="сложная киста",
                                           "6"="образование СА",
                                           "7"="ВПП",
                                           "8"="мультифок са",
                                           "9"="мультицентричный са",
                                           "10"="склерозирующий аденоз",
                                           "11"="ФКМ",
                                           "12"="диф фам",
                                           "13"="Лок Фам",
                                           "99"="не проводилось исследование"
                                           
                                         ))
#####ABUSisTumor####
df_ABUSisTumor$isTumor <- 	factor(df_ABUSisTumor$isTumor,
                                  levels=c(0,1),
                                  labels = c(
                                    "0"="нет",
                                    "1"="да"
                                    
                                  ))




#####_04_MRSI####
df_DsMRSI$MRIdata <- replace(df_DsMRSI$MRIdata, is.na(df_DsMRSI$MRIdata), 0)
df_DsMRSI$MRIdata	<- 	factor(df_DsMRSI$MRIdata,
                             levels=c(0,1,2),
                             labels = c(
                               "0"="не проводилось",
                               "1"="интраммарные лу",
                               "2"="сегментарно-протоковая зона контрастирования"
                             ))
df_DsMRSI$numberNodlesMRI <- replace(df_DsMRSI$numberNodlesMRI, is.na(df_DsMRSI$numberNodlesMRI), 0)
df_DsMRSI$numberNodlesMRI	<- 	factor(df_DsMRSI$numberNodlesMRI,
                                     levels=c(0,1,2,3,4,5,6),
                                     labels = c(
                                       "0"="не проводилось",
                                       "1"="не опред",
                                       "2"="один",
                                       "3"="два",
                                       "4"="три",
                                       "5"="множественные",
                                       "6"="сегментарно-очаговая зона контрастирования"
                                       
                                     ))


#####_05_Tumor####
#####DescrTumor####

df_DescrTumor$degree_malignancy <- replace(df_DescrTumor$degree_malignancy, is.na(df_DescrTumor$degree_malignancy), 4)
df_DescrTumor$degree_malignancy <- 	factor(df_DescrTumor$degree_malignancy,
                                           levels=c(0,1,2,3,4),
                                           labels = c(
                                             "0"= "нет данных",
                                             "1"= "I (низкая 3-5 бал)",
                                             "2"= "II (умеренная 6-7 балов)",
                                             "3"= "III(высокая 8-9 бал)",
                                             "4"="не проводилось"
                                           ))

df_DescrTumor$cytological_conclusion <- replace(df_DescrTumor$cytological_conclusion, is.na(df_DescrTumor$cytological_conclusion), 0)
df_DescrTumor$cytological_conclusion	 <- 	factor(df_DescrTumor$cytological_conclusion,
                                                 levels=c(0,1,2,3,4,5,6),
                                                 labels = c(
                                                   "0"="не проводилось",
                                                   "1"="интрадуктальная папиллома",
                                                   "2"="Цистаденопапиллома",
                                                   "3"="фиброзно-кистозные изменения",
                                                   "4"="белковая субстанция, капли жира",
                                                   "5"="фиброаденома",
                                                   "6"="фиброзно- кистозный характер изменений"
                                                   
                                                 ))

#####morphologyStructureTumor####
df_morphologyStructureTumor$morphologyStructureTumor <- replace(df_morphologyStructureTumor$morphologyStructureTumor, is.na(df_morphologyStructureTumor$morphologyStructureTumor), 0)

df_morphologyStructureTumor$morphologyStructureTumor	 <- 	factor(df_morphologyStructureTumor$morphologyStructureTumor,
                                                                 levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13),
                                                                 labels = c(
                                                                   "0"="не проводилось",
                                                                   "1"="инвазивный рак неспециального типа",
                                                                   "2"="периканаликулярная фиброаденома",
                                                                   "3"="склерозирующий аденоз",
                                                                   "4"="фиброз стромы с гиалинозом",
                                                                   "5"="фиброаденома",
                                                                   "6"="миксоидная фиброаденома",
                                                                   "7"="протоковый рак in situ",
                                                                   "8"="инвазивный дольковый рак",
                                                                   "9"="ткань молочной железы с фиброзом стромы",
                                                                   "10" = "интраканаликулярная фиброаденома",
                                                                   "11" = "нелактационный мастит",
                                                                   "12"="очаговый аденоз",
                                                                   "13"= "фиброаденома с гиперплазией флоридного типа"
                                                                 ))






#####Receptors####
df_Receptors$Receptors <- replace(df_Receptors$Receptors, is.na(df_Receptors$Receptors), 0)

df_Receptors$Receptors	<- 	factor(df_Receptors$Receptors,
                                  levels=c(0,1,2,3,4,5,6,7,8,9),
                                  labels = c(
                                    "0"="не проводилось",
                                    "1"="РЭ",
                                    "2"="РП",
                                    "3"="Her-2\neu",
                                    "4"= "РЭ+РП",
                                    "5"="РЭ+Her2\neu",
                                    "6"= "РП+Her2\neu",
                                    "7"="РЭ+РП+Her-2\neu",
                                    "8"="негатив",
                                    "9"="РЭ+РП+Her-2\neu негатив"
                                    
                                  ))
#####isTumor####
df_isTumor$isTumor <- 	factor(df_isTumor$isTumor,
                              levels=c(0,1),
                              labels = c(
                                "0"="нет",
                                "1"="да"
                              ))





#####Add columns####
df_USdiagnosis$isTumor <- factor(ifelse
                                 (df_USdiagnosis$Usdiagnosis == "образование СА"
                                   | df_USdiagnosis$Usdiagnosis == "мультфок са"
                                   | df_USdiagnosis$Usdiagnosis == "мультицентричный са"
                                   , 1, 0), 
                                 labels = c("Нет", "Да"))

df_conclusionMMG$isTumor <- factor(ifelse
                                   (df_conclusionMMG$conclusionMMG == "Susp Ca", 1, 0), 
                                   labels = c("Нет", "Да"))

df_ABUSdiagnosis$isTumor <- factor(ifelse
                                   (df_ABUSdiagnosis$ABUSdiagnosis == "образование СА"
                                     | df_ABUSdiagnosis$ABUSdiagnosis == "мультифок са"
                                     | df_ABUSdiagnosis$ABUSdiagnosis== "мультицентричный са"
                                     , 1, 0), 
                                   labels = c("Нет", "Да"))


df_morphologyStructureTumor$isTumor <- factor(ifelse
                                              (df_morphologyStructureTumor$morphologyStructureTumor == "инвазивный рак неспециального типа"
                                                | df_morphologyStructureTumor$morphologyStructureTumor == "протоковый рак in situ"
                                                | df_morphologyStructureTumor$morphologyStructureTumor== "инвазивный дольковый рак"
                                                , 1, 0), 
                                              labels = c("Нет", "Да"))