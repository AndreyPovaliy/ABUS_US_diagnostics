#####_01_DescrPart####

#####Personal####
dataFrameAll$satus_reproductive	<- factor(dataFrameAll$satus_reproductive, 
                                        levels=c(1, 2, 3, 4, 5, 6),
                                        labels = c(
                                          "1"="репродуктивный возраст",
                                          "2"="менопауза до 5 лет",
                                          "3"="менопауза > 5 лет",
                                          "4"="пременопауза",
                                          "5"="оперативная менопауза",
                                          "6"="беременность"
                                        ))

dataFrameAll$breast_surgery_before <- factor(dataFrameAll$breast_surgery_before  , 
                                           levels=c(1, 2),
                                           labels = c(
                                             "1"="Не было операций",
                                             "2"="Были операции"
                                           ))

dataFrameAll$hormonal_medications <- replace(dataFrameAll$hormonal_medications, dataFrameAll$hormonal_medications == 1, 3)
dataFrameAll$hormonal_medications	<- 	factor(dataFrameAll$hormonal_medications,
                                           levels=c(2,3),
                                           labels = c(
                                             "2"="нет",
                                             "3"="да"
                                             
                                           ))

dataFrameAll$genetics	<- 	factor(dataFrameAll$genetics,
                               levels=c(1,2),
                               labels = c(
                                 "1"="нет",
                                 "2"="есть"
                                 
                               ))


dataFrameAll$mutation_brca <- factor(dataFrameAll$mutation_brca,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="Оценка не проводилась",
                                     "1"="BRCA1",
                                     "2"="мутаций не выявлено",
                                     "3"="BRCA2",
                                     "4"="образование не визуал на ММГ",
                                     "5" = "ложноположительный результат"))





