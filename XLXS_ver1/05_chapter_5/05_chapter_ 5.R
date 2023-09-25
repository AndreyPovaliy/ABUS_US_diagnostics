#source("~/Статьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


source("~/Documents/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")


Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfXlsxJun$us_calcinates_micro_pure)
Quantity_discr("В первой группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr3$us_calcinates_micro_pure)
Quantity_discr("В третьей группе при выполнении УЗИ найдены кальцинаты ",dfXlsxGr3$us_calcinates_micro_pure)


Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfXlsxJun$abus_calcinates)
Quantity_discr("В первой группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr3$abus_calcinates)
Quantity_discr("В третьей группе при выполнении ABUS были найдены кальцинаты ",dfXlsxGr3$abus_calcinates)

pvalueQualitativeText(dfXlsxJun$us_calcinates_micro_pure,dfXlsxJun$group_separation,"при выполнении УЗИ кальцинаты в выборке до 40")


table(dfXlsxGr3$abus_calcinates)
