#####_01_DescrPart####

#####Personal####
dfPersonal$satus_reproductive	<- factor(dfPersonal$satus_reproductive, 
                                        levels=c(1, 2, 3, 4, 5, 6),
                                        labels = c(
                                          "1"="репродуктивный возраст",
                                          "2"="менопауза до 5 лет",
                                          "3"="менопауза > 5 лет",
                                          "4"="пременопауза",
                                          "5"="оперативная менопауза",
                                          "6"="беременность"
                                        ))

dfPersonal$breast_surgery_before <- factor(dfPersonal$breast_surgery_before  , 
                                           levels=c(1, 2),
                                           labels = c(
                                             "1"="Не было операций",
                                             "2"="Были операции"
                                           ))

dfPersonal$hormonal_medications	<- 	factor(dfPersonal$hormonal_medications,
                                           levels=c(1,2),
                                           labels = c(
                                             "1"="да",
                                             "2"="нет"
                                             
                                           ))

dfPersonal$genetics	<- 	factor(dfPersonal$genetics,
                               levels=c(1,2),
                               labels = c(
                                 "1"="нет",
                                 "2"="есть"
                                 
                               ))


dfPersonal$mutation_brca <- factor(dfPersonal$mutation_brca,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="Оценка не проводилась",
                                     "1"="BRCA1",
                                     "2"="мутаций не выявлено",
                                     "3"="BRCA2",
                                     "4"="образование не визуал на ММГ",
                                     "5" = "ложноположительный результат"))