#####Diagnosis_primary####
dataFrameAll$diagnosis_primary <- factor(dataFrameAll$diagnosis_primary, 
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
dataFrameAll$complaints<- factor(dataFrameAll$complaints, 
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
dataFrameAll$side <- factor(dataFrameAll$side, 
                                 levels=c(1, 2, 3, 4),
                                 labels = c(
                                   "1"="правая",
                                   "2"="левая",
                                   "3"="обе",
                                   "4"="не пальпируются"
                                 ))


dataFrameAll$skin_symptoms	<- factor(dataFrameAll$skin_symptoms,
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

dataFrameAll$nipple_retraction	<- factor(dataFrameAll$nipple_retraction,
                                              levels=c(1,2),
                                              labels = c(
                                                "1"="нет",
                                                "2"="да"
                                              ))



dataFrameAll$nipple_release <- 	factor(dataFrameAll$nipple_release,
                                            levels=c(1,2,3,4),
                                            labels = c(
                                              "1"="нет",
                                              "2"= "светлые",
                                              "3"= "кровянистые",
                                              "4"="гноевидные"
                                            ))

dataFrameAll$type_structure_acr<- 	factor(dataFrameAll$type_structure_acr,
                                               levels=c(1,2,3,4),
                                               labels = c(
                                                 "1"="А",
                                                 "2"="В",
                                                 "3"="С",
                                                 "4"="D"
                                               ))

#####Quadrant####
dataFrameAll$quadrant <- 	factor(dataFrameAll$quadrant,
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
dataFrameAll$us_skin	<- 	factor(dataFrameAll$us_skin,
                                levels=c(1,2,3),
                                labels = c(
                                  "1"="не изменена",
                                  "2"="утолщена",
                                  "3"="другое"
                                  
                                ))

dataFrameAll$us_ducts	<- 	factor(dataFrameAll$us_ducts,
                                levels=c(1,2),
                                labels = c(
                                  "1"="не расширены",
                                  "2"="расширены"
                                  
                                ))

dataFrameAll$us_form	<- 	factor(dataFrameAll$us_form,
                               levels=c(0,1,2,3,4,5),
                               labels = c(
                                 "0"="нет узла",
                                 "1"="округлая",
                                 "2"="овальная",
                                 "3"="неправ",
                                 "4"= "другое",
                                 "5"="участок нарушения архитектоники"
                                 
                               ))

dataFrameAll$us_echogenicity_formation	<- 	factor(dataFrameAll$us_echogenicity_formation,
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



dataFrameAll$us_region_lymph_nodes	<- 	factor(dataFrameAll$us_region_lymph_nodes,
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

dataFrameAll$us_number_nodles <- 	factor(dataFrameAll$us_number_nodles,
                                         levels=c(1,2,3,4,5,6),
                                         labels = c(
                                           "1"="не опред",
                                           "2"="один",
                                           "3"="два",
                                           "4"="три",
                                           "5"="множественные",
                                           "6"="кисты"
                                           
                                         ))


dataFrameAll$us_category_birads	<- 	factor(dataFrameAll$us_category_birads,
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
dataFrameAll$us_nodle_contour	<- 	factor(dataFrameAll$us_nodle_contour,
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
dataFrameAll$us_background	<- 	factor(dataFrameAll$us_background,
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
dataFrameAll$us_formation	<- 	factor(dataFrameAll$us_formation,
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
dataFrameAll$us_nodle_size	<- 	factor(dataFrameAll$us_nodle_size,
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
dataFrameAll$us_structure <- 	factor(dataFrameAll$us_structure,
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
dataFrameAll$us_formation_blood_flow	<- 	factor(dataFrameAll$us_formation_blood_flow,
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
dataFrameAll$us_elastography	<- 	factor(dataFrameAll$us_elastography,
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
dataFrameAll$us_diagnosis	<- 	factor(dataFrameAll$us_diagnosis,
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
dataFrameAll$us_calcinates_micro_pure <- 	factor(dataFrameAll$us_calcinates_micro_pure,
                                                            levels=c(0,1,2,3),
                                                            labels = c(
                                                              "0"="нет",
                                                              "1"="определяются",
                                                              "2"="макрокальцинаты",
                                                              "3"="микрокальцинаты" 
                                                              
                                                            ))

#####USisTumor####
dataFrameAll$us_is_tumor <- replace(dataFrameAll$us_is_tumor, is.na(dataFrameAll$us_is_tumor), 2)



dataFrameAll$us_is_tumor <- 	factor(dataFrameAll$us_is_tumor,
                                   levels=c(0,1,2),
                                   labels = c(
                                     "0"="нет",
                                     "1"="да",
                                     "2"="не проводилось"
                                     
                                   ))






#####_02_MMG####
#####df_USDiscr####

dataFrameAll$mmg_conclusion_skin <- replace(dataFrameAll$mmg_conclusion_skin, is.na(dataFrameAll$mmg_conclusion_skin), 0)
dataFrameAll$mmg_conclusion_skin	<- 	factor(dataFrameAll$mmg_conclusion_skin,
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

dataFrameAll$mmg_areola <- replace(dataFrameAll$MMGareola, is.na(dataFrameAll$mmg_areola), 0)
dataFrameAll$mmg_areola	<- 	factor(dataFrameAll$mmg_areola,
                                    levels=c(0,1,2,3,4,5),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="подтянута",
                                      "3"="деформирована",
                                      "4"="отечна",
                                      "5"="уплотнена"
                                      
                                      
                                    ))

dataFrameAll$mmg_nipple <- replace(dataFrameAll$mmg_nipple, is.na(dataFrameAll$mmg_nipple), 0)
dataFrameAll$mmg_nipple	<- 	factor(dataFrameAll$mmg_nipple,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменен",
                                      "2"="втянут",
                                      "3"="отечен"
                                      
                                    ))
dataFrameAll$mmg_background_breast <- replace(dataFrameAll$mmg_background_breast, is.na(dataFrameAll$mmg_background_breast), 0)
dataFrameAll$mmg_background_breast	<- 	factor(dataFrameAll$mmg_background_breast,
                                               levels=c(0,1,2,3,4,5),
                                               labels = c(
                                                 "0"="не проводилось",
                                                 "1"="нормальная ткань МЖ",
                                                 "2"="диффузная ФКМ",
                                                 "3"="узловая мастопатия",
                                                 "4"="инволюция",
                                                 "5"="железистая ткань"
                                                 
                                               ))




dataFrameAll$mmg_number_formations_visualized <- replace(
  dataFrameAll$mmg_number_formations_visualized, 
  is.na(dataFrameAll$mmg_number_formations_visualized), 6)
dataFrameAll$mmg_number_formations_visualized	<- 	factor(dataFrameAll$mmg_number_formations_visualized,
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

dataFrameAll$mmg_axillary_lymph_nodes <- replace(dataFrameAll$mmg_axillary_lymph_nodes, is.na(dataFrameAll$mmg_axillary_lymph_nodes), 0)
dataFrameAll$mmg_axillary_lymph_nodes	<- 	factor(dataFrameAll$mmg_axillary_lymph_nodes,
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


dataFrameAll$mmg_number_nodles <- replace(dataFrameAll$mmg_number_nodles, is.na(dataFrameAll$mmg_number_nodles), 0)

dataFrameAll$mmg_number_nodles	<- 	factor(dataFrameAll$mmg_number_nodles,
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

dataFrameAll$mmg_category_birads <- replace(dataFrameAll$mmg_category_birads, is.na(dataFrameAll$mmg_category_birads), 0)
dataFrameAll$mmg_category_birads	<- 	factor(dataFrameAll$mmg_category_birads	,
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
dataFrameAll$mmg_nodle <- replace(dataFrameAll$mmg_nodle, is.na(dataFrameAll$mmg_nodle), 10)
dataFrameAll$mmg_nodle 	<- 	factor(dataFrameAll$mmg_nodle,
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
dataFrameAll$mmg_nodle_contour <- replace(dataFrameAll$mmg_nodle_contour, is.na(dataFrameAll$mmg_nodle_contour), 10)
dataFrameAll$mmg_nodle_contour	<- 	factor(dataFrameAll$mmg_nodle_contour,
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
dataFrameAll$mmg_nodle_size <- replace(dataFrameAll$mmg_nodle_size, is.na(dataFrameAll$mmg_nodle_size), 10)
dataFrameAll$mmg_nodle_size	<- 	factor(dataFrameAll$mmg_nodle_size,
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
dataFrameAll$mmg_calcifications <- replace(dataFrameAll$mmg_calcifications, is.na(dataFrameAll$mmg_calcifications), 12)
dataFrameAll$mmg_calcifications	<- 	factor(dataFrameAll$mmg_calcifications ,
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
dataFrameAll$mmg_conclusion<- replace(dataFrameAll$mmg_conclusion, is.na(dataFrameAll$mmg_conclusion), 10)
dataFrameAll$mmg_conclusion<- 	factor(dataFrameAll$mmg_conclusion,
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

#####MMGisTumor####

dataFrameAll$mmg_is_tumor <- replace(dataFrameAll$mmg_is_tumor, is.na(dataFrameAll$mmg_is_tumor), 2)


                                

dataFrameAll$mmg_is_tumor <- 	factor(dataFrameAll$mmg_is_tumor,
                                     levels=c(0,1,2),
                                     labels = c(
                                       "0"="нет",
                                       "1"="да",
                                       "2"="не проводилось"
                                       
                                     ))



#####_03_ABUS####
#####ABUSdiscr####
dataFrameAll$abus_skin <- replace(dataFrameAll$abus_skin, is.na(dataFrameAll$abus_skin), 0)
dataFrameAll$abus_skin	<- 	factor(dataFrameAll$abus_skin,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="утолщена",
                                      "3"="другое"
                                      
                                    ))
dataFrameAll$abus_echogenicity_formation <- replace(dataFrameAll$abus_echogenicity_formation, is.na(dataFrameAll$abus_echogenicity_formation), 10)
dataFrameAll$abus_echogenicity_formation	<- 	factor(dataFrameAll$abus_echogenicity_formation,
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


dataFrameAll$abus_symptom_retraction <- replace(dataFrameAll$abus_symptom_retraction, is.na(dataFrameAll$abus_symptom_retraction), 0)
dataFrameAll$abus_symptom_retraction	<- 	factor(dataFrameAll$abus_symptom_retraction,
                                                  levels=c(0,1,2),
                                                  labels = c(
                                                    "0"="не проводилось",
                                                    "1"="есть",
                                                    "2"="нет"
                                                    
                                                  ))


dataFrameAll$abus_number_nodles <- replace(dataFrameAll$abus_number_nodles, is.na(dataFrameAll$abus_number_nodles), 0)
dataFrameAll$abus_number_nodles	<- 	factor(dataFrameAll$abus_number_nodles,
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

dataFrameAll$abus_category_birads <- replace(dataFrameAll$abus_category_birads, is.na(dataFrameAll$abus_category_birads), 0)
dataFrameAll$abus_category_birads	<- 	factor(dataFrameAll$abus_category_birads,
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

dataFrameAll$abus_calcinates <- replace(dataFrameAll$abus_calcinates, is.na(dataFrameAll$abus_calcinates), 4)
dataFrameAll$abus_calcinates	<- 	factor(dataFrameAll$abus_calcinates,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"="нет",
                                            "1"="определяются",
                                            "2"="макрокальцинаты",
                                            "3"="микрокальцинаты",
                                            "4"="не проводилось"
                                            
                                          ))


#####ABUSnodleSize####
dataFrameAll$abus_nodle_size <- replace(dataFrameAll$abus_nodle_size, is.na(dataFrameAll$abus_nodle_size), 7)

dataFrameAll$abus_nodle_size	<- 	factor(dataFrameAll$abus_nodle_size,
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
dataFrameAll$abus_nodle_contours <- replace(dataFrameAll$abus_nodle_contours, is.na(dataFrameAll$abus_nodle_contours), 9)
dataFrameAll$abus_nodle_contours	<- 	factor(dataFrameAll$abus_nodle_contours,
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
dataFrameAll$abus_structure <- replace(dataFrameAll$abus_structure, is.na(dataFrameAll$abus_structure), 6)
dataFrameAll$abus_structure	<- 	factor(dataFrameAll$abus_structure,
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
dataFrameAll$abus_diagnosis <- replace(dataFrameAll$abus_diagnosis, is.na(dataFrameAll$abus_diagnosis), 14)

dataFrameAll$abus_diagnosis<- 	factor(dataFrameAll$abus_diagnosis,
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
#####ABUSisTumor####
dataFrameAll$abus_is_tumor <- replace(dataFrameAll$abus_is_tumor, is.na(dataFrameAll$abus_is_tumor), 2)


dataFrameAll$abus_is_tumor <- 	factor(dataFrameAll$abus_is_tumor,
                                       levels=c(0,1,2),
                                       labels = c(
                                         "0"="нет",
                                         "1"="да",
                                         "2"="не проводилось"
                                         
                                       ))




#####_04_MRSI####
dataFrameAll$mrsi_data<- replace(dataFrameAll$mrsi_data, is.na(dataFrameAll$mrsi_data), 0)
dataFrameAll$mrsi_data	<- 	factor(dataFrameAll$mrsi_data,
                                    levels=c(0,1,2),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="интраммарные лу",
                                      "2"="сегментарно-протоковая зона контрастирования"
                                    ))
dataFrameAll$mrsi_number_nodles <- replace(dataFrameAll$mrsi_number_nodles, is.na(dataFrameAll$mrsi_number_nodles), 0)
dataFrameAll$mrsi_number_nodles	<- 	factor(dataFrameAll$mrsi_number_nodles,
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

dataFrameAll$degree_malignancy <- replace(dataFrameAll$degree_malignancy, is.na(dataFrameAll$degree_malignancy), 4)
dataFrameAll$degree_malignancy <- 	factor(dataFrameAll$degree_malignancy,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"= "нет данных",
                                            "1"= "I (низкая 3-5 бал)",
                                            "2"= "II (умеренная 6-7 балов)",
                                            "3"= "III(высокая 8-9 бал)",
                                            "4"="не проводилось"
                                          ))

dataFrameAll$cytological_conclusion <- replace(dataFrameAll$cytological_conclusion, is.na(dataFrameAll$cytological_conclusion), 0)
dataFrameAll$cytological_conclusion	 <- 	factor(dataFrameAll$cytological_conclusion,
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
dataFrameAll$tumor_morphology_structure <- replace(dataFrameAll$tumor_morphology_structure, is.na(dataFrameAll$tumor_morphology_structure), 0)

dataFrameAll$tumor_morphology_structure	 <- 	factor(dataFrameAll$tumor_morphology_structure,
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
dataFrameAll$tumor_receptors <- replace(dataFrameAll$tumor_receptors, is.na(dataFrameAll$tumor_receptors), 0)

dataFrameAll$tumor_receptors	<- 	factor(dataFrameAll$tumor_receptors,
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
dataFrameAll$tumor_is <- replace(dataFrameAll$tumor_is, is.na(dataFrameAll$tumor_is), 2)


  
dataFrameAll$tumor_is <- 	factor(dataFrameAll$tumor_is,
                              levels=c(0,1,2),
                              labels = c(
                                "0"="нет",
                                "1"="да",
                                "2"="не проводилось"
                              ))





#####Add columns####
dataFrameAll$is_tumor_us <- factor(ifelse
                                 (dataFrameAll$us_diagnosis == "образование СА"
                                   | dataFrameAll$us_diagnosis == "мультфок са"
                                   | dataFrameAll$us_diagnosis == "мультицентричный са"
                                   , 1, 0),
                                 labels = c("Нет", "Да"))

dataFrameAll$is_tumor_mmg <- factor(ifelse
                                   (dataFrameAll$mmg_conclusion == "Susp Ca", 1, 0),
                                   labels = c("Нет", "Да"))


dataFrameAll$is_tumor_abus <- factor(ifelse
                                   (dataFrameAll$abus_diagnosis == "образование СА"
                                     | dataFrameAll$abus_diagnosis == "мультифок са"
                                     | dataFrameAll$abus_diagnosis== "мультицентричный са"
                                     , 1, 0),
                                   labels = c("Нет", "Да"))


dataFrameAll$is_tumor_histology <- factor(ifelse
                                              (dataFrameAll$tumor_morphology_structure == "инвазивный рак неспециального типа"
                                                | dataFrameAll$tumor_morphology_structure == "протоковый рак in situ"
                                                | dataFrameAll$tumor_morphology_structure== "инвазивный дольковый рак"
                                                , 1, 0),
                                              labels = c("Нет", "Да"))























