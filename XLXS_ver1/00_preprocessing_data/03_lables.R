#####_01_DescrPart####

#####Personal####
dfXlsx$satus_reproductive	<- factor(dfXlsx$satus_reproductive, 
                                        levels=c(1, 2, 3, 4, 5, 6),
                                        labels = c(
                                          "1"="репродуктивный возраст",
                                          "2"="менопауза до 5 лет",
                                          "3"="менопауза > 5 лет",
                                          "4"="пременопауза",
                                          "5"="оперативная менопауза",
                                          "6"="беременность"
                                        ))

dfXlsx$breast_surgery_before <- factor(dfXlsx$breast_surgery_before  , 
                                           levels=c(1, 2),
                                           labels = c(
                                             "1"="Не было операций",
                                             "2"="Были операции"
                                           ))

dfXlsx$hormonal_medications	<- 	factor(dfXlsx$hormonal_medications,
                                           levels=c(1,2),
                                           labels = c(
                                             "1"="да",
                                             "2"="нет"
                                             
                                           ))

dfXlsx$genetics	<- 	factor(dfXlsx$genetics,
                               levels=c(1,2),
                               labels = c(
                                 "1"="нет",
                                 "2"="есть"
                                 
                               ))


dfXlsx$mutation_brca <- factor(dfXlsx$mutation_brca,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="Оценка не проводилась",
                                     "1"="BRCA1",
                                     "2"="мутаций не выявлено",
                                     "3"="BRCA2",
                                     "4"="образование не визуал на ММГ",
                                     "5" = "ложноположительный результат"))





