#####FUNCTIONS####
#приемер: escribir ("Запись1")
escribir <- function(a) {
  
  pr <- print(a)
  write.table(pr, FileName, sep="*", append = TRUE)
  
}

#приемер: escribirPaste ("Запись2")
escribirPaste <- function(a) {
  
  pr <- print(paste((a)))
  write.table(pr, FileName, sep="*", append = TRUE)
  
}


#приемер: How_many(df_Abus$Name,"Всего в исследование вошло")
How_many<-function(a,b)
{
  количество_пациентов<-length(a)
  Опиние_количества<-print(paste(b,количество_пациентов, "пациентов."))
  write.table(Опиние_количества, FileName, sep="*", append = TRUE)
}



# приемер:Describe_numeric_Norm (df_Abus$Age, "возраст ","пациентов по всей выборке составил "," лет")
Describe_numeric_Norm<-function(database,parametr,sample1,mesurement)
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  Descr<-print(paste("Средний ", parametr ,sample1,mean1 ,"±",sd1, mesurement,".", sep=""))
  write.table(Descr, FileName, sep="*", append = TRUE)
}
# приемер:Describe_numeric_NoNorm (df_Abus$Age, "возраст","пациентов по всей выборке составил","лет")
Describe_numeric_NoNorm<-function(database,parametr,sample1,mesurement)
{
  median1<-round(median(database, na.rm = TRUE),2)
  quan1<-summary(database, na.rm = TRUE)
  Descr<-print(paste("Медиана ", parametr ,sample1,median1 ," [Q1-Q3: ",round(quan1[2],2),";",round(quan1[5],2),"]", mesurement,".", sep=""))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер:Table_numeric_Normal("возраст",df_Abus$Age, df_Abus$Group)
Table_numeric_Normal<-function(parametr,database,dev )
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1))
  write.table(Descr, FileName, sep="*", append = TRUE)
}





# приемер:Table_numeric_NoNormal("возраст",gr_Jun$Age, gr_Jun$Group)
Table_numeric_NoNormal<-function(parametr,database,dev )
{
  median1<-round(median(database, na.rm = TRUE),2)
  quan1<-summary(database, na.rm = TRUE)
  p_value <- round(as.numeric(wilcox.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",median1 ,"[ Q1-Q3:",round(quan1[2],2),";",round(quan1[5],2),"]","*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}



# приемер:Table_numericANOV ("возраст",df_Abus$Age, df_Abus$Group)
Table_numericANOV<-function(parametr,database,dev )
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  p_value <- round(as.numeric(summary(aov(database ~ dev))[[1]][["Pr(>F)"]][1],2))
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1,"*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}

# приемер:Table_numericKr("возраст",df_Abus$Age, df_Abus$Group)
Table_numericKr<-function(parametr,database,dev )
{
  median1<-round(median(database, na.rm = TRUE),2)
  quan1<-summary(database, na.rm = TRUE)
  p_value <- round(as.numeric(kruskal.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",median1 ,"[ Q1-Q3:",round(quan1[2],2),";",round(quan1[5],2),"]","*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}





#Quantity_discr("В группе",df_Abus$Group)
Quantity_discr<-function(parametr,database){
  n <- length(data.frame(table(database), row.names = TRUE )$Freq)
  i<-0
  while (i<n){
    Descr<-print(paste(parametr,
                       data.frame(table(database))[i+1,1],
                       " было ",
                       data.frame(round(prop.table(table(database))*100,2))[i+1,2],
                       "% (", 
                       data.frame(table(database))[i+1,2],
                       "/",length(database),
                       "случаев)",
                       "[95% ДИ ",
                       round(prop.test(table(database)[i+1], length(database))$conf.int[1],2),
                       ";",
                       round(prop.test(table(database)[i+1], length(database))$conf.int[2],2),
                       "]."
                       , sep=""))
    write.table(Descr, FileName, sep="*", append = TRUE)
    i<-i+1
    
  }
}


#Quantity_table("Группа",df_Abus$Group) (p-value???)
Quantity_table<-function(parametr,database){
  n <- length(data.frame(table(database), row.names = TRUE )$Freq)
  Descr<-print(paste(parametr,"*Процентная доля*ДИ*","p-value
    "))
  write.table(Descr, FileName, sep="*", append = TRUE)
  i<-0
  while (i<n){
    Descr<-print(paste(data.frame(table(database))[i+1,1],
                       "*",
                       data.frame(round(prop.table(table(database)),2))[i+1,2],
                       "% (", 
                       data.frame(table(database))[i+1,2],
                       "/",length(database),
                       "случаев)*",
                       "[95% ДИ",
                       round(prop.test(table(database)[i+1], length(database))$conf.int[1],2),
                       ";",
                       round(prop.test(table(database)[i+1], length(database))$conf.int[2],2),
                       "]."
    ))
    write.table(Descr, FileName, sep="*", append = TRUE)
    i<-i+1
    
  }
}



#pvalue сравнения качественных данных
#приемер: pvalueQualitativeText(df_Abus$Side,df_Abus$Group,"по стороне поражения")
pvalueQualitativeText <-  function(x,y,parametr1){
  if(
    min(table(x)>5)
    
  )
  {
    S_Table <-chisq.test(table(x,y), simulate.p.value = TRUE)$p.value
    S_Table <- round(as.numeric(S_Table),2)
    Описание<-print(paste("Разница между группами", parametr1," составила",S_Table, "."))
    write.table(Описание, FileName, sep="*", append = TRUE)  
  }
  else{
    S_Table <-fisher.test(table(x,y), simulate.p.value = TRUE)$p.value
    S_Table <- round(as.numeric(S_Table),2)
    Описание<-print(paste("Разница между группами", parametr1," составила",S_Table, "."))
    write.table(Описание, FileName, sep="*", append = TRUE) 
    
  }
}  






#pvalue сравнения непарметрич данных (kruskal.test)
#приемер: pvalueParaKrText(df_Abus,df_Abus$Age,df_Abus$Group,"по возрасту")
pvalueParaKrText <-function(database,x,y, parametr1)
{
  kruskal<-round(as.numeric(kruskal.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",kruskal, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}

#pvalue сравнения непарметрич данных (wilcox.test)
#приемер: pvalueParaWxText(gr_Jun,gr_Jun$Age,gr_Jun$Group,"по возрасту")
pvalueParaWxText <-function(database,x,y, parametr1)
{
  wilcox<-round(as.numeric(wilcox.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",wilcox, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}

# приемер:Table_numeric2("возраст",gr_Jun$Age, gr_Jun$Group)
Table_numeric2<-function(parametr,database,dev)
{
  if( shapiro.test(database)$p.value> 0.05
  )
  {
    Table_numeric_Normal(parametr,database,dev )
  }
  else
  {
    Table_numeric_NoNormal(parametr,database,dev)
  }
}

# приемер:Table_numeric3("возраст",df_Abus$Age, df_Abus$Group)
Table_numeric3<-function(parametr,database,dev)
{
  if( shapiro.test(database)$p.value> 0.05
  )
  {
    Table_numericANOV(parametr,database,dev)
  }
  else
  {
    Table_numericKr(parametr,database,dev)
  }
}


#####COMB FUNCTIONS####
# приемер:Describe_numeric (df_Abus$Age, "возраст","пациентов по всей выборке составил","лет")
Describe_numeric<-function(database,parametr,sample1,mesurement){
  if( shapiro.test(database)$p.value> 0.05
  ){
    Describe_numeric_Norm(database,parametr,sample1,mesurement)
    
  }
  else{
    Describe_numeric_NoNorm(database,parametr,sample1,mesurement)
    
  }
 
}





