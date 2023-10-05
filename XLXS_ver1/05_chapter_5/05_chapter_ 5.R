#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования УЗИ в выборке до 40 лет")


chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_calcinates_micro_pure,
                 dfXlsxGr3$us_calcinates_micro_pure,
                 dfXlsxJun$us_calcinates_micro_pure,
                 dfXlsxJun$group_separation)
dfXlsxJun_variable <- subset(dfXlsxJun,dfXlsxJun$us_calcinates_micro_pure !="нет")
GeomBar(dfXlsxJun_variable,dfXlsxJun_variable$us_calcinates_micro_pure,dfXlsxJun_variable$group_separation,"Кальцинаты")



df_calcinates_micro_pureJun_variable <- subset(df_calcinates_micro_pureJun,df_calcinates_micro_pureJun$calcinates_micro_pure !="нет")
GeomBar(df_calcinates_micro_pureJun_variable,df_calcinates_micro_pureJun_variable$calcinates_micro_pure,df_calcinates_micro_pureJun_variable$type_exam,"Кальцинаты")

chapter_3_4_text("Злокачественное образование в подгруппе кальцинатов",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxCalcGr1$hist_is_tumor ,
                 dfXlsxCalcGr3$hist_is_tumor ,
                 dfXlsxCalcJun$hist_is_tumor ,
                 dfXlsxCalcJun$group_separation)
GeomBar(dfXlsxCalcJun,dfXlsxCalcJun$hist_is_tumor ,dfXlsxCalcJun$group_separation,"УЗ диагноз злокачественное образование в подгруппе кальцинатов")




df_calcinates_micro_pureSnr_variable <- subset(df_calcinates_micro_pureSnr,df_calcinates_micro_pureSnr$calcinates_micro_pure !="нет")
GeomBar(df_calcinates_micro_pureSnr_variable,df_calcinates_micro_pureSnr_variable$calcinates_micro_pure,df_calcinates_micro_pureSnr_variable$type_exam,"Кальцинаты")



chapter_3_4_text("УЗ диагноз злокачественное образование в подгруппе кальцинатов",
                 "В группе С ",
                 "В группе D ",
                 dfXlsxCalcGr2$hist_is_tumor ,
                 dfXlsxCalcGr4$hist_is_tumor ,
                 dfXlsxCalcSnr$hist_is_tumor ,
                 dfXlsxCalcSnr$group_separation)
GeomBar(dfXlsxCalcSnr,dfXlsxCalcSnr$hist_is_tumor ,dfXlsxCalcSnr$group_separation,"УЗ диагноз злокачественное образование в подгруппе кальцинатов")

escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования ABUS в выборке до 40 лет ")

chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$abus_calcinates,
                 dfXlsxGr3$abus_calcinates,
                 dfXlsxSnr$abus_calcinates,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsx,dfXlsx$abus_calcinates,dfXlsx$group_separation,"Кальцинаты")


