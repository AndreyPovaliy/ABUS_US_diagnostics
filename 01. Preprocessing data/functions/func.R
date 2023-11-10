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





# Quantity_discr("Кожа была ",dfXlsxJun$us_skin)
Quantity_discr<-function(parametr,database){
  write.table(parametr, FileName, sep="*", append = TRUE)
  n <- length(data.frame(table(database), row.names = TRUE )$Freq)
  i<-0
  while (i<n){
    Descr<-print(paste(
                       data.frame(table(database))[i+1,1],
                       " в ",
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
    
    i<-i+1
    write.table(Descr, FileName, sep="*", append = TRUE)
   
  }
}




#Quantity_table("Диагноз",dfXlsxGr1$diagnosis_primary,dfXlsxGr3$diagnosis_primary)
Quantity_table<-function(parametr,database1,database2){

  
  n <- length(data.frame(table(database1), row.names = TRUE )$Freq)
  Descr<-print(paste(parametr,"|Процентная доля|95% ДИ","|Процентная доля|95% ДИ |","
|------|------|------|------|------|
|Группы|Группа X|------|Группа Y|------|
"))
  write.table(Descr, FileName, sep="|", append = TRUE)
  i<-0
  while (i<n){
    Descr<-print(paste(data.frame(table(database1))[i+1,1],
                       "|",
                       data.frame(round(prop.table(table(database1)),5))[i+1,2]*100,
                       "% (", 
                       data.frame(table(database1))[i+1,2],
                       "/",length(database1),
                       "случаев)|",
                       "[",
                       round(prop.test(table(database1)[i+1], length(database1))$conf.int[1],2),
                       ";",
                       round(prop.test(table(database1)[i+1], length(database1))$conf.int[2],2),
                       "]|",
                       data.frame(round(prop.table(table(database2)),5))[i+1,2]*100,
                       "% (", 
                       data.frame(table(database2))[i+1,2],
                       "/",length(database2),
                       "случаев)|",
                       "[",
                       round(prop.test(table(database2)[i+1], length(database2))$conf.int[1],2),
                       ";",
                       round(prop.test(table(database2)[i+1], length(database2))$conf.int[2],2),
                       "]|"
                       
    ))
    write.table(Descr, FileName, sep="|", append = TRUE)
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

#SSA(dfUsIsTumorGr1$us_is_tumor,dfIsTumorGr1$tumor_is)
SSA <- function(predicted_value, expected_value){
  example <- confusionMatrix(data=predicted_value, reference = expected_value)
  example
}

#binary_table (dfUsIsTumorGr1$us_is_tumor)
binary_table <- function(data){
  a <- replace(data, data=="не проводилось", "нет")
  a <- 	factor(a, levels=c("нет","да"), labels = c("нет"="нет","1"="да"))
  return(a)
}

# chapter_3_4_text("Нахождение узла при выполнении УЗИ",
#                   "В группе A ",
#                  "В группе B ",
#                  dfXlsxGr1$us_formation,
#                  dfXlsxGr3$us_formation,
#                  dfXlsxJun$us_formation,
#                  dfXlsxJun$group_separation)
# GeomBar(dfXlsxJun,dfXlsxJun$us_formation,dfXlsxJun$group_separation,"Нахождение узла при выполнении УЗИ")

chapter_3_4_text <- function(text, in_group1, in_group2, vector1, vector2, vectorSum, separation){
  escribir (text)
  Quantity_discr(in_group1,vector1)
  Quantity_discr(in_group2,vector2)
  
  Quantity_table(text,vector1,vector2)
  pvalueQualitativeText(vectorSum,separation,text)
  
}


# SSA_text(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor, "УЗИ в группе А")
SSA_text <- function(predicted_value, expected_value, method){
  x <- SSA(predicted_value, expected_value)
  Описание<-print(paste("При оценке ", method," количество истинно верно определенных образований как злокачественные было ",x[["table"]][4], 
                        ",  количество верно определённых образований как доброкачественные было", x[["table"]][1],
                        ", количество неверно определенных образований как злокачественные было ", x[["table"]][2],
                        " и количество неопределенных злокачественных образований как злокачественные было ",x[["table"]][3], ".",
                        "Точность метода составила", round(x[["overall"]][["Accuracy"]],2),
                        "[95% ДИ:",round(x[["overall"]][["AccuracyLower"]],2),",",round(x[["overall"]][["AccuracyUpper"]],2) ,"].",
                        "P-Value модели составил",round(x[["overall"]][["AccuracyPValue"]],2), 
                        "что означает, что модель отличается от точности нулевой гипотезы.",
                        "Коэфициент Kappa составил", round(x[["overall"]][["Kappa"]],2),
                        " показывает, что метод не имеет существенно отличную от контрольного метода частоту верно определенных результатов",
                        "(количество  истинно положительных и отрицательных результатов).",
                        "Тест Макнемара составил", round(x[["overall"]][["McnemarPValue"]],2),
                        " показывает, что метод не имеет существенно отличную от контрольного метода частоту ошибок",
                        "(количество ложноположительных и ложноотрицательных результатов).",
                        "Чувствительность метода составила", round(x[["byClass"]][["Sensitivity"]],2),
                        ". Специфичность метода составила", round(x[["byClass"]][["Specificity"]],2),
                        ". Доля положительных прогнозов составила", round(x[["byClass"]][["Pos Pred Value"]],2),
                        ". Доля отрицательных прогнозов составила", round(x[["byClass"]][["Neg Pred Value"]],2),
                        ". Доля истинно положительных случаев в наборе данных составила", round(x[["byClass"]][["Prevalence"]],2),
                        ". Доля истинно положительных случаев, правильно определённых методом составила", round(x[["byClass"]][["Detection Rate"]],2),
                        ". Отбалансированная точность метода составила", round(x[["byClass"]][["Balanced Accuracy"]],2),"

                        (Т -Точность, P - P-Value, КК - Коэффициент Kappa, ТМ -Тест Макнемара, Ч-Чувствительность, Сп -Специфичность, ОТ- Отбалансированная точность)
                        | Метод | Т       |P       | КК | ТМ  |  Ч  | Сп | ОТ|
                        |",method ,"|"
                        , round(x[["overall"]][["Accuracy"]],2),
                        "[95% ДИ:",round(x[["overall"]][["AccuracyLower"]],2),",",round(x[["overall"]][["AccuracyUpper"]],2) ,"].","|"
                        ,round(x[["overall"]][["AccuracyPValue"]],2),"|"
                        ,round(x[["overall"]][["Kappa"]],2),"|"
                        ,round(x[["overall"]][["McnemarPValue"]],2),"|"
                        ,round(x[["byClass"]][["Sensitivity"]],2),"|"
                        ,round(x[["byClass"]][["Specificity"]],2),"|"
                        ,round(x[["byClass"]][["Balanced Accuracy"]],2),"|"

                        
                        ))
  
  write.table(Описание, FileName, sep="*", append = TRUE)
  
}


# SSA_textClac(dfXlsxJun$us_is_tumor,dfXlsxJun$hist_is_tumor, "УЗИ в группе А")
SSA_textClac <- function(predicted_value, expected_value, method){
  x <- SSA(predicted_value, expected_value)
  Описание<-print(paste("При оценке ", method," количество истинно верно определенных образований как отсутствие кальцината было ",x[["table"]][4], 
                        ",  количество верно определённых образований как наличие кальцината было", x[["table"]][1],
                        ", количество неверно определенных кальцинатов как отсутствие кальцината было ", x[["table"]][2],
                        " и количество определенных истинно отсутствовавших кальциантов как найденное было ",x[["table"]][3], ".",
                        "Точность метода составила", round(x[["overall"]][["Accuracy"]],2),
                        "[95% ДИ:",round(x[["overall"]][["AccuracyLower"]],2),",",round(x[["overall"]][["AccuracyUpper"]],2) ,"].",
                        "P-Value модели составил",round(x[["overall"]][["AccuracyPValue"]],2), 
                        "что означает, что модель отличается от точности нулевой гипотезы.",
                        "Коэфициент Kappa составил", round(x[["overall"]][["Kappa"]],2),
                        " показывает, что метод не имеет существенно отличную от контрольного метода частоту верно определенных результатов",
                        "(количество  истинно положительных и отрицательных результатов).",
                        "Тест Макнемара составил", round(x[["overall"]][["McnemarPValue"]],2),
                        " показывает, что метод не имеет существенно отличную от контрольного метода частоту ошибок",
                        "(количество ложноположительных и ложноотрицательных результатов).",
                        "Чувствительность метода составила", round(x[["byClass"]][["Sensitivity"]],2),
                        ". Специфичность метода составила", round(x[["byClass"]][["Specificity"]],2),
                        ". Доля положительных прогнозов составила", round(x[["byClass"]][["Pos Pred Value"]],2),
                        ". Доля отрицательных прогнозов составила", round(x[["byClass"]][["Neg Pred Value"]],2),
                        ". Доля истинно положительных случаев в наборе данных составила", round(x[["byClass"]][["Prevalence"]],2),
                        ". Доля истинно положительных случаев, правильно определённых методом составила", round(x[["byClass"]][["Detection Rate"]],2),
                        ". Отбалансированная точность метода составила", round(x[["byClass"]][["Balanced Accuracy"]],2),"

                        (Т -Точность, P - P-Value, КК - Коэффициент Kappa, ТМ -Тест Макнемара, Ч-Чувствительность, Сп -Специфичность, ОТ- Отбалансированная точность)
                        | Метод | Т       |P       | КК | ТМ  |  Ч  | Сп | ОТ|
                        |------------|------------|------------|------------|------------|------------|------------|------------|
                        |",method ,"|"
                        , round(x[["overall"]][["Accuracy"]],2),
                        "[95% ДИ:",round(x[["overall"]][["AccuracyLower"]],2),",",round(x[["overall"]][["AccuracyUpper"]],2) ,"].","|"
                        ,round(x[["overall"]][["AccuracyPValue"]],2),"|"
                        ,round(x[["overall"]][["Kappa"]],2),"|"
                        ,round(x[["overall"]][["McnemarPValue"]],2),"|"
                        ,round(x[["byClass"]][["Sensitivity"]],2),"|"
                        ,round(x[["byClass"]][["Specificity"]],2),"|"
                        ,round(x[["byClass"]][["Balanced Accuracy"]],2),"|"
                        
                        
  ))
  
  write.table(Описание, FileName, sep="*", append = TRUE)
  
}


