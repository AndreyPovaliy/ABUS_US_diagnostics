#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)


# gr_US
# gr_US_ABUS

dfUSDiscrJun <- subset(df_USDiscr, Group == gr_US | Group ==gr_US_ABUS)
USnodleContour
USbackground
USformation
USnodleSize
USstructure
USformationBloodFlow
USelastography
USdiagnosis
UScalcinatesMicroPure


dfPersonalGr1 <- subset(df_Personal, Group == gr_US)

dfPersonalGr3 <- subset(df_Personal, Group == gr_US_ABUS)

######General description results US#######


######General description results ABUS#######


######General description results MRSI#######


######General description results Tumor#######



######gr1_US description results US#######



######gr1_US description results MRSI#######


######gr1_US description results Tumor#######



######gr3_US description results US#######


######gr3_US description results ABUS#######


######gr3_US description results MRSI#######


######gr3_US description results Tumor#######


######Comparison#######