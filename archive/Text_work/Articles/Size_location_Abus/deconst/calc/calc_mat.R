How_many(dfXlsxGr2$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxGr2$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст пациенток до 40 лет сотсавил", min(dfXlsxGr2$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr2$age_patient), "лет"))

Describe_numeric (dfXlsxGr2$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxGr2$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")


How_many(dfXlsxGr4$name_patient,"Пациенток 40 лет и старше в исследование вошло")
Describe_numeric (dfXlsxGr4$age_patient, "возраста ","пациенток выборке 40 лет и старше составил "," лет")
escribir (paste("Минимальный возраст пациенток 40 лет и старше сотсавил", min(dfXlsxGr4$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxGr4$age_patient), "лет"))

Describe_numeric (dfXlsxGr4$height_patient, "роста ","пациенток выборке 40 лет и старше составил "," см")
Describe_numeric (dfXlsxGr4$weight_patient, "веса ","пациенток выборке 40 лет и старше составил "," кг")

article_text("Репродуктивный статус ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$satus_reproductive,
             dfXlsxGr4$satus_reproductive,
             dfXlsxSnr$satus_reproductive,
             dfXlsxSnr$group_separation)

article_text("Операции на молочной железе ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$breast_surgery_before,
             dfXlsxGr4$breast_surgery_before,
             dfXlsxSnr$breast_surgery_before,
             dfXlsxSnr$group_separation)

article_text("Прием гормональных препаратов ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$hormonal_medications,
             dfXlsxGr4$hormonal_medications,
             dfXlsxSnr$hormonal_medications,
             dfXlsxSnr$group_separation)

article_text("Наследственная предрасположенность ",
             "В группе A ",
             "В группе B ",
             dfXlsxGr2$genetics,
             dfXlsxGr4$genetics,
             dfXlsxSnr$genetics,
             dfXlsxSnr$group_separation)