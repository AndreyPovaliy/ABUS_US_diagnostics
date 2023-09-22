# Mathirials -----------------------------------------------------------------
## Jun --------------------------------------------------------------
dfXlsxJun <- subset(dfXlsx, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxSnr <- subset(dfXlsx, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxGr1 <- subset(dfXlsx, group_separation == gr_US)

## Gr2 --------------------------------------------------------------
dfXlsxGr2 <- subset(dfXlsx, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
dfXlsxGr3 <- subset(dfXlsx, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxGr4 <- subset(dfXlsx, group_separation == gr_US_MMG_ABUS)



