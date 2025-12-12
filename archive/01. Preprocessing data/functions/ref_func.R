library(stringr)
library(readr)
library(tidyverse)




sort_links <- function(string) {
  a <- string
  a <- strsplit(x = a,split = "; ")
  a <- str_sort(a[[1]], locale = "ru_UA")
  a <- paste(a, collapse = "; ")
  return(a)
}

a <- "Mahvi D. A. и др., 2018; Каприн А.Д. и др., 2020; Каприн А.Д. и др., 2017; Кушунина Д.В. и др., 2019"

sort_links(a)