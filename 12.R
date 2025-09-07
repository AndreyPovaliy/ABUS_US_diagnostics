library(tidyverse)

glimpse(dfXlsx)

colnames(dfXlsx)


dfXlsx$hist_is_tumor <- ifelse(dfXlsx$tumor_morphology_structure == 1
                                 | dfXlsx$tumor_morphology_structure == 7
                                 | dfXlsx$tumor_morphology_structure== 8
                                 , 1, 0)
dfXlsx$hist_is_tumor[is.na(dfXlsx$hist_is_tumor)] <- 0

write_csv(dfXlsx, file = "/Users/andreypovaliy/Documents/Education/Python/abus_dash/data/mod1.csv")
          
table(dfXlsx$tumor_morphology_structure)

prop.table(table(dfXlsx$hist_is_tumor))*100


dd <- read_csv(file = "/Users/andreypovaliy/Documents/Education/Python/abus_dash/data/us_data.csv")
table(dd$group_separation)
dd <-dd %>% 
  mutate(group_separation = case_when(
    group_separation == "A"~ "до 40 лет",
    group_separation == "B"~ "до 40 лет",
    group_separation == "C"~ "старше 40 лет",
    group_separation == "D"~ "старше 40 лет"
  ))
write_csv(dd, file = "/Users/andreypovaliy/Documents/Education/Python/abus_dash/data/us_data.csv")
glimpse(dd)


ggplot(dd, aes(us_probabilityNeoCa))+
  geom_histogram()