#####Diagnosis_primary####
dfDiagnosis$diagnosis_primary <- factor(dfDiagnosis$diagnosis_primary, 
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
dfСomplaints$complaints<- factor(dfСomplaints$complaints, 
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
dfPatientDescribe$side <- factor(dfPatientDescribe$side, 
                                 levels=c(1, 2, 3, 4),
                                 labels = c(
                                   "1"="правая",
                                   "2"="левая",
                                   "3"="обе",
                                   "4"="не пальпируются"
                                 ))


dfPatientDescribe$skin_symptoms	<- factor(dfPatientDescribe$skin_symptoms,
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

dfPatientDescribe$nipple_retraction	<- factor(dfPatientDescribe$nipple_retraction,
                                              levels=c(1,2),
                                              labels = c(
                                                "1"="нет",
                                                "2"="да"
                                              ))



dfPatientDescribe$nipple_release <- 	factor(dfPatientDescribe$nipple_release,
                                            levels=c(1,2,3,4),
                                            labels = c(
                                              "1"="нет",
                                              "2"= "светлые",
                                              "3"= "кровянистые",
                                              "4"="гноевидные"
                                            ))

dfPatientDescribe$type_structure_acr<- 	factor(dfPatientDescribe$type_structure_acr,
                                               levels=c(1,2,3,4),
                                               labels = c(
                                                 "1"="А",
                                                 "2"="В",
                                                 "3"="С",
                                                 "4"="D"
                                               ))

#####Quadrant####
dfQuadrant$quadrant <- 	factor(dfQuadrant$quadrant,
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
dfUsDescribe$us_skin	<- 	factor(dfUsDescribe$us_skin,
                                levels=c(1,2,3),
                                labels = c(
                                  "1"="не изменена",
                                  "2"="утолщена",
                                  "3"="другое"
                                  
                                ))

dfUsDescribe$USducts	<- 	factor(dfUsDescribe$us_ducts,
                                levels=c(1,2),
                                labels = c(
                                  "1"="не расширены",
                                  "2"="расширены"
                                  
                                ))

dfUsDescribe$USform	<- 	factor(dfUsDescribe$us_form,
                               levels=c(0,1,2,3,4,5),
                               labels = c(
                                 "0"="нет узла",
                                 "1"="округлая",
                                 "2"="овальная",
                                 "3"="неправ",
                                 "4"= "другое",
                                 "5"="участок нарушения архитектоники"
                                 
                               ))

dfUsDescribe$USechogenicityFormation	<- 	factor(dfUsDescribe$us_echogenicity_formation,
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



dfUsDescribe$us_region_lymph_nodes	<- 	factor(dfUsDescribe$us_region_lymph_nodes,
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

dfUsDescribe$us_number_nodles <- 	factor(dfUsDescribe$us_number_nodles,
                                         levels=c(1,2,3,4,5,6),
                                         labels = c(
                                           "1"="не опред",
                                           "2"="один",
                                           "3"="два",
                                           "4"="три",
                                           "5"="множественные",
                                           "6"="кисты"
                                           
                                         ))


dfUsDescribe$us_category_birads	<- 	factor(dfUsDescribe$us_category_birads,
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
dfUsNodleContour$us_nodle_contour	<- 	factor(dfUsNodleContour$us_nodle_contour,
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
dfUsBackground$us_background	<- 	factor(dfUsBackground$us_background,
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
dfUsFormation$us_formation	<- 	factor(dfUsFormation$us_formation,
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
dfUsNodleSize$us_nodle_size	<- 	factor(dfUsNodleSize$us_nodle_size,
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
dfUsStructure$us_structure<- 	factor(dfUsStructure$us_structure,
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
dfUsFormationBloodFlow$us_formation_blood_flow	<- 	factor(dfUsFormationBloodFlow$us_formation_blood_flow,
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
dfUsElastography$us_elastography	<- 	factor(dfUsElastography$us_elastography,
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
dfUsDiagnosis$us_diagnosis	<- 	factor(dfUsDiagnosis$us_diagnosis,
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
dfUsCalcinatesMicroPure$us_calcinates_micro_pure <- 	factor(dfUsCalcinatesMicroPure$us_calcinates_micro_pure,
                                                            levels=c(0,1,2,3),
                                                            labels = c(
                                                              "0"="нет",
                                                              "1"="определяются",
                                                              "2"="макрокальцинаты",
                                                              "3"="микрокальцинаты" 
                                                              
                                                            ))

#####USisTumor####
dfUsIsTumor$us_is_tumor <- replace(dfUsIsTumor$us_is_tumor, is.na(dfUsIsTumor$us_is_tumor), 2)



dfUsIsTumor$us_is_tumor <- 	factor(dfUsIsTumor$us_is_tumor,
                                   levels=c(0,1,2),
                                   labels = c(
                                     "0"="нет",
                                     "1"="да",
                                     "2"="не проводилось"
                                     
                                   ))






#####_02_MMG####
#####df_USDiscr####

dfMmgDescribe$mmg_conclusion_skin <- replace(dfMmgDescribe$mmg_conclusion_skin, is.na(dfMmgDescribe$mmg_conclusion_skin), 0)
dfMmgDescribe$mmg_conclusion_skin	<- 	factor(dfMmgDescribe$mmg_conclusion_skin,
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

dfMmgDescribe$mmg_areola <- replace(dfMmgDescribe$MMGareola, is.na(dfMmgDescribe$mmg_areola), 0)
dfMmgDescribe$mmg_areola	<- 	factor(dfMmgDescribe$mmg_areola,
                                    levels=c(0,1,2,3,4,5),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="подтянута",
                                      "3"="деформирована",
                                      "4"="отечна",
                                      "5"="уплотнена"
                                      
                                      
                                    ))

dfMmgDescribe$mmg_nipple <- replace(dfMmgDescribe$mmg_nipple, is.na(dfMmgDescribe$mmg_nipple), 0)
dfMmgDescribe$mmg_nipple	<- 	factor(dfMmgDescribe$mmg_nipple,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменен",
                                      "2"="втянут",
                                      "3"="отечен"
                                      
                                    ))
dfMmgDescribe$mmg_background_breast <- replace(dfMmgDescribe$mmg_background_breast, is.na(dfMmgDescribe$mmg_background_breast), 0)
dfMmgDescribe$mmg_background_breast	<- 	factor(dfMmgDescribe$mmg_background_breast,
                                               levels=c(0,1,2,3,4,5),
                                               labels = c(
                                                 "0"="не проводилось",
                                                 "1"="нормальная ткань МЖ",
                                                 "2"="диффузная ФКМ",
                                                 "3"="узловая мастопатия",
                                                 "4"="инволюция",
                                                 "5"="железистая ткань"
                                                 
                                               ))




dfMmgDescribe$mmg_number_formations_visualized <- replace(
  dfMmgDescribe$mmg_number_formations_visualized, 
  is.na(dfMmgDescribe$mmg_number_formations_visualized), 6)
dfMmgDescribe$mmg_number_formations_visualized	<- 	factor(dfMmgDescribe$mmg_number_formations_visualized,
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

dfMmgDescribe$mmg_axillary_lymph_nodes <- replace(dfMmgDescribe$mmg_axillary_lymph_nodes, is.na(dfMmgDescribe$mmg_axillary_lymph_nodes), 0)
dfMmgDescribe$mmg_axillary_lymph_nodes	<- 	factor(dfMmgDescribe$mmg_axillary_lymph_nodes,
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


dfMmgDescribe$mmg_number_nodles <- replace(dfMmgDescribe$mmg_number_nodles, is.na(dfMmgDescribe$mmg_number_nodles), 0)

dfMmgDescribe$mmg_number_nodles	<- 	factor(dfMmgDescribe$mmg_number_nodles,
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

dfMmgDescribe$mmg_category_birads <- replace(dfMmgDescribe$mmg_category_birads, is.na(dfMmgDescribe$mmg_category_birads), 0)
dfMmgDescribe$mmg_category_birads	<- 	factor(dfMmgDescribe$mmg_category_birads	,
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
dfMmgNodle$mmg_nodle <- replace(dfMmgNodle$mmg_nodle, is.na(dfMmgNodle$mmg_nodle), 10)
dfMmgNodle$mmg_nodle 	<- 	factor(dfMmgNodle$mmg_nodle,
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
dfMmgNodleContour$mmg_nodle_contour <- replace(dfMmgNodleContour$mmg_nodle_contour, is.na(dfMmgNodleContour$mmg_nodle_contour), 10)
dfMmgNodleContour$mmg_nodle_contour	<- 	factor(dfMmgNodleContour$mmg_nodle_contour,
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
dfMmgNodleSize$mmg_nodle_size <- replace(dfMmgNodleSize$mmg_nodle_size, is.na(dfMmgNodleSize$mmg_nodle_size), 10)
dfMmgNodleSize$mmg_nodle_size	<- 	factor(dfMmgNodleSize$mmg_nodle_size,
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
dfMmgCalcifications$mmg_calcifications <- replace(dfMmgCalcifications$mmg_calcifications, is.na(dfMmgCalcifications$mmg_calcifications), 12)
dfMmgCalcifications$mmg_calcifications	<- 	factor(dfMmgCalcifications$mmg_calcifications ,
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
dfMmgConclusion$mmg_conclusion<- replace(dfMmgConclusion$mmg_conclusion, is.na(dfMmgConclusion$mmg_conclusion), 10)
dfMmgConclusion$mmg_conclusion<- 	factor(dfMmgConclusion$mmg_conclusion,
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

dfMmgIsTumor$mmg_is_tumor <- replace(dfMmgIsTumor$mmg_is_tumor, is.na(dfMmgIsTumor$mmg_is_tumor), 2)


                                

dfMmgIsTumor$mmg_is_tumor <- 	factor(dfMmgIsTumor$mmg_is_tumor,
                                     levels=c(0,1,2),
                                     labels = c(
                                       "0"="нет",
                                       "1"="да",
                                       "2"="не проводилось"
                                       
                                     ))



#####_03_ABUS####
#####ABUSdiscr####
dfAbusDescribe$abus_skin <- replace(dfAbusDescribe$abus_skin, is.na(dfAbusDescribe$abus_skin), 0)
dfAbusDescribe$abus_skin	<- 	factor(dfAbusDescribe$abus_skin,
                                    levels=c(0,1,2,3),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="не изменена",
                                      "2"="утолщена",
                                      "3"="другое"
                                      
                                    ))
dfAbusDescribe$abus_echogenicity_formation <- replace(dfAbusDescribe$abus_echogenicity_formation, is.na(dfAbusDescribe$abus_echogenicity_formation), 10)
dfAbusDescribe$abus_echogenicity_formation	<- 	factor(dfAbusDescribe$abus_echogenicity_formation,
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


dfAbusDescribe$abus_symptom_retraction <- replace(dfAbusDescribe$abus_symptom_retraction, is.na(dfAbusDescribe$abus_symptom_retraction), 0)
dfAbusDescribe$abus_symptom_retraction	<- 	factor(dfAbusDescribe$abus_symptom_retraction,
                                                  levels=c(0,1,2),
                                                  labels = c(
                                                    "0"="не проводилось",
                                                    "1"="есть",
                                                    "2"="нет"
                                                    
                                                  ))


dfAbusDescribe$abus_number_nodles <- replace(dfAbusDescribe$abus_number_nodles, is.na(dfAbusDescribe$abus_number_nodles), 0)
dfAbusDescribe$abus_number_nodles	<- 	factor(dfAbusDescribe$abus_number_nodles,
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

dfAbusDescribe$abus_category_birads <- replace(dfAbusDescribe$abus_category_birads, is.na(dfAbusDescribe$abus_category_birads), 0)
dfAbusDescribe$abus_category_birads	<- 	factor(dfAbusDescribe$abus_category_birads,
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

dfAbusDescribe$abus_calcinates <- replace(dfAbusDescribe$abus_calcinates, is.na(dfAbusDescribe$abus_calcinates), 4)
dfAbusDescribe$abus_calcinates	<- 	factor(dfAbusDescribe$abus_calcinates,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"="нет",
                                            "1"="определяются",
                                            "2"="макрокальцинаты",
                                            "3"="микрокальцинаты",
                                            "4"="не проводилось"
                                            
                                          ))


#####ABUSnodleSize####
dfAbusNodleSize$abus_nodle_size <- replace(dfAbusNodleSize$abus_nodle_size, is.na(dfAbusNodleSize$abus_nodle_size), 7)

dfAbusNodleSize$abus_nodle_size	<- 	factor(dfAbusNodleSize$abus_nodle_size,
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
dfAbusNodleContours$abus_nodle_contours <- replace(dfAbusNodleContours$abus_nodle_contours, is.na(dfAbusNodleContours$abus_nodle_contours), 9)
dfAbusNodleContours$abus_nodle_contours	<- 	factor(dfAbusNodleContours$abus_nodle_contours,
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
dfAbusStructure$abus_structure <- replace(dfAbusStructure$abus_structure, is.na(dfAbusStructure$abus_structure), 6)
dfAbusStructure$abus_structure	<- 	factor(dfAbusStructure$abus_structure,
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
dfAbusDiagnosis$abus_diagnosis <- replace(dfAbusDiagnosis$abus_diagnosis, is.na(dfAbusDiagnosis$abus_diagnosis), 14)

dfAbusDiagnosis$abus_diagnosis<- 	factor(dfAbusDiagnosis$abus_diagnosis,
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
dfAbusIsTumor$abus_is_tumor <- replace(dfAbusIsTumor$abus_is_tumor, is.na(dfAbusIsTumor$abus_is_tumor), 2)


dfAbusIsTumor$abus_is_tumor <- 	factor(dfAbusIsTumor$abus_is_tumor,
                                       levels=c(0,1,2),
                                       labels = c(
                                         "0"="нет",
                                         "1"="да",
                                         "2"="не проводилось"
                                         
                                       ))




#####_04_MRSI####
dfMrsiDescribe$mrsi_data<- replace(dfMrsiDescribe$mrsi_data, is.na(dfMrsiDescribe$mrsi_data), 0)
dfMrsiDescribe$mrsi_data	<- 	factor(dfMrsiDescribe$mrsi_data,
                                    levels=c(0,1,2),
                                    labels = c(
                                      "0"="не проводилось",
                                      "1"="интраммарные лу",
                                      "2"="сегментарно-протоковая зона контрастирования"
                                    ))
dfMrsiDescribe$mrsi_number_nodles <- replace(dfMrsiDescribe$mrsi_number_nodles, is.na(dfMrsiDescribe$mrsi_number_nodles), 0)
dfMrsiDescribe$mrsi_number_nodles	<- 	factor(dfMrsiDescribe$mrsi_number_nodles,
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

dfDescrTumor$degree_malignancy <- replace(dfDescrTumor$degree_malignancy, is.na(dfDescrTumor$degree_malignancy), 4)
dfDescrTumor$degree_malignancy <- 	factor(dfDescrTumor$degree_malignancy,
                                          levels=c(0,1,2,3,4),
                                          labels = c(
                                            "0"= "нет данных",
                                            "1"= "I (низкая 3-5 бал)",
                                            "2"= "II (умеренная 6-7 балов)",
                                            "3"= "III(высокая 8-9 бал)",
                                            "4"="не проводилось"
                                          ))

dfDescrTumor$cytological_conclusion <- replace(dfDescrTumor$cytological_conclusion, is.na(dfDescrTumor$cytological_conclusion), 0)
dfDescrTumor$cytological_conclusion	 <- 	factor(dfDescrTumor$cytological_conclusion,
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
dfMorphologyStructureTumor$tumor_morphology_structure <- replace(dfMorphologyStructureTumor$tumor_morphology_structure, is.na(dfMorphologyStructureTumor$tumor_morphology_structure), 0)

dfMorphologyStructureTumor$tumor_morphology_structure	 <- 	factor(dfMorphologyStructureTumor$tumor_morphology_structure,
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
dfReceptors$tumor_receptors <- replace(dfReceptors$tumor_receptors, is.na(dfReceptors$tumor_receptors), 0)

dfReceptors$tumor_receptors	<- 	factor(dfReceptors$tumor_receptors,
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
dfIsTumor$tumor_is <- replace(dfIsTumor$tumor_is, is.na(dfIsTumor$tumor_is), 2)


  
dfIsTumor$tumor_is <- 	factor(dfIsTumor$tumor_is,
                              levels=c(0,1,2),
                              labels = c(
                                "0"="нет",
                                "1"="да",
                                "2"="не проводилось"
                              ))





#####Add columns####
dfUsDiagnosis$is_tumor <- factor(ifelse
                                 (dfUsDiagnosis$us_diagnosis == "образование СА"
                                   | dfUsDiagnosis$us_diagnosis == "мультфок са"
                                   | dfUsDiagnosis$us_diagnosis == "мультицентричный са"
                                   , 1, 0),
                                 labels = c("Нет", "Да"))

dfMmgConclusion$is_tumor <- factor(ifelse
                                   (dfMmgConclusion$mmg_conclusion == "Susp Ca", 1, 0),
                                   labels = c("Нет", "Да"))

dfAbusDiagnosis$is_tumor <- factor(ifelse
                                   (dfAbusDiagnosis$abus_diagnosis == "образование СА"
                                     | dfAbusDiagnosis$abus_diagnosis == "мультифок са"
                                     | dfAbusDiagnosis$abus_diagnosis== "мультицентричный са"
                                     , 1, 0),
                                   labels = c("Нет", "Да"))


dfMorphologyStructureTumor$is_tumor <- factor(ifelse
                                              (dfMorphologyStructureTumor$tumor_morphology_structure == "инвазивный рак неспециального типа"
                                                | dfMorphologyStructureTumor$tumor_morphology_structure == "протоковый рак in situ"
                                                | dfMorphologyStructureTumor$tumor_morphology_structure== "инвазивный дольковый рак"
                                                , 1, 0),
                                              labels = c("Нет", "Да"))

























