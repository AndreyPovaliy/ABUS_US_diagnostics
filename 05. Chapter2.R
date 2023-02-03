######General description#######
escribir ("2.1 Общее описанеи пациентов, вошедших в исследование")
How_many(df_Abus$Name,"Всего в исследование вошло")
Describe_numeric (df_Abus$Age, "возраста ","пациентов по всей выборке составил "," лет")
Describe_numeric (df_Abus$height, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (df_Abus$weight, "веса ","пациентов по всей выборке составил "," кг")


Quantity_discr("Во всей выборке первичный диагноз ",df_Abus$Diagnosis_primary)
Quantity_discr("Во всей выборке поражение сторны ",df_Abus$Side)
Quantity_discr("Во всей выборке репродуктивный статус ",df_Abus$Satus_reproductive)
Quantity_discr("Во всей выборке жалобы ",df_Abus$Сomplaints)
Quantity_discr("Во всей выборке операции на груди до исследования ",df_Abus$Breast_Surgery_before)
Quantity_discr("Во всей выборке кожные симптомы ",df_Abus$skin_symptoms)
Quantity_discr("Во всей выборке втягивание соска ",df_Abus$nipple_retraction)
Quantity_discr("Во всей выборке выделения из соска ",df_Abus$nipple_release)
Quantity_discr("Во всей выборке поражение в квандранте ",df_Abus$quadrant)
Quantity_discr("Во всей выборке тип структуры по ACR ",df_Abus$type_structure_ACR)
Quantity_discr("Во всей выборке наследственность ",df_Abus$genetics)
Quantity_discr("Во всей выборке прием гормональных препаратов ",df_Abus$hormonal_medications)

pvalueQualitativeText(df_Abus$Diagnosis_primary,df_Abus$Group,"по первичному диагнозу")
pvalueQualitativeText(df_Abus$Side,df_Abus$Group,"по стороне поражения")
pvalueQualitativeText(df_Abus$Satus_reproductive,df_Abus$Group,"по репродуктивному статусу")
pvalueQualitativeText(df_Abus$Сomplaints,df_Abus$Group,"по жалобам")
pvalueQualitativeText(df_Abus$Breast_Surgery_before,df_Abus$Group,"по операциям до")
pvalueQualitativeText(df_Abus$skin_symptoms,df_Abus$Group,"по кожным симптомам")
pvalueQualitativeText(df_Abus$nipple_retraction,df_Abus$Group,"по втягиванию соска")
pvalueQualitativeText(df_Abus$nipple_release,df_Abus$Group,"по выделениям из соска")
pvalueQualitativeText(df_Abus$quadrant,df_Abus$Group,"по квадранту")
pvalueQualitativeText(df_Abus$type_structure_ACR,df_Abus$Group,"по структуре по ACR")
pvalueQualitativeText(df_Abus$genetics,df_Abus$Group,"по наследственности")
pvalueQualitativeText(df_Abus$hormonal_medications,df_Abus$Group,"по приему гормональных препаратов")






######Description younger group#######


######Description older group#######




######Description 1st group#######


######Description 2nd group#######


######Description 3rd group#######


######Description 4th group#######


