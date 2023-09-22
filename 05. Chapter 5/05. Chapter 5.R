
Quantity_discr("В выборке до 40 лет при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureJun$us_calcinates_micro_pure)
Quantity_discr("В первой группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr1$us_calcinates_micro_pure)
Quantity_discr("В третьей группе при выполнении УЗИ найдены кальцинаты ",dfUsCalcinatesMicroPureGr3$us_calcinates_micro_pure)


Quantity_discr("В выборке до 40 лет при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeJun$abus_calcinates)
Quantity_discr("В первой группе при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeGr1$abus_calcinates)
Quantity_discr("В третьей группе при выполнении ABUS были найдены кальцинаты ",dfAbusDescribeGr3$abus_calcinates)

pvalueQualitativeText(dfUsCalcinatesMicroPureJun$us_calcinates_micro_pure,dfUsCalcinatesMicroPureJun$group_separation,"при выполнении УЗИ кальцинаты в выборке до 40")


table(dfAbusDescribeGr3$abus_calcinates)