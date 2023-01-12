#####FUNCTIONS####
#приемер: escrAlgo ("Запись1")
escrAlgo <- function(a) {
  
  pr <- print(a)
  write.table(pr, FileName, sep="*", append = TRUE)
  
}

#приемер: escrAlgoPs ("Запись2")
escrAlgoPs <- function(a) {
  
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



# приемер:Describe_numeric(df_Abus$Age, "возраст","пациентов по всей выборке составил","лет")
Describe_numeric<-function(database,parametr,sample1,mesurement)
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  Descr<-print(paste("Средний", parametr ,sample1,mean1 ,"±",sd1, mesurement,"."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер:Table_numeric("возраст",df_Abus$Age, df_Abus$Group)
Table_numeric<-function(parametr,database,dev )
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер:Table_numericW("возраст",df_Abus$Age, df_Abus$Group)
Table_numericW<-function(parametr,database,dev )
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  p_value <- round(as.numeric(wilcox.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1,"*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}

# приемер:Table_numericKr("возраст",df_Abus$Age, df_Abus$Group)
Table_numericKr<-function(parametr,database,dev )
{
  mean1<-round(mean(database, na.rm = TRUE),2)
  sd1<-round(sd(database, na.rm = TRUE),2)
  p_value <- round(as.numeric(kruskal.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1,"*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# пример: Describe_nonparametric_2(df_Abus$Breast_Surgery_before, "Во всей выборке было ")
Describe_nonparametric_2<-function(database, sample1)
{
  
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))

  Descr<-print(paste(sample1,nonpar_tabble[1,1],"-",nonpar_tabble[1,2],"(",round(nonpar_tabble[1,4]*100,2),"%) ,"
                     ,nonpar_tabble[2,1],"-",nonpar_tabble[2,2],"(",round(nonpar_tabble[2,4]*100,2),"%)."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер: Table_nonparametric_2("Опрации",df_Abus$Breast_Surgery_before,df_Abus$Breast_Surgery_before)
Table_nonparametric_2<-function(Type,database,dev)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  pvalue <- round(as.numeric(summary(table(database, dev))[6]),2)
  Descr<-print(paste(Type,"***","p-value
",nonpar_tabble[1,1],"*",nonpar_tabble[1,2],"*",round(nonpar_tabble[1,4]*100,2),"%*",pvalue,"
",nonpar_tabble[2,1],"*",nonpar_tabble[2,2],"*",round(nonpar_tabble[2,4]*100,2),"%"))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# пример: Describe_nonparametric_3(df_Abus$RI_GrN, "Лучевой наклон во всем образце составлял")
Describe_nonparametric_3<-function(database, sample1)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  
  
  Descr<-print(paste(sample1,nonpar_tabble[1,1],"-",nonpar_tabble[1,2],"(",round(nonpar_tabble[1,4]*100,2),"%) ,"
                     ,nonpar_tabble[2,1],"-",nonpar_tabble[2,2],"(",round(nonpar_tabble[2,4]*100,2),"%) ,"
                     ,nonpar_tabble[3,1],"-",nonpar_tabble[3,2],"(",round(nonpar_tabble[3,4]*100,2),"%)."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


#пример: Table_nonparametric_3("Лучевой наклон",df_Abus$RI_GrN, df_Abus$Group)
Table_nonparametric_3<-function(Type,database,dev)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  pvalue <- round(as.numeric(summary(table(database, dev))[6]),2)
  Descr<-print(paste(Type,"***","p-value
",nonpar_tabble[1,1],"*",nonpar_tabble[1,2],"*",round(nonpar_tabble[1,4]*100,2),"%*",pvalue,"
",nonpar_tabble[2,1],"*",nonpar_tabble[2,2],"*",round(nonpar_tabble[2,4]*100,2),"%
",nonpar_tabble[3,1],"*",nonpar_tabble[3,2],"*",round(nonpar_tabble[3,4]*100,2),"%"))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


#pvalue сравнения непарметрич данных
#приемер: pvalueNonPara(df_Abus$Gender,df_Abus$Group,"по полу")
pvalueNonPara<-function(x,y, parametr1)
{
  S_Table<-round(as.numeric(summary(table(x, y))[6]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",S_Table, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)   
}

#pvalue сравнения парметрич данных (kruskal.test)
#приемер: pvalueParaKr(df_Abus,df_Abus$RI_GrN,df_Abus$Group,"по радиальному наклону")
pvalueParaKr <-function(database,x,y, parametr1)
{
  kruskal<-round(as.numeric(kruskal.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",kruskal, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}

#pvalue сравнения парметрич данных (wilcox.test)
#приемер: pvalueParaWx(df_Abus,df_Abus$Age,df_Abus$Group,"по возрасту")
pvalueParaWx <-function(database,x,y, parametr1)
{
  wilcox<-round(as.numeric(wilcox.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",wilcox, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}




#####COMB FUNCTIONS####