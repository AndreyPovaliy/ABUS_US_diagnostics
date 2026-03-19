library(tidyverse)

ch <- "chapter_1"

my_text <- readLines(
  paste0("./render/abus_disser/",ch,".qmd"))

figs <- str_extract(string = my_text, pattern = "Рисунок \\d+")
figs[!is.na(figs)]
system(paste0("ls ./render/abus_disser/img/",ch,"/"))

tbls <- str_extract(string = my_text, pattern = "Таблица №\\d+")
tbls[!is.na(tbls)]
system(paste0("ls ./render/abus_disser/tbl/",ch,"/"))
