# source("~/Статиьи и диссертации/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")
source("~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R")

#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)



######General description#######
escribir ("# ГЛАВА 2. МАТРИАЛЫ И МЕТОДЫ

В настоящей главе будут подробно представлены данные о дизайне исследования, подробное описание используемых диагностических методов, регистрируемых данных и классификаторов.

## 2.1 Общая характеристика исследования

Исследование можно характеризовать как клиническое исследование диагностических аспектов раннней диагностики рака молочной железы.
Обектом исследования являются новобразования молочной железы, регистрируемые при дигностике с использованием ручного ультразвукого исследования (УЗИ), маммографии (ММГ) и автоматизированного объемного УЗИ сканирования молочных желез (ABUS).
Предметом исследования является изучение диагностической эффективности автоматизированного объемного УЗИ сканирования молочных желез, а также анализ наиболее важных факторов как преддиагностическом этапе, так и при выполнении конкретного диагностического метода, в частности при выполнении автоматизированного объемного УЗИ сканирования молочных желез.
Дизайн исследования можно охарактеризовать ретро-проспективное наблюдательное исследование.
Протокол настоящего исследования был одобрен на заседании локального этического комитета СЗГМУ им.
Мечникова №00 от ХХ.ХХ.ХХХХ года.

Всего в исследование вошло 2794 пациенток.
Критерии включения были пациенты женского пола в возрасте от 18 до 80 лет; женщина, посетившая врача для обследования рака молочной железы, с отсутствием видимых признаков рака молочной железы.
Критериями исключения были: женщины, которые были беременны, кормили грудью или планировали забеременеть; оперативное лечение в анамнезе (лампэктомия, мастэктомия, увеличение груди), Эксцизионная или чрескожная биопсия за последние 12 месяцев,пациентки получавшие лечение по поводу рака молочных желез за последние 12 месяцев.
В это исследование была включена одна медицинская клиника- СМТ, состоящая из двух зданий -амбулаторно-поликлического комплекса и хирургического корпуса со стационаром.
Все женщины из амбулаторного отделения были приглашены для участия в нашем исследовании, участники подписали форму информированного согласия.
Все обследования были проведены медицинским персоналом с соответствующей квалификацией.
Всем провели клинический осмотр, пальпацию, собрали информацию о социально-демографических данных и потенциальных факторах риска РМЖ.

Все пациентки были разделены на 2 независимые друг от друга выборки по принципу возраста: выборка пациенток с возрастом до 40 лет и выборка пациенток с возрастом от 40 лет включительно.
Принцип разделения по возрасту был связан с различными принципами использования диагностических методов в скрининге рака молочной железы.
У пациенток моложе 40 лет ММГ менее эффективна, так как низкая чувствительность метода и основным методом диагности используется УЗИ метод [@mandelson2000breast].
У пациенток моложе от 40 лет метод ММГ является обязательным в скрининге РМЖ [@narayan2020].
Более подробно об используемых методах можно прочитать в разделе \"2.3 Описание диагностических методов\".

В выборку до 40 лет вошло 1511 пацинеток.
Эта выборка пациенток была разделена на две группы A и B.
В группу A вошло 724 пациенток и в это группе скрининг проводился с использовонием мануальной УЗИ диагностики и и автоматизированного объемного УЗИ сканирования молочных желез (исследуемая группа).
В группу B вошло 787 пациенток и в этой группе скрининг проводился только с исползовонием ручного УЗИ диагностики (котнтрольная группа).
В выборку 40 лет и старше вошло 1283 пацинеток.
Эта выборка пациенток была разделена на две группы С и D.
В группу С вошло 655 пациенток и в это группе скрининг проводился с использовонием ручного УЗИ, маммографии и автоматизированного объемного УЗИ сканирования молочных желез (исследуемая группа).
В группу D вошло 628 пациенток и в этой группе скрининг проводился только с исползовонием ручного УЗИ и маммографии (котнтрольная группа).
Подробное описание выборок и групп представлено в разделе \"2.5 Описание исследуемых групп\".
Включение указанного количества пациенток в группы было основано на расчете мощности, более подробно можно прочитать в разделе \"2.6 Статистический анализ данных\".

Диагностический этап, где проводилась непосредственно диагностическое исследование с использованием методом ручного УЗИ исследования, маммографии и автоматизированного объемного УЗИ сканирования молочных желез в зависимости от группы распределения.

Ппроизводился сбор данных для последующего выления наиболее значимых факторов, а также выявления эффективности изучаемых методов и прогностической ценности метода.

## 2.2 Описание диагностических методов

### 2.2.1 Ручное УЗИ исследование

HHUS выполняли два врача ультразвуковой диагностики со стажем работы более 7 лет.
Исследование проводилось в положении лежа, с руками за головой, с последовательным сканированием каждого квадранта обеих молочных железе в сагитальной и аксиальной плоскостях, с исследованием ретроареолярной области и аксиллярных областей с двух сторон.
Устройства, используемые для проведения HHUS включали GE LOGIQS 8 (GE Medical Systems, Милуоки, Висконсин, США), Toshiba Aplio 300(Canon Япония)- ультразвуковые системы экспертного класса.

### 2.3.2 Автоматизированное объемное УЗИ сканирование молочных желез (ABUS)

D-автоматизированная ультразвуковая система Invenia (ABUS) оцениваемая в данном исследовании, производства GE Healthcare (Саннивейл, Калифорния, США) 2018 года выпуска--- это компьютерная система для оценки плотной молочной железы.

Каждая молочная железа была визуализирована в трех проекциях: боковой (LAT), переднезадней (AP).и медиальный (MED) с автоматическим датчиком с линейной матрицей от 6 до 14 МГц, прикрепленным к жесткой компрессионной пластине.(площадь 15,4×17,0×5,0 см).Индивидуальная мембрана для датчика была использована для каждой пациентки.
Во время исследования система получала до 300 2D-срезов и реконструировала их в коронарной плоскости.
Стандартизированный процесс осмотра включает использование запатентованной коронарной плоскости для быстрой навигации по молочной железе, а также использование «режима обзора», позволяющего врачу быстро интерпретировать изображения.
Время сбора данных для каждой проекции составляло 60 с, примерно по 3--4 мин на каждую молочную железу.
Обследование проводили в положении лежа.
Полотенце было помещено под плечом, что помогло расправить ткань молочной железы равномерно, соском к потолку.
На молочные железы равномерно наносили гипоаллергенный ультразвуковой гель с дополнительным количество на область соска..
Возможно применение трех уровней компрессии датчика для исследования молочных желез для получения наилучшей визуализации с учетом комфорта пациента.

Сканирование ABUS было непрерывным и автоматизированным.В течение исследования женщин попросили не двигаться, не разговаривать и дышать ровно.
Выполнял исследование сертифицированный персонал со средним медицинским образованием.
После завершения сбора данных ультразвуковой системой весь массив передавался на специальную рабочую станцию для интерпретации.
Оценку изображений ABUS выполнял один врач ультразвуковой диагностики, со стажем работы более 7 лет.
Общее время, необходимое для подготовки пациента и получения ABUS, фиксировалось, в каждом случае и варьировалось примерно между 10 и 15 мин.

### 2.3.3 Маммография

Пациентки старше 40 лет прошли двухпроекционную цифровую маммографию (в медиалатеральной косой и краниокаудальной проекции)обеих молочных желез.
Маммографию также выполняли женщинам моложе 40 лет в случае положительного семейного или личного анамнеза - рак молочной железы.
Использумемое оборудование- Planmed Clarity 3D с функцией томосинтеза (Финляндия).
Оценку изображений проводил один рентгенолог со стажем работы более 10 лет.

### 2.3.4 Магнитно-резонансная томография

Диагностика МРТ проводилась на высокопольном магнитно-резонансном томографе General Electric Medical Systems Signa HDxt 1,5 Т (США).
Показаниями к проведению МРТ была поставленная после проведения ручного УЗИ категория 3 по классификации по BI-RADS.

### 2.3.5 Оценка выявленных изменений.

Результаты выявленных изменений были классифицированы по BI-RADS отсортированы по шести категориям [@spak2017]: 0 = неполные данные , 1 = нормальные, 2 = доброкачественные, 3 =вероятно доброкачественные, 4 = подозрительные, 5 = с высокой степенью вероятности злокачественные, для HHUS, ABUS и MG.
Для категории Birads 3 обязательно проводилась магнитно-резонансная томография (МРТ) для выявления истинно отрицательных и ложноотрицательных результатов.
Женщинам, отнесенным к категории 4 или 5, проводилась трепан биопсия под уз-наведением или стереотаксическим наведением с последующей морфологической и при необходимости иммуногистохимической верификацией.
          
          ## 2.4 Описание регистрируемых данных и их классификаторов")

escribir ("## 2.5 Описание исследуемых групп

### 2.5.1 Общее описание выборки пациенток до 40 лет
          
          С февраля 2019 по май 2023 года было исследовано")
How_many(dfXlsx$name_patient,"Всего в исследование вошло")
Describe_numeric (dfXlsx$age_patient, "возраста ","пациентов по всей выборке составил "," лет")
escribir(paste("Минимальный возраст составил", min(dfXlsx$age_patien), "лет."))
escribir(paste("Максимальный возраст составил", max(dfXlsx$age_patien), "лет."))
Describe_numeric (dfXlsx$height_patient, "роста ","пациентов по всей выборке составил "," см")
Describe_numeric (dfXlsx$weight_patient, "веса ","пациентов по всей выборке составил "," кг")

Quantity_discr("Во всей выборке были поставлены диагнозы ",dfXlsx$diagnosis_primary)

Quantity_discr("Во всей выборке были выялены следующие жалобы ", dfXlsx$complaints)

Quantity_discr("Во всей выборке репродуктивный статус был ",dfXlsx$satus_reproductive)
Quantity_discr("Во всей выборке операций на молочной железе в анамнезе ",dfXlsx$breast_surgery_before)
Quantity_discr("Во всей выборке прием гормональных препаратов ",dfXlsx$hormonal_medications)
Quantity_discr("Во всей выборке генетическая предрасположенность ",dfXlsx$genetics)
Quantity_discr("Во всей выборке было выявлена мутация BRCA ",dfXlsx$mutation_brca)

Quantity_discr("Во всей выборке сторона поражения при осмотре ",dfXlsx$side)
Quantity_discr("Во всей выборке кожные симптомы при осмотре ",dfXlsx$skin_symptoms)
Quantity_discr("Во всей выборке втягивание соска при осмотре ",dfXlsx$nipple_retractionn)
Quantity_discr("Во всей выборке выделения из соска при осмотре ",dfXlsx$nipple_release)
Quantity_discr("Во всей выборке тип плотности по ACR при осмотре ",dfXlsx$type_structure_ACR)

Quantity_discr("Во всей выборке квадрант локализации ",dfXlsx$quadrant)


# pvalueQualitativeText(dfXlsx$diagnosis_primary,dfXlsx$group_separation,"по первичному диагнозу")
# pvalueQualitativeText(dfXlsx$complaints,dfXlsx$group_separation,"по выявленным жалобам")
# pvalueQualitativeText(dfXlsx$satus_reproductive,dfXlsx$group_separation,"по репродуктивному статусу")
# pvalueQualitativeText(dfXlsx$breast_surgery_before,dfXlsx$group_separation,"по операциям в анамнезе")
# pvalueQualitativeText(dfXlsx$hormonal_medications,dfXlsx$group_separation,"по приему гормональных препаратов")
# pvalueQualitativeText(dfXlsx$genetics,dfXlsx$group_separation,"по генетической предрасположенности")
# pvalueQualitativeText(dfXlsx$mutation_brca,dfXlsx$group_separation,"по выявлению мутации BRCA")
# 
# pvalueQualitativeText(dfXlsx$side,dfXlsx$group_separation,"по стороне поражения")
# pvalueQualitativeText(dfXlsx$skin_symptoms,dfXlsx$group_separation,"по кожным симптомам")
# pvalueQualitativeText(dfXlsx$nipple_retraction,dfXlsx$group_separation,"по симптому втягивания соска")
# pvalueQualitativeText(dfXlsx$nipple_release,dfXlsx$group_separation,"по симптому выделениям из соска")
# pvalueQualitativeText(dfXlsx$type_structure_acr,dfXlsx$group_separation,"по типу плотности по ACR при осмотре")
# 
# pvalueQualitativeText(dfXlsx$quadrant,dfXlsx$group_separation,"по квадранту локализации")




######Description younger group#######
escribir ("### 2.5.1 Общее описание выборки пациенток до 40 лет")

How_many(dfXlsxJun$name_patient,"Пациенток до 40 лет в исследование вошло")
Describe_numeric (dfXlsxJun$age_patient, "возраста ","пациенток выборке до 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxJun$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxJun$age_patient), "лет"))

Describe_numeric (dfXlsxJun$height_patient, "роста ","пациенток выборке до 40 лет составил "," см")
Describe_numeric (dfXlsxJun$weight_patient, "веса ","пациенток выборке до 40 лет составил "," кг")

Quantity_discr("В выборке до 40 лет были поставлены диагнозы ",dfXlsxJun$diagnosis_primary)

Quantity_discr("В выборке до 40 лет были выялены следующие жалобы ", dfXlsxJun$complaints)

Quantity_discr("В выборке до 40 лет репродуктивный статус был ",dfXlsxJun$satus_reproductive)
Quantity_discr("В выборке до 40 лет операций на молочной железе в анамнезе ",dfXlsxJun$breast_surgery_before)
Quantity_discr("В выборке до 40 лет прием гормональных препаратов ",dfXlsxJun$hormonal_medications)
Quantity_discr("В выборке до 40 лет генетическая предрасположенность ",dfXlsxJun$genetics)
Quantity_discr("В выборке до 40 лет было выявлена мутация BRCA ",dfXlsxJun$mutation_brca)

Quantity_discr("В выборке до 40 лет сторона поражения при осмотре ",dfXlsxJun$side)
Quantity_discr("В выборке до 40 лет кожные симптомы при осмотре ",dfXlsxJun$skin_symptoms)
Quantity_discr("В выборке до 40 лет втягивание соска при осмотре ",dfXlsxJun$nipple_retraction)
Quantity_discr("В выборке до 40 лет выделения из соска при осмотре ",dfXlsxJun$nipple_release)
Quantity_discr("В выборке до 40 лет тип плотности по ACR при осмотре ",dfXlsxJun$type_structure_acr)

Quantity_discr("В выборке до 40 лет квадрант локализации ",dfXlsxJun$quadrant)


escribir ("### 2.5.2 Описание групп в выборке пациенток до 40 лет")
How_many(dfXlsxGr1$name_patient,"В группу A")
How_many(dfXlsxGr3$name_patient,"В группу B")

chapter_3_4_text("Первичный диагноз ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$diagnosis_primary,
                 dfXlsxGr3$diagnosis_primary,
                 dfXlsxJun$diagnosis_primary,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.1. Первичный диагноз, поставленный при первичном осмотре в группах A и B.")
escribir ("![](images2/Jun/diagnosis_primary)")
escribir ("Рисунок №2.1. Первичный диагноз, поставленный при первичном осмотре в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$diagnosis_primary,dfXlsxJun$group_separation,"Первичный диагноз ")

chapter_3_4_text("Жалобы ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$complaints,
                 dfXlsxGr3$complaints,
                 dfXlsxJun$complaints,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.2. Жалобы, выявленные при первичном осмотре в группах A и B.")
escribir ("![](images2/Jun/complaints)")
escribir ("Рисунок №2.2. Жалобы, выявленные при первичном осмотре в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$complaints,dfXlsxJun$group_separation,"Жалобы ")

chapter_3_4_text("Репродуктивный статус ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$satus_reproductive,
                 dfXlsxGr3$satus_reproductive,
                 dfXlsxJun$satus_reproductive,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.3. Репродуктивный статус в группах A и B.")
escribir ("![](images2/Jun/satus_reproductive)")
escribir ("Рисунок №2.3. Репродуктивный статус в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$satus_reproductive,dfXlsxJun$group_separation,"Репродуктивный статус ")

chapter_3_4_text("Операции на молочной железе ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$breast_surgery_before,
                 dfXlsxGr3$breast_surgery_before,
                 dfXlsxJun$breast_surgery_before,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.4. Операции на молочной железе в анамнезе в группах A и B.")
escribir ("![](images2/Jun/breast_surgery_before)")
escribir ("Рисунок №2.4. Операции на молочной железе в анамнезе в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$breast_surgery_before,dfXlsxJun$group_separation,"Операции на молочной железе")

chapter_3_4_text("Прием гормональных препаратов ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$hormonal_medications,
                 dfXlsxGr3$hormonal_medications,
                 dfXlsxJun$hormonal_medications,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.5. Прием гормональных препаратов в анамнезе в группах A и B.")
escribir ("![](images2/Jun/hormonal_medications)")
escribir ("Рисунок №2.5. Прием гормональных препаратов в анамнезе в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$hormonal_medications,dfXlsxJun$group_separation,"Прием гормональных препаратов ")

chapter_3_4_text("Наследственная предрасположенность ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$genetics,
                 dfXlsxGr3$genetics,
                 dfXlsxJun$genetics,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.6. Наследственная предрасположенность в анамнезе в группах A и B.")
escribir ("![](images2/Jun/genetics)")
escribir ("Рисунок №2.6. Наследственная предрасположенность в анамнезе в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$genetics,dfXlsxJun$group_separation,"Генетика ")

chapter_3_4_text("Мутация BRCA ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$mutation_brca,
                 dfXlsxGr3$mutation_brca,
                 dfXlsxJun$mutation_brca,
                 dfXlsxJun$group_separation)
dfXlsxJun_SubsetMutationBrca <- subset(dfXlsxJun,dfXlsxJun$mutation_brca !="Оценка не проводилась")
escribir ("Таблица №2.7. Мутация BRCA, выявленная в группах A и B.")
escribir ("![](images2/Jun/mutation_brca)")
escribir ("Рисунок №2.7. Мутация BRCA, выявленная в группах A и B.")
GeomBar(dfXlsxJun_SubsetMutationBrca,dfXlsxJun_SubsetMutationBrca$mutation_brca,dfXlsxJun_SubsetMutationBrca$group_separation,"Мутация BRCA ")

chapter_3_4_text("Сторона ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$side,
                 dfXlsxGr3$side,
                 dfXlsxJun$side,
                 dfXlsxJun$group_separation)
dfXlsxJun_SubsetSide <- subset(dfXlsxJun,dfXlsxJun$side !="не пальпируются")
escribir ("Таблица №2.8. Сторона поражения при осмотре в группах A и B.")
escribir ("![](images2/Jun/side)")
escribir ("Рисунок №2.8. Сторона поражения при осмотре в группах A и B.")
GeomBar(dfXlsxJun_SubsetSide,dfXlsxJun_SubsetSide$side,dfXlsxJun_SubsetSide$group_separation,"Сторона ")


chapter_3_4_text("Кожные симптомы ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$skin_symptoms,
                 dfXlsxGr3$skin_symptoms,
                 dfXlsxJun$skin_symptoms,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.9. Кожные симптомы при осмотре в группах A и B.")
escribir ("![](images2/Jun/skin_symptoms)")
escribir ("Рисунок №2.9. Кожные симптомы при осмотре в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$skin_symptoms,dfXlsxJun$group_separation,"Кожные симптомы ")


chapter_3_4_text("Симптом втягивания соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_retraction,
                 dfXlsxGr3$nipple_retraction,
                 dfXlsxJun$nipple_retraction,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.10. Симптом втягивания соска при осмотре в группах A и B.")
escribir ("![](images2/Jun/nipple_retraction)")
escribir ("Рисунок №2.10. Симптом втягивания соска при осмотре в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$nipple_retraction,dfXlsxJun$group_separation,"Симптом втягивания соска ")

chapter_3_4_text("Симптом выделения из соска ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$nipple_release,
                 dfXlsxGr3$nipple_release,
                 dfXlsxJun$nipple_release,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.11. Симптом выделения из соска  при осмотре в группах A и B.")
escribir ("![](images2/Jun/nipple_release)")
escribir ("Рисунок №2.11. Симптом выделения из соска  при осмотре в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$nipple_release,dfXlsxJun$group_separation,"Симптом выделения из соска ")

chapter_3_4_text("Тип структуры ACR ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$type_structure_acr,
                 dfXlsxGr3$type_structure_acr,
                 dfXlsxJun$type_structure_acr,
                 dfXlsxJun$group_separation)
escribir ("Таблица №2.12. Тип структуры ACR в группах A и B.")
escribir ("![](images2/Jun/type_structure_acr)")
escribir ("Рисунок №2.12. Тип структуры ACR в группах A и B.")
GeomBar(dfXlsxJun,dfXlsxJun$type_structure_acr,dfXlsxJun$group_separation,"Тип структуры ACR ")

chapter_3_4_text("Квадрант ",
                 "В группе A ",
                 "В группе B ",
                 dfXlsxGr1$quadrant,
                 dfXlsxGr3$quadrant,
                 dfXlsxJun$quadrant,
                 dfXlsxJun$group_separation)
dfXlsxJun_SubsetQuadrant <- subset(dfXlsxJun,dfXlsxJun$quadrant !="нет")
escribir ("Таблица №2.13. Квадрант локализации в группах A и B.")
escribir ("![](images2/Jun/quadrant)")
escribir ("Рисунок №2.13. Квадрант локализации в группах A и B.")
GeomBar(dfXlsxJun_SubsetQuadrant,dfXlsxJun_SubsetQuadrant$quadrant,dfXlsxJun_SubsetQuadrant$group_separation,"Квадрант ")




######Description older group#######
escribir ("2.5.3 Общее описание выборки пациенток 40 лет и старше")

How_many(dfXlsxSnr$name_patient,"Пациенток после 40 лет в исследование вошло")



Describe_numeric (dfXlsxSnr$age_patient, "возраста ","пациенток выборке после 40 лет составил "," лет")
escribir (paste("Минимальный возраст сотсавил", min(dfXlsxSnr$age_patient), "лет"))
escribir (paste("Максимальный возраст сотсавил", max(dfXlsxSnr$age_patient), "лет"))
Describe_numeric (dfXlsxSnr$height_patient, "роста ","пациенток выборке после 40 лет составил "," см")
Describe_numeric (dfXlsxSnr$weight_patient, "веса ","пациенток выборке после 40 лет составил "," кг")

Quantity_discr("В выборке после 40 лет были поставлены диагнозы ",dfXlsxSnr$diagnosis_primary)

Quantity_discr("В выборке после 40 лет были выялены следующие жалобы ", dfXlsxSnr$complaints)

Quantity_discr("В выборке после 40 лет репродуктивный статус был ",dfXlsxSnr$satus_reproductive)
Quantity_discr("В выборке после 40 лет операций на молочной железе в анамнезе ",dfXlsxSnr$breast_surgery_before)
Quantity_discr("В выборке после 40 лет прием гормональных препаратов ",dfXlsxSnr$hormonal_medications)
Quantity_discr("В выборке после 40 лет генетическая предрасположенность ",dfXlsxSnr$genetics)
Quantity_discr("В выборке после 40 лет было выявлена мутация BRCA ",dfXlsxSnr$mutation_brca)

Quantity_discr("В выборке после 40 лет сторона поражения при осмотре ",dfXlsxSnr$side)
Quantity_discr("В выборке после 40 лет кожные симптомы при осмотре ",dfXlsxSnr$skin_symptoms)
Quantity_discr("В выборке после 40 лет втягивание соска при осмотре ",dfXlsxSnr$nipple_retraction)
Quantity_discr("В выборке после 40 лет выделения из соска при осмотре ",dfXlsxSnr$nipple_release)
Quantity_discr("В выборке после 40 лет тип плотности по ACR при осмотре ",dfXlsxSnr$type_structure_acr)

Quantity_discr("В выборке после 40 лет квадрант локализации ",dfXlsxSnr$quadrant)



escribir ("### 2.5.4 Описание групп в выборке пациенток 40 лет с старше")
How_many(dfXlsxGr1$name_patient,"В группу C")
How_many(dfXlsxGr3$name_patient,"В группу D")

chapter_3_4_text("Первичный диагноз ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$diagnosis_primary,
                 dfXlsxGr4$diagnosis_primary,
                 dfXlsxSnr$diagnosis_primary,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.14. Первичный диагноз при осмотре в группах С и D.")
escribir ("![](images2/Snr/diagnosis_primary)")
escribir ("Рисунок №2.14. Первичный диагноз при осмотре в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$diagnosis_primary,dfXlsxSnr$group_separation,"Первичный диагноз ")

chapter_3_4_text("Жалобы ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$complaints,
                 dfXlsxGr4$complaints,
                 dfXlsxSnr$complaints,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.15. Жалобы при осмотре в группах С и D.")
escribir ("![](images2/Snr/complaints)")
escribir ("Рисунок №2.15. Жалобы при осмотре в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$complaints,dfXlsxSnr$group_separation,"Жалобы ")

chapter_3_4_text("Репродуктивный статус ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$satus_reproductive,
                 dfXlsxGr4$satus_reproductive,
                 dfXlsxSnr$satus_reproductive,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.16. Репродуктивный статус  в группах С и D.")
escribir ("![](images2/Snr/satus_reproductive)")
escribir ("Рисунок №2.16. Репродуктивный статус  в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$satus_reproductive,dfXlsxSnr$group_separation,"Репродуктивный статус ")

chapter_3_4_text("Операции на молочной железе ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$breast_surgery_before,
                 dfXlsxGr4$breast_surgery_before,
                 dfXlsxSnr$breast_surgery_before,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.17. Операции на молочной железе в анамнезе в группах С и D.")
escribir ("![](images2/Snr/breast_surgery_before)")
escribir ("Рисунок №2.17. Операции на молочной железе в анамнезе в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$breast_surgery_before,dfXlsxSnr$group_separation,"Операции на молочной железе")

chapter_3_4_text("Прием гормональных препаратов ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$hormonal_medications,
                 dfXlsxGr4$hormonal_medications,
                 dfXlsxSnr$hormonal_medications,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.18. Прием гормональных препаратов в анамнезе в группах С и D.")
escribir ("![](images2/Snr/hormonal_medications)")
escribir ("Рисунок №2.18. Прием гормональных препаратов в анамнезе в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$hormonal_medications,dfXlsxSnr$group_separation,"Прием гормональных препаратов ")

chapter_3_4_text("Наследсвенная предрасположенность ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$genetics,
                 dfXlsxGr4$genetics,
                 dfXlsxSnr$genetics,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.19. Наследсвенная предрасположенность в группах С и D.")
escribir ("![](images2/Snr/genetics)")
escribir ("Рисунок №2.19. Наследсвенная предрасположенность в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$genetics,dfXlsxSnr$group_separation,"Наследсвенная предрасположенность ")

chapter_3_4_text("Мутация BRCA ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$mutation_brca,
                 dfXlsxGr4$mutation_brca,
                 dfXlsxSnr$mutation_brca,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.20. Мутация BRCA в группах С и D.")
escribir ("![](images2/Snr/mutation_brca)")
escribir ("Рисунок №2.20. Мутация BRCA в группах С и D.")
dfXlsxSnr_SubsetMutationBrca  <- subset(dfXlsxSnr,dfXlsxSnr$mutation_brca !="Оценка не проводилась")
GeomBar(dfXlsxSnr_SubsetMutationBrca,dfXlsxSnr_SubsetMutationBrca$mutation_brca,dfXlsxSnr_SubsetMutationBrca$group_separation,"Мутация BRCA ")

chapter_3_4_text("Сторона ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$side,
                 dfXlsxGr4$side,
                 dfXlsxSnr$side,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.21. Сторона поражения при осмотре в группах С и D.")
escribir ("![](images2/Snr/side)")
escribir ("Рисунок №2.21. Сторона поражения при осмотре в группах С и D.")
dfXlsxSnr_SubsetSide <- subset(dfXlsxSnr,dfXlsxSnr$side !="не пальпируются")
GeomBar(dfXlsxSnr_SubsetSide,dfXlsxSnr_SubsetSide$side,dfXlsxSnr_SubsetSide$group_separation,"Сторона ")


chapter_3_4_text("Кожные симптомы ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$skin_symptoms,
                 dfXlsxGr4$skin_symptoms,
                 dfXlsxSnr$skin_symptoms,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.22. Кожные симптомы при осмотре в группах С и D.")
escribir ("![](images2/Snr/skin_symptoms)")
escribir ("Рисунок №2.22. Кожные симптомы при осмотре в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$skin_symptoms,dfXlsxSnr$group_separation,"Кожные симптомы ")


chapter_3_4_text("Симптом втягивания соска ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$nipple_retraction,
                 dfXlsxGr4$nipple_retraction,
                 dfXlsxSnr$nipple_retraction,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.23. Симптом втягивания соска при осмотре в группах С и D.")
escribir ("![](images2/Snr/nipple_retraction)")
escribir ("Рисунок №2.23. Симптом втягивания соска при осмотре в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$nipple_retraction,dfXlsxSnr$group_separation,"Симптом втягивания соска ")

chapter_3_4_text("Симптом выделения из соска ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$nipple_release,
                 dfXlsxGr4$nipple_release,
                 dfXlsxSnr$nipple_release,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.24. Симптом выделения из соска при осмотре в группах С и D.")
escribir ("![](images2/Snr/nipple_release)")
escribir ("Рисунок №2.24. Симптом выделения из соска при осмотре в группах С и D.")
dfXlsxSnr_SubsetNippleRelease <- subset(dfXlsxSnr,dfXlsxSnr$nipple_release !="нет")
GeomBar(dfXlsxSnr_SubsetNippleRelease,dfXlsxSnr_SubsetNippleRelease$nipple_release,dfXlsxSnr_SubsetNippleRelease$group_separation,"Симптом выделения из соска ")

chapter_3_4_text("Тип структуры ACR ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$type_structure_acr,
                 dfXlsxGr4$type_structure_acr,
                 dfXlsxSnr$type_structure_acr,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.25. Тип структуры ACR в группах С и D.")
escribir ("![](images2/Snr/type_structure_acr)")
escribir ("Рисунок №2.25. Тип структуры ACR в группах С и D.")
GeomBar(dfXlsxSnr,dfXlsxSnr$type_structure_acr,dfXlsxSnr$group_separation,"Тип структуры ACR ")

chapter_3_4_text("Квадрант ",
                 "В группе C ",
                 "В группе D ",
                 dfXlsxGr2$quadrant,
                 dfXlsxGr4$quadrant,
                 dfXlsxSnr$quadrant,
                 dfXlsxSnr$group_separation)
escribir ("Таблица №2.26. Квадрант локализации в группах С и D.")
escribir ("![](images2/Snr/quadrant)")
escribir ("Рисунок №2.26. Квадрант локализации  в группах С и D.")
dfXlsxSnr_SubsetQuadrant<- subset(dfXlsxSnr,dfXlsxSnr$quadrant !="нет")
GeomBar(dfXlsxSnr_SubsetQuadrant,dfXlsxSnr_SubsetQuadrant$quadrant,dfXlsxSnr_SubsetQuadrant$group_separation,"Квадрант ")








