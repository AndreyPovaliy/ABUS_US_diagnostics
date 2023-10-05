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


# df$type_exam <- c(1*length((dfXlsxGr3$us_calcinates_micro_pure)))
# calcinates_micro_pure <- c(dfXlsxGr3$us_calcinates_micro_pure, dfXlsxGr3$abus_calcinates_micro_pure)

chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе С ",
                 "В группе D ",
                 dfXlsxGr2$us_is_tumor,
                 dfXlsxGr4$us_is_tumor,
                 dfXlsxSnr$us_is_tumor,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsxSnr,dfXlsxSnr$us_is_tumor,dfXlsxSnr$group_separation,"УЗ диагноз злокачественное образование")

escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования ABUS в выборке до 40 лет ")

chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$abus_calcinates,
                 dfXlsxGr3$abus_calcinates,
                 dfXlsxSnr$abus_calcinates,
                 dfXlsxSnr$group_separation)
GeomBar(dfXlsx,dfXlsx$abus_calcinates,dfXlsx$group_separation,"Кальцинаты")