#####Diagnosis_primary####
dfXlsx$diagnosis_primary <- factor(dfXlsx$diagnosis_primary, 
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

#####Complaints####
dfXlsx$complaints<- factor(dfXlsx$complaints, 
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


#####Describe####
dfXlsx$side <- factor(dfXlsx$side, 
                                 levels=c(1, 2, 3, 4),
                                 labels = c(
                                   "1"="правая",
                                   "2"="левая",
                                   "3"="обе",
                                   "4"="не пальпируются"
                                 ))


dfXlsx$skin_symptoms	<- factor(dfXlsx$skin_symptoms,
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


dfXlsx$nipple_retraction	<- factor(dfXlsx$nipple_retraction,
                                              levels=c(1,2),
                                              labels = c(
                                                "1"="нет",
                                                "2"="да"
                                              ))



dfXlsx$nipple_release <- 	factor(dfXlsx$nipple_release,
                                            levels=c(1,2,3,4),
                                            labels = c(
                                              "1"="нет",
                                              "2"= "светлые",
                                              "3"= "кровянистые",
                                              "4"="гноевидные"
                                            ))

dfXlsx$type_structure_acr<- 	factor(dfXlsx$type_structure_acr,
                                               levels=c(1,2,3,4),
                                               labels = c(
                                                 "1"="А",
                                                 "2"="В",
                                                 "3"="С",
                                                 "4"="D"
                                               ))


#####Quadrant####
dfXlsx$quadrant <- 	factor(dfXlsx$quadrant,
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
dfXlsx$us_skin	<- 	factor(dfXlsx$us_skin,
                                levels=c(1,2,3),
                                labels = c(
                                  "1"="не изменена",
                                  "2"="утолщена",
                                  "3"="другое"
                                  
                                ))


dfXlsx$us_ducts	<- 	factor(dfXlsx$us_ducts,
                                levels=c(1,2),
                                labels = c(
                                  "1"="не расширены",
                                  "2"="расширены"
                                  
                                ))



dfXlsx$us_form	<- 	factor(dfXlsx$us_form,
                               levels=c(0,1,2,3,4,5),
                               labels = c(
                                 "0"="нет узла",
                                 "1"="округлая",
                                 "2"="овальная",
                                 "3"="неправ",
                                 "4"= "другое",
                                 "5"="участок нарушения архитектоники"
                                 
                               ))


dfXlsx$us_echogenicity_formation	<- 	factor(dfXlsx$us_echogenicity_formation,
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




dfXlsx$us_region_lymph_nodes	<- 	factor(dfXlsx$us_region_lymph_nodes,
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



dfXlsx$us_number_nodles <- 	factor(dfXlsx$us_number_nodles,
                                         levels=c(1,2,3,4,5,6),
                                         labels = c(
                                           "1"="не опред",
                                           "2"="один",
                                           "3"="два",
                                           "4"="три",
                                           "5"="множественные",
                                           "6"="кисты"
                                           
                                         ))

dfXlsx$us_category_birads	<- 	factor(dfXlsx$us_category_birads,
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
dfXlsx$us_nodle_contour	<- 	factor(dfXlsx$us_nodle_contour,
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
dfXlsx$us_background	<- 	factor(dfXlsx$us_background,
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
dfXlsx$us_formation	<- 	factor(dfXlsx$us_formation,
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
dfXlsx$us_nodle_size	<- 	factor(dfXlsx$us_nodle_size,
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
dfXlsx$us_structure<- 	factor(dfXlsx$us_structure,
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
dfXlsx$us_formation_blood_flow	<- 	factor(dfXlsx$us_formation_blood_flow,
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
dfXlsx$us_elastography	<- 	factor(dfXlsx$us_elastography,
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
dfXlsx$us_diagnosis	<- 	factor(dfXlsx$us_diagnosis,
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
dfXlsx$us_calcinates_micro_pure <- 	factor(dfXlsx$us_calcinates_micro_pure,
                                                            levels=c(0,1,2,3),
                                                            labels = c(
                                                              "0"="нет",
                                                              "1"="определяются",
                                                              "2"="макрокальцинаты",
                                                              "3"="микрокальцинаты" 
                                                              
                                                            ))








#####_02_MMG####
#####df_MMGDiscr####

dfXlsx$mmg_conclusion_skin <- replace(dfXlsx$mmg_conclusion_skin, is.na(dfXlsx$mmg_conclusion_skin), 0)
dfXlsx$mmg_conclusion_skin	<- 	factor(dfXlsx$mmg_conclusion_skin,
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



dfXlsx$mmg_areola <- replace(dfXlsx$mmg_areola, is.na(dfXlsx$mmg_areola), 0)
dfXlsx$mmg_areola	<- 	factor(dfXlsx$mmg_areola,
                                    levels=c(0,1,2,3,4,5),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="подтянута",
                                      "3"="деформирована",
                                      "4"="отечна",
                                      "5"="уплотнена"
                                      
                                      
                                    ))



dfXlsx$mmg_nipple <- replace(dfXlsx$mmg_nipple, is.na(dfXlsx$mmg_nipple), 0)
dfXlsx$mmg_nipple	<- 	factor(dfXlsx$mmg_nipple,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменен",
                                      "2"="втянут",
                                      "3"="отечен"
                                      
                                    ))



dfXlsx$mmg_background_breast <- replace(dfXlsx$mmg_background_breast, is.na(dfXlsx$mmg_background_breast), 0)
dfXlsx$mmg_background_breast	<- 	factor(dfXlsx$mmg_background_breast,
                                               levels=c(0,1,2,3,4,5),
                                               labels = c(
                                                 "0"="не проводилось",
                                                 "1"="нормальная ткань МЖ",
                                                 "2"="диффузная ФКМ",
                                                 "3"="узловая мастопатия",
                                                 "4"="инволюция",
                                                 "5"="железистая ткань"
                                                 
                                               ))



dfXlsx$mmg_number_formations_visualized <- replace(
  dfXlsx$mmg_number_formations_visualized, 
  is.na(dfXlsx$mmg_number_formations_visualized), 6)
dfXlsx$mmg_number_formations_visualized	<- 	factor(dfXlsx$mmg_number_formations_visualized,
                                                          levels=c(0,1,2,3,4,5,6),
                                                          labels = c(
                                                            "0"="не определяется",
                                                            "1"="одно",
                                                            "2"="два",
                                                            "3"="три",
                                                            "4"="четыре",
                                                            "5"="участок асимметрии",
                                                            "6"="не проводилось"
                                                            
                                                          ))



dfXlsx$mmg_axillary_lymph_nodes <- replace(dfXlsx$mmg_axillary_lymph_nodes, is.na(dfXlsx$mmg_axillary_lymph_nodes), 0)
dfXlsx$mmg_axillary_lymph_nodes	<- 	factor(dfXlsx$mmg_axillary_lymph_nodes,
                                                  levels=c(0,1,2,3,4,5,6),
                                                  labels = c(
                                                    "0"="не проводилось",
                                                    "1"="не визуализируются",
                                                    "2"="не увеличены",
                                                    "3"="увеличены",
                                                    "4"="мтс. изменены",
                                                    "5"="нет данных",
                                                    "6"="увеличены, жировая инволюция"
                                                    
                                                  ))


dfXlsx$mmg_number_nodles <- replace(dfXlsx$mmg_number_nodles, is.na(dfXlsx$mmg_number_nodles), 0)

dfXlsx$mmg_number_nodles	<- 	factor(dfXlsx$mmg_number_nodles,
                                           levels=c(0,1,2,3,4,5,6),
                                           labels = c(
                                             "0"="не проводилось",
                                             "1"="не опред",
                                             "2"="один",
                                             "3"="два",
                                             "4"="три",
                                             "5"="множественные",
                                             "6"="ФКМ"
                                           ))



dfXlsx$mmg_category_birads <- replace(dfXlsx$mmg_category_birads, is.na(dfXlsx$mmg_category_birads), 0)
dfXlsx$mmg_category_birads	<- 	factor(dfXlsx$mmg_category_birads	,
                                             levels=c(0,1,2,3,4,5,6,7,8,9),
                                             labels = c(
                                               "0"="не проводилось",
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



#####MMGnodle####
dfXlsx$mmg_nodle <- replace(dfXlsx$mmg_nodle, is.na(dfXlsx$mmg_nodle), 10)
dfXlsx$mmg_nodle 	<- 	factor(dfXlsx$mmg_nodle,
                                 levels=c(0,1,2,3,4,5,6,7,8,9,10),
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
                                   "10"="не проводилось"
                                   
                                 ))


#####MMGnodle####
dfXlsx$mmg_nodle_contour <- replace(dfXlsx$mmg_nodle_contour, is.na(dfXlsx$mmg_nodle_contour), 10)
dfXlsx$mmg_nodle_contour	<- 	factor(dfXlsx$mmg_nodle_contour,
                                               levels=c(0,1,2,3,4,5,10),
                                               labels = c(
                                                 "0"="нет",
                                                 "1"="четкий",
                                                 "2"="нечеткий",
                                                 "3"="ровный",
                                                 "4"="размытый",
                                                 "5"="полициклический",
                                                 "10"="не проводилось"
                                                 
                                               ))


#####MMGnodleSize####
dfXlsx$mmg_nodle_size <- replace(dfXlsx$mmg_nodle_size, is.na(dfXlsx$mmg_nodle_size), 10)
dfXlsx$mmg_nodle_size	<- 	factor(dfXlsx$mmg_nodle_size,
                                         levels=c(0,1,2,3,4,5,6,10),
                                         labels = c(
                                           "0"="нет",
                                           "1"="0,5-1,0",
                                           "2"="1,1-1,5см",
                                           "3"="1,6-2,0см",
                                           "4"="2,1-2,5см",
                                           "5"="2,6-3,0см",
                                           "6"="более 3 см",
                                           "10"="не проводилось"
                                           
                                         ))

#####MMGcalcifications####
dfXlsx$mmg_calcifications <- replace(dfXlsx$mmg_calcifications, is.na(dfXlsx$mmg_calcifications), 12)
dfXlsx$mmg_calcifications	<- 	factor(dfXlsx$mmg_calcifications ,
                                                  levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12),
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
                                                    "12"="не проводилось"
                                                    
                                                  ))


#####conclusionMMG####
dfXlsx$mmg_conclusion<- replace(dfXlsx$mmg_conclusion, is.na(dfXlsx$mmg_conclusion), 10)
dfXlsx$mmg_conclusion<- 	factor(dfXlsx$mmg_conclusion,
                                         levels=c(0,1,2,3,4,5,6,7,8,9,10),
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
                                           "10"="не проводилось"
                                         ))




#####_03_ABUS####
#####ABUSdiscr####
dfXlsx$abus_skin <- replace(dfXlsx$abus_skin, is.na(dfXlsx$abus_skin), 0)
dfXlsx$abus_skin	<- 	factor(dfXlsx$abus_skin,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="утолщена",
                                      "3"="другое"
                                      
                                    ))


dfXlsx$abus_echogenicity_formation <- replace(dfXlsx$abus_echogenicity_formation, is.na(dfXlsx$abus_echogenicity_formation), 10)
dfXlsx$abus_echogenicity_formation	<- 	factor(dfXlsx$abus_echogenicity_formation,
                                                      levels=c(0,1,2,3,4,5,10),
                                                      labels = c(
                                                        "0"="нет узла",
                                                        "1"="гиперэхогенное",
                                                        "2"="гипоэхогенное",
                                                        "3"="изоэхогенное",
                                                        "4"="смешанная",
                                                        "5"="анэхогенное",
                                                        "10"="не проводилось"
                                                        
                                                      ))


dfXlsx$abus_symptom_retraction <- replace(dfXlsx$abus_symptom_retraction, is.na(dfXlsx$abus_symptom_retraction), 0)
dfXlsx$abus_symptom_retraction	<- 	factor(dfXlsx$abus_symptom_retraction,
                                                  levels=c(0,1,2),
                                                  labels = c(
                                                    "0"="не проводилось",
                                                    "1"="есть",
                                                    "2"="нет"
                                                    
                                                  ))


dfXlsx$abus_number_nodles <- replace(dfXlsx$abus_number_nodles, is.na(dfXlsx$abus_number_nodles), 0)
dfXlsx$abus_number_nodles	<- 	factor(dfXlsx$abus_number_nodles,
                                             levels=c(0,1,2,3,4,5,6),
                                             labels = c(
                                               "0"="не проводилось",
                                               "1"="не опред",
                                               "2"="один",
                                               "3"="два",
                                               "4"="три",
                                               "5"="множественные",
                                               "6"="кисты"
                                               
                                             ))


dfXlsx$abus_category_birads <- replace(dfXlsx$abus_category_birads, is.na(dfXlsx$abus_category_birads), 0)
dfXlsx$abus_category_birads	<- 	factor(dfXlsx$abus_category_birads,
                                               levels=c(0,1,2,3,4,5,6,7,8,9),
                                               labels = c(
                                                 "0"="не проводилось",
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

dfXlsx$abus_calcinates <- replace(dfXlsx$abus_calcinates, is.na(dfXlsx$abus_calcinates), 4)
dfXlsx$abus_calcinates	<- 	factor(dfXlsx$abus_calcinates,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"="нет",
                                            "1"="определяются",
                                            "2"="макрокальцинаты",
                                            "3"="микрокальцинаты",
                                            "4"="не проводилось"
                                            
                                          ))


#####ABUSnodleSize####
dfXlsx$abus_nodle_size <- replace(dfXlsx$abus_nodle_size, is.na(dfXlsx$abus_nodle_size), 7)

dfXlsx$abus_nodle_size	<- 	factor(dfXlsx$abus_nodle_size,
                                           levels=c(0,1,2,3,4,5,6,7),
                                           labels = c(
                                             "0"="нет",
                                             "1"="0,5-1,0 см",
                                             "2"= "1,1-1,5 см",
                                             "3"="1,5-2,0 см",
                                             "4"="2,1-2,5 см",
                                             "5"= "2,5-3,0 см",
                                             "6"="более 3 см",
                                             "7"="не проводилось"
                                           ))

#####ABUSnodleContours####
dfXlsx$abus_nodle_contours <- replace(dfXlsx$abus_nodle_contours, is.na(dfXlsx$abus_nodle_contours), 9)
dfXlsx$abus_nodle_contours	<- 	factor(dfXlsx$abus_nodle_contours,
                                                   levels=c(0,1,2,3,4,5,6,7,8,9),
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
                                                     "9"="не проводилось"
                                                     
                                                   ))


#####ABUSstructure####
dfXlsx$abus_structure <- replace(dfXlsx$abus_structure, is.na(dfXlsx$abus_structure), 6)
dfXlsx$abus_structure	<- 	factor(dfXlsx$abus_structure,
                                          levels=c(0,1,2,3,4,5,6),
                                          labels = c(
                                            "0"="нет узла",
                                            "1"="однородная",
                                            "2"="неоднородная",
                                            "3"="с жидкостным содержимым",
                                            "4"="с кальцинатами",
                                            "5"= "наличие внутрикистозных пристен.разрастаний",
                                            "6"="не проводилось"
                                            
                                          ))

#####ABUSdiagnosis####
dfXlsx$abus_diagnosis <- replace(dfXlsx$abus_diagnosis, is.na(dfXlsx$abus_diagnosis), 14)
dfXlsx$abus_diagnosis<- 	factor(dfXlsx$abus_diagnosis,
                                         levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14),
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
                                           "14"="не проводилось"
                                           
                                         ))





#####_04_MRSI####
dfXlsx$mrsi_data<- replace(dfXlsx$mrsi_data, is.na(dfXlsx$mrsi_data), 0)
dfXlsx$mrsi_data	<- 	factor(dfXlsx$mrsi_data,
                                    levels=c(0,1,2),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="интраммарные лу",
                                      "2"="сегментарно-протоковая зона контрастирования"
                                    ))

dfXlsx$mrsi_number_nodles <- replace(dfXlsx$mrsi_number_nodles, is.na(dfXlsx$mrsi_number_nodles), 0)
dfXlsx$mrsi_number_nodles	<- 	factor(dfXlsx$mrsi_number_nodles,
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

dfXlsx$degree_malignancy <- replace(dfXlsx$degree_malignancy, is.na(dfXlsx$degree_malignancy), 4)
dfXlsx$degree_malignancy <- 	factor(dfXlsx$degree_malignancy,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"= "нет данных",
                                            "1"= "I (низкая 3-5 бал)",
                                            "2"= "II (умеренная 6-7 балов)",
                                            "3"= "III(высокая 8-9 бал)",
                                            "4"="не проводилось"
                                          ))

dfXlsx$cytological_conclusion <- replace(dfXlsx$cytological_conclusion, is.na(dfXlsx$cytological_conclusion), 0)
dfXlsx$cytological_conclusion	 <- 	factor(dfXlsx$cytological_conclusion,
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
dfXlsx$tumor_morphology_structure <- replace(dfXlsx$tumor_morphology_structure, is.na(dfXlsx$tumor_morphology_structure), 0)

dfXlsx$tumor_morphology_structure	 <- 	factor(dfXlsx$tumor_morphology_structure,
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






####Receptors####
dfXlsx$tumor_receptors <- replace(dfXlsx$tumor_receptors, is.na(dfXlsx$tumor_receptors), 0)

dfXlsx$tumor_receptors	<- 	factor(dfXlsx$tumor_receptors,
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




#####Add columns####
dfXlsx$us_is_tumor <- factor(ifelse
                                 (dfXlsx$us_diagnosis == "образование СА"
                                   | dfXlsx$us_diagnosis == "мультфок са"
                                   | dfXlsx$us_diagnosis == "мультицентричный са"
                                   , 1, 0),
                                 labels = c("Нет", "Да"))

dfXlsx$mmg_is_tumor <- factor(ifelse
                                   (dfXlsx$mmg_conclusion == "Susp Ca", 1, 0),
                                   labels = c("Нет", "Да"))

dfXlsx$abus_is_tumor <- factor(ifelse
                                   (dfXlsx$abus_diagnosis == "образование СА"
                                     | dfXlsx$abus_diagnosis == "мультифок са"
                                     | dfXlsx$abus_diagnosis== "мультицентричный са"
                                     , 1, 0),
                                   labels = c("Нет", "Да"))


dfXlsx$hist_is_tumor <- factor(ifelse
                                              (dfXlsx$tumor_morphology_structure == "инвазивный рак неспециального типа"
                                                | dfXlsx$tumor_morphology_structure == "протоковый рак in situ"
                                                | dfXlsx$tumor_morphology_structure== "инвазивный дольковый рак"
                                                , 1, 0),
                                              labels = c("Нет", "Да"))





#####Write Xlsx####
write.xlsx(dfXlsx, "ABUS_US_MG_WXLS_lab.xlsx")


















