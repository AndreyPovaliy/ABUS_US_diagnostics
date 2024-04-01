
# jun ---------------------------------------------------------------------


dfXlsxMetCompJun$numberNodles <- factor(dfXlsxMetCompJun$numberNodles, order=TRUE,levels=c("один", 
                                                                                           "два", 
                                                                                           "три",
                                                                                           "множественные",
                                                                                           "не определяется",
                                                                                           "не проводилось"
))
dfXlsxMetCompJunIsNodle <- subset(dfXlsxMetCompJun, 
                                    nodleSize !="не проводилось" &
                                    methodsVizualisation != "mmg")
dfXlsxMetCompJunIsNodleUs <- subset(dfXlsxMetCompJunIsNodle, methodsVizualisation == "us")
dfXlsxMetCompJunIsNodleAbus <- subset( dfXlsxMetCompJunIsNodle, methodsVizualisation == "abus")
dfXlsxMetCompJunIsNodle$nodleSize_b1_0 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "0,5-1,0 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_b1_5 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "1,1-1,5 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_b2_0 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "1,5-2,0 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_b2_5 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "2,1-2,5 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_b3_0 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "2,5-3,0 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_a3_0 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "более 3 см", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$nodleSize_No <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$nodleSize== "нет", "Да", "Нет"))
escribir ("* Размер образования *")
chapter_3_4_text("Размер образования",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunIsNodleUs$nodleSize,
                 dfXlsxMetCompJunIsNodleAbus$nodleSize,
                 dfXlsxMetCompJunIsNodle$nodleSize,
                 dfXlsxMetCompJunIsNodle$methodsVizualisation)

chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_b1_0,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_b1_5,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_b2_0,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_b2_5,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_b3_0,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_a3_0,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$nodleSize_No,  dfXlsxMetCompJunIsNodle$methodsVizualisation)

escribir ("(Таблица 2, Рисунок 1).")
escribir ("Таблица №2. 
          Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе B.")
escribir ("![](deconst/img/nodleSize_jun.png)")
escribir ("Рисунок №5.2. Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе B.")
CompPlot_nodleSize <- GeomBar(dfXlsxMetCompJunIsNodle,dfXlsxMetCompJunIsNodle$nodleSize,dfXlsxMetCompJunIsNodle$methodsVizualisation,"Размер образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/img/nodleSize_jun.png", 
       plot = CompPlot_nodleSize, units = "in", width = 14, height = 8)

dfXlsxMetCompJunIsNodle$numberNodles1 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$numberNodles== "один", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$numberNodles2 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$numberNodles== "два", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$numberNodles3 <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$numberNodles== "три", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$numberNodlesM <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$numberNodles== "множественные", "Да", "Нет"))
dfXlsxMetCompJunIsNodle$numberNodlesN <- as.factor(ifelse(dfXlsxMetCompJunIsNodle$numberNodles== "не определяется", "Да", "Нет"))

escribir ("* Количество узлов *")
chapter_3_4_text("Количество узлов",
                 "По результатам УЗИ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompJunIsNodleUs$numberNodles,
                 dfXlsxMetCompJunIsNodleAbus$numberNodles,
                 dfXlsxMetCompJunIsNodle$numberNodles,
                 dfXlsxMetCompJunIsNodle$methodsVizualisation)
