x1<-sample(letters[1:2],20,replace=TRUE)
y1<-sample(letters[1:2],20,replace=TRUE)
table1<-table(x1,y1)
table1

library(caret)

confusionMatrix(table1)
