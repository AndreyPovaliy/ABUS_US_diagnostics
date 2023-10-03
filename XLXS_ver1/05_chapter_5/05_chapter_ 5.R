#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования УЗИ во всей выборке ")

chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_calcinates_micro_pure,
                 dfXlsxGr3$us_calcinates_micro_pure,
                 dfXlsxJun$us_calcinates_micro_pure,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_calcinates_micro_pure,dfXlsxJun$group_separation,"Кальцинаты")



chapter_3_4_text("УЗ диагноз злокачественное образование",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$us_is_tumor,
                 dfXlsxGr3$us_is_tumor,
                 dfXlsxJun$us_is_tumor,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$us_is_tumor,dfXlsxJun$group_separation,"УЗ диагноз злокачественное образование")

escribir ("##5.1 Возможности нахождения микрокальцинатов при исследования ABUS во всей выборке ")

chapter_3_4_text("Кальцинаты",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$abus_calcinates,
                 dfXlsxGr3$abus_calcinates,
                 dfXlsxJun$abus_calcinates,
                 dfXlsxJun$group_separation)
GeomBar(dfXlsxJun,dfXlsxJun$abus_calcinates,dfXlsxJun$group_separation,"Кальцинаты")

Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfXlsxJun$abus_calcinates)