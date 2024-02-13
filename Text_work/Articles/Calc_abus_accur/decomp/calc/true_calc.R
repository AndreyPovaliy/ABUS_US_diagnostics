
# верное определение в целом ----------------------------------------------


dfXlsxGr4$us_is_calcTrue <- as.factor(ifelse(dfXlsxGr4$us_is_calc == dfXlsxGr4$mmg_is_calc, "Верно", "Неверно"))
dfXlsxGr4$abus_is_calcTrue <- as.factor(ifelse(dfXlsxGr4$abus_is_calc ==  dfXlsxGr4$mmg_is_calc, "Верно", "Неверно"))
prop.table(table(dfXlsxGr4$us_is_calcTrue))
prop.table(table(dfXlsxGr4$abus_is_calcTrue))

dfXlsxGr4$us_is_microcalcTrue <- as.factor(ifelse(dfXlsxGr4$us_is_microCalc == dfXlsxGr4$mmg_is_calc, "Верно", "Неверно"))
dfXlsxGr4$abus_is_microcalcTrue <- as.factor(ifelse(dfXlsxGr4$abus_is_microCalc ==  dfXlsxGr4$mmg_is_calc, "Верно", "Неверно"))
prop.table(table(dfXlsxGr4$us_is_microcalcTrue))
prop.table(table(dfXlsxGr4$abus_is_microcalcTrue))


# верное определение микро ----------------------------------------------
dfXlsxGr4_mmgMicroCalc <- subset(dfXlsxGr4,dfXlsxGr4$mmg_is_calc=="Да")
dfXlsxGr4_mmgMicroCalcNo <- subset(dfXlsxGr4,dfXlsxGr4$mmg_is_calc=="Нет")


round(prop.table(table(dfXlsxGr4_mmgMicroCalc$us_is_calcTrue))[1],2)
round(prop.table(table(dfXlsxGr4_mmgMicroCalc$abus_is_calcTrue))[1],2)


round(prop.table(table(dfXlsxGr4_mmgMicroCalc$us_is_microcalcTrue))[1],2)
round(prop.table(table(dfXlsxGr4_mmgMicroCalc$abus_is_microcalcTrue))[1],2)


round(prop.table(table(dfXlsxGr4_mmgMicroCalcNo$us_is_calcTrue))[2],2)
round(prop.table(table(dfXlsxGr4_mmgMicroCalcNo$abus_is_calcTrue))[2],2)


round(prop.table(table(dfXlsxGr4_mmgMicroCalcNo$us_is_microcalcTrue))[2],2)
round(prop.table(table(dfXlsxGr4_mmgMicroCalcNo$abus_is_microcalcTrue))[2],2)


escribir(paste(
  "С помощью 2d УЗИ при диагностике кальцинатов было верно обнаружено ",
  round(prop.table(table(dfXlsxGr4_mmgMicroCalc$us_is_calcTrue))[1],2),
  "%, в то время как с помощью 3d УЗИ кальцинаты были верно обнаружены ",
  round(prop.table(table(dfXlsxGr4_mmgMicroCalc$abus_is_calcTrue))[1],2),
  "%. С помощью 2d УЗИ при диагностике микрокальцинатов было верно обнаружено  ",
  round(prop.table(table(dfXlsxGr4_mmgMicroCalc$us_is_microcalcTrue))[1],2),
  "%, в то время как с помощью 3d УЗИ микрокальцинаты были верно обнаружены ",
  round(prop.table(table(dfXlsxGr4_mmgMicroCalc$abus_is_microcalcTrue))[1],2),
  "%. \n\n"
))