escribir ("(Таблица 2, Рисунок 1).")
escribir ("Таблица №2. 
          Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе B.")
escribir ("![](deconst/img/numberNodles_jun.png)")
escribir ("Таблица №5.5. Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе B.")
CompPlot_numberNodles <- GeomBar(dfXlsxMetCompJunIsNodle,dfXlsxMetCompJunIsNodle$numberNodles,dfXlsxMetCompJunIsNodle$methodsVizualisation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/img/numberNodles_jun.png", 
       plot = CompPlot_numberNodles, units = "in", width = 14, height = 8)

chisq.test(dfXlsxMetCompJunIsNodle$numberNodles1,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$numberNodles2,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$numberNodles3,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$numberNodlesM,  dfXlsxMetCompJunIsNodle$methodsVizualisation)
chisq.test(dfXlsxMetCompJunIsNodle$numberNodlesN,  dfXlsxMetCompJunIsNodle$methodsVizualisation)


# snr ---------------------------------------------------------------------

dfXlsxMetCompSnr$numberNodles <- factor(dfXlsxMetCompSnr$numberNodles, order=TRUE,levels=c("один", 
                                                                                           "два", 
                                                                                           "три",
                                                                                           "множественные",
                                                                                           "не определяется",
                                                                                           "не проводилось"
))

dfXlsxMetCompSnrIsNodle <- subset(dfXlsxMetCompSnr, 
                                  nodleSize !="не проводилось")
dfXlsxMetCompSnrIsNodleUs <- subset(dfXlsxMetCompSnrIsNodle, methodsVizualisation == "us")
dfXlsxMetCompSnrIsNodleAbus <- subset( dfXlsxMetCompSnrIsNodle, methodsVizualisation == "abus")
dfXlsxMetCompSnrIsNodleMMg <- subset( dfXlsxMetCompSnrIsNodle, methodsVizualisation == "mmg")
dfXlsxMetCompSnrIsNodle$nodleSize_b1_0 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "0,5-1,0 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_b1_5 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "1,1-1,5 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_b2_0 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "1,5-2,0 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_b2_5 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "2,1-2,5 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_b3_0 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "2,5-3,0 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_a3_0 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "более 3 см", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$nodleSize_No <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$nodleSize== "нет", "Да", "Нет"))

escribir ("* Размер образования *")
chapter_5_text("Размер образования",
                 "По результатам УЗИ ",
               "По результатам ММГ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrIsNodleUs$nodleSize,
               dfXlsxMetCompSnrIsNodleMMg$nodleSize,
                 dfXlsxMetCompSnrIsNodleAbus$nodleSize,
                 dfXlsxMetCompSnrIsNodle$nodleSize,
                 dfXlsxMetCompSnrIsNodle$methodsVizualisation)
escribir ("(Таблица 3, Рисунок 2).")
escribir ("Таблица №3. 
          Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе D.")
escribir ("![](deconst/img/nodleSize_snr.png)")
escribir ("Рисунок №5.11. Сравнение методов УЗИ и ABUS по показателю \"Размер образования\" в группе D.")
CompPlot_nodleSize <- GeomBar(dfXlsxMetCompSnrIsNodle,dfXlsxMetCompSnrIsNodle$nodleSize,dfXlsxMetCompSnrIsNodle$methodsVizualisation,"Размер образования")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/img/nodleSize_snr.png", 
       plot = CompPlot_nodleSize, units = "in", width = 14, height = 8)



dfXlsxMetCompSnrIsNodle$numberNodles1 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$numberNodles== "один", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$numberNodles2 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$numberNodles== "два", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$numberNodles3 <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$numberNodles== "три", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$numberNodlesM <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$numberNodles== "множественные", "Да", "Нет"))
dfXlsxMetCompSnrIsNodle$numberNodlesN <- as.factor(ifelse(dfXlsxMetCompSnrIsNodle$numberNodles== "не определяется", "Да", "Нет"))

escribir ("* Количество узлов *")
chapter_5_text("Количество узлов",
                 "По результатам УЗИ ",
                 "По результатам ММГ ",
                 "По результатам ABUS ",
                 dfXlsxMetCompSnrIsNodleUs$numberNodles,
                 dfXlsxMetCompSnrIsNodleMMg$numberNodles,
                 dfXlsxMetCompSnrIsNodleAbus$numberNodles,
                 dfXlsxMetCompSnrIsNodle$numberNodles,
                 dfXlsxMetCompSnrIsNodle$methodsVizualisation)
escribir ("(Таблица 3, Рисунок 2).")
escribir ("Таблица №3. 
          Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе D.")
escribir ("![](deconst/img/numberNodles_snr.png)")
escribir ("Таблица №5.5. Сравнение методов УЗИ и ABUS по показателю \"Количество узлов\" в группе D.")
CompPlot_numberNodles <- GeomBar(dfXlsxMetCompSnrIsNodle,dfXlsxMetCompSnrIsNodle$numberNodles,dfXlsxMetCompSnrIsNodle$methodsVizualisation,"Количество узлов")
ggsave("~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/img/numberNodles_snr.png", 
       plot = CompPlot_numberNodles, units = "in", width = 14, height = 8)

dfXlsxMetCompSnrIsNodleUsAbus <- subset(dfXlsxMetCompSnrIsNodle, 
                                          methodsVizualisation != "mmg")
dfXlsxMetCompSnrIsNodleUsMMG <- subset(dfXlsxMetCompSnrIsNodle, 
                                      methodsVizualisation != "abus")
dfXlsxMetCompSnrIsNodleAbusMMG <- subset(dfXlsxMetCompSnrIsNodle, 
                                        methodsVizualisation != "us")



chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_b1_0,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_b1_5,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_b2_0,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_b2_5,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_b3_0,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$nodleSize_a3_0,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)

chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$numberNodles1,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$numberNodles2,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$numberNodles3,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$numberNodlesM,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsAbus$numberNodlesN,  dfXlsxMetCompSnrIsNodleUsAbus$methodsVizualisation)


chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_b1_0,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_b1_5,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_b2_0,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_b2_5,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_b3_0,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$nodleSize_a3_0,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)


chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$numberNodles1,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$numberNodles2,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$numberNodles3,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$numberNodlesM,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleUsMMG$numberNodlesN,  dfXlsxMetCompSnrIsNodleUsMMG$methodsVizualisation)


chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_b1_0,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_b1_5,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_b2_0,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_b2_5,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_b3_0,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$nodleSize_a3_0,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)


chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$numberNodles1,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$numberNodles2,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$numberNodles3,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$numberNodlesM,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
chisq.test(dfXlsxMetCompSnrIsNodleAbusMMG$numberNodlesN,  dfXlsxMetCompSnrIsNodleAbusMMG$methodsVizualisation)
