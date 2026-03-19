library(png)
library(ggpubr)
library(ggplot2)



fig_1 <-Violinplot(dfXlsxDocSnr, dfXlsxDocSnr$us_time, dfXlsxDocSnr$group_separation, "Время", "Группы
А")



fig_2 <- Violinplot(dfXlsxDocJun, dfXlsxDocJun$us_time, dfXlsxDocJun$group_separation, "Время", "Группы
Б")

img_merg <- ggarrange(fig_1, fig_2 + rremove("x.text"), 
                   labels = c("А", "Б"),
                   ncol = 3, nrow = 2)


ggsave(img_merg, filename = "./render/abus_disser/img/chapter_6/ch_6_fig_n28.png",width = 9,height = 6)