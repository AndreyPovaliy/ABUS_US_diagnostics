df_Abus$Diagnosis_primary <- factor(df_Abus$Diagnosis_primary, 
                            levels=c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
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
                              "10"="Локализованный фиброаденоматоз"
                              ))


df_Abus$Side <- factor(df_Abus$Side, 
                       levels=c(1, 2, 3, 4),
                       labels = c(
                         "1"="правая",
                         "2"="левая",
                         "3"="обе",
                         "4"="не пальпируются"
                       ))

df_Abus$Satus_reproductive	<- factor(df_Abus$Satus_reproductive, 
                                     levels=c(1, 2, 3, 4,5,6),
                                     labels = c(
                                       "1"="репродуктивный возраст",
                                       "2"="менопауза до 5 лет",
                                       "3"="менопауза > 5 лет",
                                       "4"="пременопауза",
                                       "5"="оперативная менопауза",
                                       "6"="беременность"
                                     ))
                                       



df_Abus$Сomplaints<- factor(df_Abus$Сomplaints, 
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
                              

df_Abus$Breast_Surgery_before <- factor(df_Abus$Breast_Surgery_before  , 
                                        levels=c(1, 2),
                                        labels = c(
                                          "1"="Не было операций",
                                          "2"="Были операции"
                                        ))


df_Abus$skin_symptoms	<- factor(df_Abus$skin_symptoms,
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

df_Abus$nipple_retraction	<- factor(df_Abus$nipple_retraction,
                                 levels=c(1,2),
                                 labels = c(
                                   "1"="нет",
                                   "2"="да"
                                 ))
  
    

df_Abus$nipple_release <- 	factor(df_Abus$nipple_release,
                              levels=c(1,2,3,4),
                              labels = c(
                                "1"="нет",
                                "2"= "светлые",
                                "3"= "кровянистые",
                                "4"="гноевидные"
                              ))

df_Abus$quadrant <- 	factor(df_Abus$quadrant,
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



df_Abus$morphology_structure_tumor	 <- 	factor(df_Abus$morphology_structure_tumor,
                                       levels=c(1,2,3,4,5,6,7,8),
                                       labels = c(
                                         "1"="инвазивный рак неспециального типа",
                                         "2"="периканаликулярная фиброаденома",
                                         "3"="склерозирующий аденоз",
                                         "4"="фиброз стромы с гиалинозом",
                                         "5"="фиброаденома",
                                         "6"="миксоидная фиброаденома",
                                         "7"="протоковый рак in situ",
                                         "8"="инвазивный дольковый рак"
                                       ))



df_Abus$cytological_conclusion	 <- 	factor(df_Abus$cytological_conclusion,
                                   levels=c(1,2),
                                   labels = c(
                                     "1"="интрадуктальная папиллома",
                                     "2"="Цистаденопапиллома"
                                   ))



df_Abus$degree_malignancy <- 	factor(df_Abus$degree_malignancy,
                             levels=c(0,1,2,3),
                             labels = c(
                               "0"= "нет данных",
                               "1"= "I (низкая 3-5 бал)",
                               "2"= "II (умеренная 6-7 балов)",
                               "3"= "III(высокая 8-9 бал)"
                             ))


df_Abus$conclusion_MMG_skin	<- 	factor(df_Abus$conclusion_MMG_skin,
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

df_Abus$MMG_areola	<- 	factor(df_Abus$MMG_areola,
                              levels=c(1,2,3,4,5),
                              labels = c(
                                "1"="не изменена",
                                "2"="подтянута",
                                "3"="деформирована",
                                "4"="отечна",
                                "5"="уплотнена"
                                ))

df_Abus$MMG_nipple	<- 	factor(df_Abus$MMG_nipple,
                              levels=c(1,2,3),
                              labels = c(
                                "1"="не изменен",
                                "2"="втянут",
                                "3"="отечен"
                                
                              ))

df_Abus$MMG_background_breast	<- 	factor(df_Abus$MMG_background_breast,
                                         levels=c(1,2,3,4,5),
                                         labels = c(
                                           "1"="нормальная ткань МЖ",
                                           "2"="диффузная ФКМ",
                                           "3"="узловая мастопатия",
                                           "4"="инволюция",
                                           "5"="железистая ткань"
                                           
                                         ))

df_Abus$MMG_nodle 	<- 	factor(df_Abus$MMG_nodle,
                              levels=c(0,1,2,3,4,5,6,7),
                              labels = c(
                                "0"="нет узла",
                                "1"="неровный",
                                "2"="дольчатый",
                                "3"="лучистый",
                                "4"="ровный",
                                "5"="волнистый",
                                "6"="фокус уплотнения",
                                "7"="участок нарушения архитектоники"
                                ))

df_Abus$MMG_nodle_contour	<- 	factor(df_Abus$MMG_nodle_contour,
                                     levels=c(0,1,2,3,4),
                                     labels = c(
                                       "0"="нет",
                                       "1"="четкий",
                                       "2"="нечеткий",
                                       "3"="ровный",
                                       "4"="размытый"
                                       
                                     ))

df_Abus$MMG_nodle_size	<- 	factor(df_Abus$MMG_nodle_size,
                                  levels=c(0,1,2,3,4,5,6),
                                  labels = c(
                                    "0"="нет",
                                    "1"="0,5-1,0",
                                    "2"="1,1-1,5см",
                                    "3"="1,6-2,0см",
                                    "4"="2,1-2,5см",
                                    "5"="2,6-3,0см",
                                    "6"="более 3 см"
                                    
                                  ))



df_Abus$MMG_calcifications	<- 	factor(df_Abus$MMG_calcifications,
                                      levels=c(0,1,2,3,4,5,6),
                                      labels = c(
                                        "0"="нет",
                                        "1"="полиморфные",
                                        "2"="единичные мелкие",
                                        "3"="крупные",
                                        "4"="диффузные",
                                        "5"="сгруппированные",
                                        "6"="микрокальцинаты"
                                        
                                      ))

df_Abus$MMG_number_formations_visualized	<- 	factor(df_Abus$MMG_number_formations_visualized,
                                                    levels=c(0,1,2,3,4,5),
                                                    labels = c(
                                                      "0"="не определяется",
                                                      "1"="одно",
                                                      "2"="два",
                                                      "3"="три",
                                                      "4"="четыре",
                                                      "5"="участок асимметрии"
                                                      
                                                    ))

df_Abus$MMG_axillary_lymph_nodes	<- 	factor(df_Abus$MMG_axillary_lymph_nodes,
                                            levels=c(1,2,3,4,5,6),
                                            labels = c(
                                              "1"="не визуализируются",
                                              "2"="не увеличены",
                                              "3"="увеличены",
                                              "4"="мтс. изменены",
                                              "5"="нет данных",
                                              "6"="увеличены, жировая инволюция"
                                              
                                            ))

df_Abus$conclusion_MMG<- 	factor(df_Abus$conclusion_MMG,
                                 levels=c(1,2,3,4,5),
                                 labels = c(
                                   "1"="Диф фам",
                                   "2"="Susp Ca",
                                   "3"="Кластер кальцинатов",
                                   "4"="Лок аденоз",
                                   "5"="фиброаденома"
                                   
                                 ))

df_Abus$US	<- 	factor(df_Abus$US,
                      levels=c(1,2,3),
                      labels = c(
                        "1"="не изменена",
                        "2"="утолщена",
                        "3"="другое"
                        
                      ))

df_Abus$US_nodle_contour	<- 	factor(df_Abus$US_nodle_contour,
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

df_Abus$US_ducts	<- 	factor(df_Abus$US_ducts,
                            levels=c(1,2,3),
                            labels = c(
                              "1"="не расширены",
                              "2"="расширены на протяжении",
                              "3"="другое"
                              
                            ))

df_Abus$US_background	<- 	factor(df_Abus$US_background,
                                 levels=c(1,2,3,4,5,6,7),
                                 labels = c(
                                   "1"="жировая ткань",
                                   "2"="железистая ткань",
                                   "3"="склероз",
                                   "4"= "ФКМ",
                                   "5"="кисты",
                                   "6"="инволюция",
                                   "7"="нет данных"
                                   
                                 ))

df_Abus$US_formation	<- 	factor(df_Abus$US_formation,
                                levels=c(0,1,2,3,4,5,6,7),
                                labels = c(
                                  "0"="нет",
                                  "1"= "граница",
                                  "2"="верх-наруж. Кв.",
                                  "3"="верх-внутр. Кв.",
                                  "4"="ниж-наруж",
                                  "5"="ниж-внутр",
                                  "6"="центр.отдел",
                                  "7"="вся железа"
                                  
                                ))

df_Abus$US_form	<- 	factor(df_Abus$US_form,
                           levels=c(0,1,2,3,4,5),
                           labels = c(
                             "0"="нет узла",
                             "1"="округлая",
                             "2"="овальная",
                             "3"="неправ",
                             "4"= "другое",
                             "5"="участок нарушения архитектоники"
                             
                           ))

df_Abus$US_nodle_size	<- 	factor(df_Abus$US_nodle_size,
                                 levels=c(0,1,2,3,4,5),
                                 labels = c(
                                   "0"="нет",
                                   "1"="0,5-1,0 см",
                                   "2"= "1,1-1,5 см",
                                   "3"= "1,5-2,0 см",
                                   "4"="2,1-2,5 см",
                                   "5"= "2,5-3,0 см"
                                   
                                 ))

df_Abus$US_echogenicity_formation	<- 	factor(df_Abus$US_echogenicity_formation,
                                             levels=c(0,1,2,3,4,5),
                                             labels = c(
                                               "0"="нет узла",
                                               "1"="гиперэхогенное",
                                               "2"="гипоэхогенное",
                                               "3"="изоэхогенное",
                                               "4"="смешанная",
                                               "5"="анэхогенное"
                                               
                                             ))

df_Abus$US_structure	<- 	factor(df_Abus$US_structure,
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

df_Abus$US_formation_BloodFlow	<- 	factor(df_Abus$US_formation_BloodFlow,
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

df_Abus$US_elastography	<- 	factor(df_Abus$US_elastography,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="нет данных",
                                     "1"="0 эластотип",
                                     "2"="1 эластотип",
                                     "3"= "2 эластотип",
                                     "4"="3 эластотип",
                                     "5"= "4 эластотип"
                                     
                                     
                                   ))

df_Abus$US_region_lymph_nodes	<- 	factor(df_Abus$US_region_lymph_nodes,
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

df_Abus$US_diagnosis	<- 	factor(df_Abus$US_diagnosis,
                                levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12),
                                labels = c(
                                  "0"="без патологии",
                                  "1"="ФА единичная",
                                  "2"="ФА множествненные",
                                  "3"="киста",
                                  "4"="кисты",
                                  "5"="сложная киста",
                                  "6"="образование СА",
                                  "7"="ВПП",
                                  "8"="ФКМ",
                                  "9"="Диф фам",
                                  "10"="мультфок са",
                                  "11"="мультицентричный са",
                                  "12"="лок фам"
                                  
                                ))

df_Abus$ABUS	<- 	factor(df_Abus$ABUS,
                        levels=c(1,2,3),
                        labels = c(
                          "1"="не изменена",
                          "2"="утолщена",
                          "3"="другое"
                          
                        ))

df_Abus$ABUS_nodle_size	<- 	factor(df_Abus$ABUS_nodle_size,
                                   levels=c(0,1,2,3,4,5),
                                   labels = c(
                                     "0"="нет",
                                     "1"="0,5-1,0 см",
                                     "2"= "1,1-1,5 см",
                                     "3"="1,5-2,0 см",
                                     "4"="2,1-2,5 см",
                                     "5"= "2,5-3,0 см"
                                     ))

df_Abus$ABUS_nodle_contours	<- 	factor(df_Abus$ABUS_nodle_contours,
                                       levels=c(0,1,2,3,4,5,6),
                                       labels = c(
                                         "0"="нет узла",
                                         "1"="ровные",
                                         "2"="неровные",
                                         "3"="полициклические",
                                         "4"="четкие",
                                         "5"="нечеткие",
                                         "6"="волнистые"
                                         
                                       ))

df_Abus$ABUS_echogenicity_formation	<- 	factor(df_Abus$ABUS_echogenicity_formation,
                                               levels=c(0,1,2,3,4,5),
                                               labels = c(
                                                 "0"="нет узла",
                                                 "1"="гиперэхогенное",
                                                 "2"="гипоэхогенное",
                                                 "3"="изоэхогенное",
                                                 "4"="смешанная",
                                                 "5"="анэхогенное"
                                                 
                                               ))

df_Abus$ABUS_structure	<- 	factor(df_Abus$ABUS_structure,
                                  levels=c(0,1,2,3,4,5),
                                  labels = c(
                                    "0"="нет узла",
                                    "1"="однородная",
                                    "2"="неоднородная",
                                    "3"="с жидкостным содержимым",
                                    "4"="с кальцинатами",
                                    "5"= "наличие внутрикистозных пристен.разрастаний"
                                    
                                  ))

df_Abus$ABUS_symptom_retraction	<- 	factor(df_Abus$ABUS_symptom_retraction,
                                           levels=c(1,2),
                                           labels = c(
                                             "1"="есть",
                                             "2"="нет"
                                             
                                           ))

df_Abus$ABUS_diagnosis<- 	factor(df_Abus$ABUS_diagnosis,
                                 levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12),
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
                                   "9"="мультицентричны",
                                   "10"="склерозирующий аденоз",
                                   "11"="ФКМ",
                                   "12"="диф фам"
                                   
                                 ))

df_Abus$type_structure_ACR<- 	factor(df_Abus$type_structure_ACR,
                                     levels=c(1,2,3,4),
                                     labels = c(
                                       "1"="А",
                                       "2"="В",
                                       "3"="С",
                                       "4"="D"
                                       ))

df_Abus$Receptors	<- 	factor(df_Abus$Receptors,
                             levels=c(1,2,3,4,5,6,7,8,9),
                             labels = c(
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

df_Abus$genetics	<- 	factor(df_Abus$genetics,
                            levels=c(1,2),
                            labels = c(
                              "1"="нет",
                              "2"="есть"
                              
                            ))

##df_Abus$MRI_data	<- 	factor(df_Abus$MRI_data,
##                            levels=c(0,1,2,3,4,5,6,7,8,9,10,11,12),
##                            labels = c(
                              
##                            ))

df_Abus$hormonal_medications	<- 	factor(df_Abus$hormonal_medications,
                                        levels=c(1,2),
                                        labels = c(
                                          "1"="да",
                                          "2"="нет"
                                          
                                        ))

df_Abus$number_nodles_MMG	<- 	factor(df_Abus$number_nodles_MMG,
                                     levels=c(1,2,3,4,5,6),
                                     labels = c(
                                       "1"="не опред",
                                       "2"="один",
                                       "3"="два",
                                       "4"="три",
                                       "5"="множественные",
                                       "6"="ФКМ"
                                       
                                     ))

df_Abus$number_nodles_US	<- 	factor(df_Abus$number_nodles_US,
                                    levels=c(1,2,3,4,5,6),
                                    labels = c(
                                      "1"="не опред",
                                      "2"="один",
                                      "3"="два",
                                      "4"="три",
                                      "5"="множественные",
                                      "6"="кисты"
                                      
                                    ))

df_Abus$number_nodles_ABUS	<- 	factor(df_Abus$number_nodles_ABUS,
                                      levels=c(1,2,3,4,5,6),
                                      labels = c(
                                        "1"="не опред",
                                        "2"="один",
                                        "3"="два",
                                        "4"="три",
                                        "5"="множественные",
                                        "6"="кисты"
                                        
                                      ))

df_Abus$number_nodles_MRI	<- 	factor(df_Abus$number_nodles_MRI,
                                     levels=c(1,2,3,4,5),
                                     labels = c(
                                       "1"="не опред",
                                       "2"="один",
                                       "3"="два",
                                       "4"="три",
                                       "5"="множественные"
                                       
                                     ))

df_Abus$Category_Birads_MMG	<- 	factor(df_Abus$Category_Birads_MMG,
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

df_Abus$Category_Birads_Ultrasound	<- 	factor(df_Abus$Category_Birads_Ultrasound,
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

df_Abus$Category_Birads_ABUS	<- 	factor(df_Abus$Category_Birads_ABUS,
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

df_Abus$ABUS_calcinates	<- 	factor(df_Abus$ABUS_calcinates,
                                   levels=c(0,1,2,3),
                                   labels = c(
                                     "0"="нет",
                                     "1"="определяются",
                                     "2"="макрокальцинаты",
                                     "3"="микрокальцинаты"
                                     
                                   ))

df_Abus$Calcinates_micro_pure_ultrasound <- 	factor(df_Abus$Calcinates_micro_pure_ultrasound,
                                                    levels=c(0,1,2,3),
                                                    labels = c(
                                                      "0"="нет",
                                                      "1"="определяются",
                                                      "2"="макрокальцинаты",
                                                      "3"="микрокальцинаты" 
                                                      
                                                    ))




