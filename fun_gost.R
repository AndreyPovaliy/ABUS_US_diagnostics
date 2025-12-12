# Load the package
library(bib2df)
library(tidyverse)
library(tidytext)
library(ggplot2)

# mod ----------------------------------------------------------------
bib_file_path <- "archive/Text_work/Chapters/full_text/references.bib"
bib_dataframe <- bib2df(bib_file_path)

n <- 2

# Pasquini, M.C. Hematopoietic cell transplantation outcomes in monosomal
# karyotype myeloid malignancies / M.C. Pasquini, M.-J. Zhang, B.C. Medeiros [et al.] //
# Biology of Blood and Marrow Transplantation. – 2016. – Vol. 22. – № 2. – Р. 248–257.


# Гайдаенко, Т.А. Маркетинговое управление: принципы управленческих решений и российская
# практика / Т.А.Гайдаенко. - 3-е изд., перераб. и доп. - М.: Эксмо : МИРБИС, 2008. - 508 с.
# function ----------------------------------------------------------------

add_cite_fom_gost <- function(bib_dataframe){
  refs <- c()
  for (n in 1:nrow(bib_dataframe)){
    ref <- c()
    a <- bib_dataframe$AUTHOR[[n]]
    for (i in 1:length(a)){
      a[i]  <- str_replace_all(a[i],"\\{", "")
      a[i]  <- str_replace_all(a[i],"\\}", "")
    } 
    
    autror <- c()
    
    surname <- str_split(a, " ")[[1]][1]
    name <- str_flatten(
      substr(
        str_split(a, " ")[[1]][2:length(str_split(a, " ")[[1]])],1,1),
      collapse = ".")
    name <- paste0(name,".")
    
    autror <- append(autror,paste(surname,name))
    autror <- str_flatten(autror,
                          collapse = ", ")
    autrors_all <- c()
    if (length(a)<=3){
      for (i in 1:length(a)){
        surname <- str_split(a, ", ")[[i]][1]
        name <- str_flatten(
          substr(
            str_split(a, " ")[[i]][2:length(str_split(a, " ")[[i]])],1,1),
          collapse = ".")
        name <- paste0(name,".")
        
        autrors_all <- append(autrors_all,paste(name,surname))
        autrors_all <- str_flatten(autrors_all,
                                   collapse = ", ")
        
        
        
      }
      
    }else{
      for (i in 1:3){
        surname <- str_split(a, ", ")[[i]][1]
        name <- str_flatten(
          substr(
            str_split(a, " ")[[i]][2:length(str_split(a, " ")[[i]])],1,1),
          collapse = ".")
        name <- paste0(name,".")
        
        autrors_all <- append(autrors_all,paste(name,surname))
        autrors_all <- str_flatten(autrors_all,
                                   collapse = ", ")
        
        
        
      }
    }
    
    autrors_all <- ifelse(bib_dataframe$LANGID[n] == "en",
                          paste0("/ ",autrors_all, " [et al.] //"), paste0("/ ",autrors_all, " [и др.] //"))
    
    
    ref <- case_when(
      bib_dataframe$CATEGORY[n] != "BOOK" ~
        paste0(autror," ",
               bib_dataframe$TITLE[[n]],
               ". ",
               autrors_all," ",
               bib_dataframe$JOURNAL[[n]],
               ". - ",
               bib_dataframe$YEAR[[n]],
               ifelse(is.na(bib_dataframe$VOLUME[[n]]),"",". - Vol. "),
               ifelse(is.na(bib_dataframe$VOLUME[[n]]),"",bib_dataframe$VOLUME[[n]]),
            
               ifelse(is.na(bib_dataframe$NUMBER[[n]]),"",". - №"),
               ifelse(is.na(bib_dataframe$NUMBER[[n]]),"",bib_dataframe$NUMBER[[n]]),
               ifelse(bib_dataframe$LANGID[n] == "en",
                      ". - P.", ". - С."),
               bib_dataframe$PAGES[[n]],"."),
      bib_dataframe$CATEGORY[n] == "BOOK" ~
        paste0(autror," ",
               bib_dataframe$TITLE[[n]],". ",
               autrors_all," ",
               bib_dataframe$PUBLISHER[[n]],". - ",
               bib_dataframe$YEAR[[n]],
               ifelse(bib_dataframe$LANGID[n] == "en",
                      ". - P.", ". - С."),
               bib_dataframe$PAGES[[n]],".")
    )
    refs <- append(refs,ref)
    

  }
  bib_dataframe$cite_form <- refs
  bib_dataframe <- bib_dataframe %>% 
    arrange(desc(LANGID),cite_form) %>% 
    mutate(num_id = 1:nrow(bib_dataframe))
  return(bib_dataframe)
  }

bib_dataframe <- add_cite_fom_gost(bib_dataframe)

table(bib_dataframe$CATEGORY)

bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "ARTICLE"]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "BOOK"]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "INPROCEEDINGS"]

bib_dataframe$BIBTEXKEY[is.na(bib_dataframe$TITLE)]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "ARTICLE" & is.na(bib_dataframe$JOURNAL)]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "BOOK" & is.na(bib_dataframe$PUBLISHER)]
bib_dataframe$BIBTEXKEY[is.na(bib_dataframe$YEAR)]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "ARTICLE" & is.na(bib_dataframe$VOLUME)]
bib_dataframe$BIBTEXKEY[bib_dataframe$CATEGORY == "ARTICLE" & is.na(bib_dataframe$NUMBER)]
bib_dataframe$BIBTEXKEY[is.na(bib_dataframe$PAGES)]


for (i in 1:length(bib_dataframe$cite_form)){
  cat(paste0(i," - ",bib_dataframe$cite_form[i],"\n\n"))
}






bib_repl <- readLines("archive/Text_work/Chapters/full_text/Abus_full.Rmd")
for (i in 1:nrow(bib_dataframe)){
  bib_repl <- str_replace_all(bib_repl, paste0("@",bib_dataframe$BIBTEXKEY[i]), as.character(bib_dataframe$num_id[bib_dataframe$BIBTEXKEY==bib_dataframe$BIBTEXKEY[i]]))
}
writeLines(bib_repl, "archive/Text_work/Chapters/full_text/Abus_full_mod.Rmd")



bib_repl[str_detect(bib_repl, "\\[.+\\]", negate = FALSE)]
sort_num <- function(str){
  paste0(sort(as.numeric(strsplit(str,"; ")[[1]])),collapse = "; ")
}

a <- c("
       51; 68; 67; 90
       ")
sort_num(a)



