#####Write Xlsx####
setwd("~/Documents/Science/ABUS_US_diagnostics")
write.xlsx(dfXlsx, "ABUS_US_MG_WXLS_lab.xlsx", sheetName = "Data")

dfXlsx <- read.xlsx(xlsxFile = XlxsWayLab,
                    sheet = 'Data')




## to factor --------------------------------------------------------------
dfXlsx$group_separation <- as.factor(dfXlsx$group_separation)
dfXlsx$diagnosis_primary <- as.factor(dfXlsx$diagnosis_primary)
dfXlsx$side <- as.factor(dfXlsx$side)
dfXlsx$satus_reproductive <- as.factor(dfXlsx$satus_reproductive)
dfXlsx$complaints <- as.factor(dfXlsx$complaints)
dfXlsx$breast_surgery_before <- as.factor(dfXlsx$breast_surgery_before)
dfXlsx$skin_symptoms <- as.factor(dfXlsx$skin_symptoms)
dfXlsx$nipple_retraction <- as.factor(dfXlsx$nipple_retraction)
dfXlsx$nipple_release <- as.factor(dfXlsx$nipple_release)
dfXlsx$quadrant <- as.factor(dfXlsx$quadrant)
dfXlsx$genetics <- as.factor(dfXlsx$genetics)
dfXlsx$hormonal_medications <- as.factor(dfXlsx$hormonal_medications)
dfXlsx$us_skin <- as.factor(dfXlsx$us_skin)             
dfXlsx$us_nodle_contour <- as.factor(dfXlsx$us_nodle_contour) 
dfXlsx$us_ducts <- as.factor(dfXlsx$us_ducts) 
dfXlsx$us_background <- as.factor(dfXlsx$us_background) 
dfXlsx$us_formation <- as.factor(dfXlsx$us_formation) 
dfXlsx$us_form <- as.factor(dfXlsx$us_form) 
dfXlsx$us_nodle_size <- as.factor(dfXlsx$us_nodle_size) 
dfXlsx$us_echogenicity_formation <- as.factor(dfXlsx$us_echogenicity_formation)
dfXlsx$us_structure <- as.factor(dfXlsx$us_structure)
dfXlsx$us_formation_blood_flow <- as.factor(dfXlsx$us_formation_blood_flow)
dfXlsx$us_elastography <- as.factor(dfXlsx$us_elastography) 
dfXlsx$us_region_lymph_nodes <- as.factor(dfXlsx$us_region_lymph_nodes) 
dfXlsx$us_diagnosis <- as.factor(dfXlsx$us_diagnosis)
dfXlsx$us_doctor <- as.factor(dfXlsx$us_doctor)
dfXlsx$us_number_nodles <- as.factor(dfXlsx$us_number_nodles)
dfXlsx$us_category_birads <- as.factor(dfXlsx$us_category_birads)
dfXlsx$mmg_conclusion_skin <- as.factor(dfXlsx$mmg_conclusion_skin) 
dfXlsx$mmg_areola <- as.factor(dfXlsx$mmg_areola) 
dfXlsx$mmg_nipple <- as.factor(dfXlsx$mmg_nipple)
dfXlsx$mmg_background_breast <- as.factor(dfXlsx$mmg_background_breast)
dfXlsx$mmg_nodle <- as.factor(dfXlsx$mmg_nodle)
dfXlsx$mmg_nodle_contour <- as.factor(dfXlsx$mmg_nodle_contour) 
dfXlsx$mmg_nodle_size <- as.factor(dfXlsx$mmg_nodle_size) 
dfXlsx$mmg_calcifications <- as.factor(dfXlsx$mmg_calcifications)
dfXlsx$mmg_number_formations_visualized <- as.factor(dfXlsx$mmg_number_formations_visualized)
dfXlsx$mmg_axillary_lymph_nodes <- as.factor(dfXlsx$mmg_axillary_lymph_nodes)
dfXlsx$mmg_conclusion <- as.factor(dfXlsx$mmg_conclusion)
dfXlsx$type_structure_acr <- as.factor(dfXlsx$type_structure_acr)
dfXlsx$mmg_number_nodles <- as.factor(dfXlsx$mmg_number_nodles)
dfXlsx$mmg_category_birads <- as.factor(dfXlsx$mmg_category_birads)
dfXlsx$us_calcinates_micro_pure <- as.factor(dfXlsx$us_calcinates_micro_pure)
dfXlsx$abus_skin <- as.factor(dfXlsx$abus_skin)
dfXlsx$abus_nodle_size <- as.factor(dfXlsx$abus_nodle_size)
dfXlsx$abus_nodle_contours <- as.factor(dfXlsx$abus_nodle_contours)
dfXlsx$abus_echogenicity_formation <- as.factor(dfXlsx$abus_echogenicity_formation)
dfXlsx$abus_structure <- as.factor(dfXlsx$abus_structure)
dfXlsx$abus_symptom_retraction <- as.factor(dfXlsx$abus_symptom_retraction)
dfXlsx$abus_diagnosis <- as.factor(dfXlsx$abus_diagnosis)
dfXlsx$abus_number_nodles <- as.factor(dfXlsx$abus_number_nodles)
dfXlsx$abus_category_birads <- as.factor(dfXlsx$abus_category_birads)
dfXlsx$abus_calcinates <- as.factor(dfXlsx$abus_calcinates)
dfXlsx$mrsi_data <- as.factor(dfXlsx$mrsi_data)
dfXlsx$mrsi_number_nodles <- as.factor(dfXlsx$mrsi_number_nodles)
dfXlsx$tumor_morphology_structure <- as.factor(dfXlsx$tumor_morphology_structure)
dfXlsx$cytological_conclusion <- as.factor(dfXlsx$cytological_conclusion)
dfXlsx$degree_malignancy <- as.factor(dfXlsx$degree_malignancy)
dfXlsx$mutation_brca <- as.factor(dfXlsx$mutation_brca)
dfXlsx$tumor_receptors <- as.factor(dfXlsx$tumor_receptors)
dfXlsx$is_mmg <- as.factor(dfXlsx$is_mmg)
dfXlsx$is_abus <- as.factor(dfXlsx$is_abus)
dfXlsx$is_Mrsi <- as.factor(dfXlsx$is_Mrsi)
dfXlsx$is_Morphology <- as.factor(dfXlsx$is_Morphology)
dfXlsx$is_Cytological <- as.factor(dfXlsx$is_Cytological)
dfXlsx$is_GradeMalignancy <- as.factor(dfXlsx$is_GradeMalignancy)
dfXlsx$is_Receptors <- as.factor(dfXlsx$is_Receptors)
dfXlsx$us_is_nodle <- as.factor(dfXlsx$us_is_nodle)
dfXlsx$abus_is_nodle <- as.factor(dfXlsx$abus_is_nodle)
dfXlsx$mmg_is_nodle <- as.factor(dfXlsx$mmg_is_nodle)
dfXlsx$mmg_is_calc <- as.factor(dfXlsx$mmg_is_calc)
dfXlsx$us_is_calc <- as.factor(dfXlsx$us_is_calc)
dfXlsx$abus_is_calc <- as.factor(dfXlsx$abus_is_calc)
dfXlsx$us_is_tumor <- as.factor(dfXlsx$us_is_tumor)
dfXlsx$mmg_is_tumor <- as.factor(dfXlsx$mmg_is_tumor)
dfXlsx$abus_is_tumor <- as.factor(dfXlsx$abus_is_tumor)
dfXlsx$hist_is_tumor <- as.factor(dfXlsx$hist_is_tumor)
dfXlsx$us_is_microCalc <- as.factor(dfXlsx$us_is_microCalc)
dfXlsx$abus_is_microCalc <- as.factor(dfXlsx$abus_is_microCalc)
dfXlsx$mmg_is_microCalc <- as.factor(dfXlsx$mmg_is_microCalc)
# Mathirials -----------------------------------------------------------------
## Jun --------------------------------------------------------------
dfXlsxJun <- subset(dfXlsx, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxSnr <- subset(dfXlsx, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxGr1 <- subset(dfXlsx, group_separation == gr_US)

## Gr2 --------------------------------------------------------------
dfXlsxGr2 <- subset(dfXlsx, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
dfXlsxGr3 <- subset(dfXlsx, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxGr4 <- subset(dfXlsx, group_separation == gr_US_MMG_ABUS)

#####Add dataframe####
nUs3 <- length(dfXlsxGr3$us_nodle_contour)
nUs4 <-  length(dfXlsxGr4$us_nodle_contour)



groupSep <- c(rep("jun",nUs3),
              rep("snr",nUs4),
              rep("jun",nUs3),
              rep("snr",nUs4),
              rep("jun",nUs3),
              rep("snr",nUs4))
methodsVizualisation <- c(rep("us",nUs3),
                          rep("us",nUs4),
                          rep("abus",nUs3),
                          rep("abus",nUs4),
                          rep("mmg",nUs3),
                          rep("mmg",nUs4))
nodleContour <- c(dfXlsxGr3$us_nodle_contour,
                  dfXlsxGr4$us_nodle_contour,
                  dfXlsxGr3$abus_nodle_contours,
                  dfXlsxGr4$abus_nodle_contours,
                  dfXlsxGr3$mmg_nodle_contour,
                  dfXlsxGr4$mmg_nodle_contour)
nodleSize <- c(dfXlsxGr3$us_nodle_size,
               dfXlsxGr4$us_nodle_size,
               dfXlsxGr3$abus_nodle_size,
               dfXlsxGr4$abus_nodle_size,
               dfXlsxGr3$mmg_nodle_size,
               dfXlsxGr4$mmg_nodle_size)

no_data1 <- as.factor(rep("нет данных",length(dfXlsxGr3$mmg_nodle_size)))
no_data2 <- as.factor(rep("нет данных",length(dfXlsxGr4$mmg_nodle_size)))

echogenicityFormation <- c(dfXlsxGr3$us_echogenicity_formation,
                           dfXlsxGr4$us_echogenicity_formation,
                           dfXlsxGr3$abus_echogenicity_formation,
                           dfXlsxGr4$abus_echogenicity_formation,
                           no_data1,
                           no_data2)
structure <- c(dfXlsxGr3$us_structure,
               dfXlsxGr4$us_structure,
               dfXlsxGr3$abus_structure,
               dfXlsxGr4$abus_structure,
               no_data1,
               no_data2)
diagnosis <- c(dfXlsxGr3$us_diagnosis,
               dfXlsxGr4$us_diagnosis,
               dfXlsxGr3$abus_diagnosis,
               dfXlsxGr4$abus_diagnosis,
               dfXlsxGr3$mmg_conclusion,
               dfXlsxGr4$mmg_conclusion)
time <- c(dfXlsxGr3$us_time,
          dfXlsxGr4$us_time,
          dfXlsxGr3$abus_time,
          dfXlsxGr4$abus_time,
          no_data1,
          no_data2)
numberNodles <- c(dfXlsxGr3$us_number_nodles,
                  dfXlsxGr4$us_number_nodles,
                  dfXlsxGr3$abus_number_nodles,
                  dfXlsxGr4$abus_number_nodles,
                  dfXlsxGr3$mmg_number_nodles,
                  dfXlsxGr4$mmg_number_nodles)
categoryBirads	<- c(dfXlsxGr3$us_category_birads,
                    dfXlsxGr4$us_category_birads,
                    dfXlsxGr3$abus_category_birads,
                    dfXlsxGr4$abus_category_birads,
                    dfXlsxGr3$mmg_category_birads,
                    dfXlsxGr4$mmg_category_birads)
calcinates <- c(dfXlsxGr3$us_calcinates_micro_pure,
                dfXlsxGr4$us_calcinates_micro_pure,
                dfXlsxGr3$abus_calcinates,
                dfXlsxGr4$abus_calcinates,
                dfXlsxGr3$mmg_calcifications,
                dfXlsxGr4$mmg_calcifications)
location <- c(dfXlsxGr3$us_formation,
              dfXlsxGr4$us_formation,
              dfXlsxGr3$abus_formation,
              dfXlsxGr4$abus_formation,
              no_data1,
              no_data2)
isCalc <- c(dfXlsxGr3$us_is_calc,
                 dfXlsxGr4$us_is_calc,
                 dfXlsxGr3$abus_is_calc,
                 dfXlsxGr4$abus_is_calc,
                 dfXlsxGr3$mmg_is_calc,
                 dfXlsxGr4$mmg_is_calc)
isMicroCalc <- c(dfXlsxGr3$us_is_microCalc,
              dfXlsxGr4$us_is_microCalc,
              dfXlsxGr3$abus_is_microCalc,
              dfXlsxGr4$abus_is_microCalc,
              dfXlsxGr3$mmg_is_microCalc,
              dfXlsxGr4$mmg_is_microCalc)
isCancer <- c(dfXlsxGr3$hist_is_tumor,
              dfXlsxGr4$hist_is_tumor,
              dfXlsxGr3$hist_is_tumor,
              dfXlsxGr4$hist_is_tumor,
              dfXlsxGr3$hist_is_tumor,
              dfXlsxGr4$hist_is_tumor)

dfXlsxMetComp <- data.frame("groupSep" = groupSep, 
                            "methodsVizualisation" = methodsVizualisation, 
                            "nodleContour" = nodleContour,
                            "nodleSize" = nodleSize,
                            "echogenicityFormation" = echogenicityFormation,
                            "structure" = structure,
                            "diagnosis"= diagnosis,
                            "time"=time,
                            "numberNodles"=numberNodles,
                            "categoryBirads"=categoryBirads,
                            "calcinates"=calcinates,
                            "location"=location,
                            "isCalc"= isCalc,
                            "isMicroCalc"= isMicroCalc,
                            "isCancer"= isCancer
)


dfXlsxMetComp$metod_is_tumor <- factor(ifelse
                              (dfXlsxMetComp$diagnosis == "Susp Ca"
                                | dfXlsxMetComp$diagnosis == "образование Ca"
                                | dfXlsxMetComp$diagnosis == "мультифокальный рак"
                                | dfXlsxMetComp$diagnosis== "мультицентричный рак"
                                , 1, 0),
                              labels = c("Нет", "Да"))


dfXlsxMetComp$methodsVizualisation <-  as.factor(dfXlsxMetComp$methodsVizualisation )
dfXlsxMetCompUsAbus <- subset(dfXlsxMetComp, dfXlsxMetComp$methodsVizualisation !="mmg")
dfXlsxMetCompUsMmg <- subset(dfXlsxMetComp, dfXlsxMetComp$methodsVizualisation !="abus")
dfXlsxMetCompAbusMmg <- subset(dfXlsxMetComp, dfXlsxMetComp$methodsVizualisation !="us")

dfXlsxMetCompNodle <- subset(dfXlsxMetComp, nodleContour !="нет узла")
write.xlsx(dfXlsxMetComp, "ABUSvsUS_lab.xlsx", sheetName = "Data")

dfXlsxMetCompJun <- subset(dfXlsxMetComp, groupSep == "jun")
dfXlsxMetCompJunUsAbus <- subset(dfXlsxMetCompUsAbus, groupSep == "jun")
dfXlsxMetCompJunUsMmg <- subset(dfXlsxMetCompUsMmg, groupSep == "jun")
dfXlsxMetCompJunAbusMmg <- subset(dfXlsxMetCompAbusMmg, groupSep == "jun")
dfXlsxMetCompJunUs <- subset(dfXlsxMetCompJun, methodsVizualisation == "us")
dfXlsxMetCompJunAbus <- subset(dfXlsxMetCompJun, methodsVizualisation == "abus")


dfXlsxMetCompSnr <- subset(dfXlsxMetComp, groupSep == "snr")
dfXlsxMetCompSnrUsAbus <- subset(dfXlsxMetCompUsAbus, groupSep == "snr")
dfXlsxMetCompSnrUsMmg <- subset(dfXlsxMetCompUsMmg, groupSep == "snr")
dfXlsxMetCompSnrAbusMmg <- subset(dfXlsxMetCompAbusMmg, groupSep == "snr")
dfXlsxMetCompSnrUs <- subset(dfXlsxMetCompSnr, methodsVizualisation == "us")
dfXlsxMetCompSnrAbus <- subset(dfXlsxMetCompSnr, methodsVizualisation == "abus")
dfXlsxMetCompSnrMmg<- subset(dfXlsxMetCompSnr, methodsVizualisation == "mmg")







# Mmg/Abus/Mrsi/Hist_subset_block --------------------------------------------------------------
dfXlsxSubsetMmg <- subset(dfXlsx,dfXlsx$is_mmg == "Да")
dfXlsxSubsetAbus <- subset(dfXlsx,dfXlsx$is_abus == "Да")

dfXlsxSubsetMrsi <- subset(dfXlsx,dfXlsx$is_Mrsi == "Да")
dfXlsxSubsetMorphology <- subset(dfXlsx,dfXlsx$is_Morphology == "Да")
dfXlsxSubsetCytological <- subset(dfXlsx,dfXlsx$is_Cytological == "Да")
dfXlsxSubsetMalignancy <- subset(dfXlsx,dfXlsx$is_GradeMalignancy== "Да")
dfXlsxSubsetReceptors <- subset(dfXlsx,dfXlsx$is_Receptors == "Да")


## Jun --------------------------------------------------------------

dfXlsxSubsetMmgJun <- subset(dfXlsxSubsetMmg, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetAbusJun <- subset(dfXlsxSubsetAbus, group_separation == gr_US | group_separation ==gr_US_ABUS)

dfXlsxSubsetMrsiJun <- subset(dfXlsxSubsetMrsi, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetMorphologyJun <- subset(dfXlsxSubsetMorphology, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetCytologicalJun <- subset(dfXlsxSubsetCytological, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetMalignancyJun <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxSubsetReceptorsJun <- subset(dfXlsxSubsetReceptors, group_separation == gr_US | group_separation ==gr_US_ABUS)


## Sin --------------------------------------------------------------

dfXlsxSubsetMmgSnr <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetAbusSnr <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

dfXlsxSubsetMrsiSnr <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetMorphologySnr <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetCytologicalSnr <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetMalignancySnr <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxSubsetReceptorsSnr <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)


## Gr1 --------------------------------------------------------------
dfXlsxSubsetMmgGr1 <- subset(dfXlsxSubsetMmg, group_separation == gr_US)
dfXlsxSubsetAbusGr1 <- subset(dfXlsxSubsetAbus, group_separation == gr_US)

dfXlsxSubsetMrsiGr1 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US)
dfXlsxSubsetMorphologyGr1 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US)
dfXlsxSubsetCytologicalGr1 <- subset(dfXlsxSubsetCytological, group_separation == gr_US)
dfXlsxSubsetMalignancyGr1 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US)
dfXlsxSubsetReceptorsGr1 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US)

## Gr2 --------------------------------------------------------------

dfXlsxSubsetMmgGr2 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG)
dfXlsxSubsetAbusGr2 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG)

dfXlsxSubsetMrsiGr2 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG)
dfXlsxSubsetMorphologyGr2 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG)
dfXlsxSubsetCytologicalGr2 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG)
dfXlsxSubsetMalignancyGr2 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG)
dfXlsxSubsetReceptorsGr2 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG)

## Gr3 --------------------------------------------------------------

dfXlsxSubsetMmgGr3 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_ABUS)
dfXlsxSubsetAbusGr3 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_ABUS)

dfXlsxSubsetMrsiGr3 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_ABUS)
dfXlsxSubsetMorphologyGr3 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_ABUS)
dfXlsxSubsetCytologicalGr3 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_ABUS)
dfXlsxSubsetMalignancyGr3 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_ABUS)
dfXlsxSubsetReceptorsGr3 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_ABUS)


## Gr4 --------------------------------------------------------------

dfXlsxSubsetMmgGr4 <- subset(dfXlsxSubsetMmg, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetAbusGr4 <- subset(dfXlsxSubsetAbus, group_separation == gr_US_MMG_ABUS)

dfXlsxSubsetMrsiGr4 <- subset(dfXlsxSubsetMrsi, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetMorphologyGr4 <- subset(dfXlsxSubsetMorphology, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetCytologicalGr4 <- subset(dfXlsxSubsetCytological, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetMalignancyGr4 <- subset(dfXlsxSubsetMalignancy, group_separation == gr_US_MMG_ABUS)
dfXlsxSubsetReceptorsGr4 <- subset(dfXlsxSubsetReceptors, group_separation == gr_US_MMG_ABUS)




# Nodle_block --------------------------------------------------------------
dfXlsxNodleUs <- subset(dfXlsx,dfXlsx$us_is_nodle == "Да")
dfXlsxNodleMmg <- subset(dfXlsx,dfXlsx$mmg_is_nodle == "Да")
dfXlsxNodleAbus <- subset(dfXlsx,dfXlsx$abus_is_nodle == "Да")

## Jun --------------------------------------------------------------
dfXlsxNodleUsJun <- subset(dfXlsxNodleUs, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxNodleMmgJun <- subset(dfXlsxNodleMmg, group_separation == gr_US | group_separation ==gr_US_ABUS)
dfXlsxNodleAbusJun <- subset(dfXlsxNodleAbus, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxNodleUsSnr <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxNodleMmgSnr <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)
dfXlsxNodleAbusSnr <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxNodleUsGr1 <- subset(dfXlsxNodleUs, group_separation == gr_US)
dfXlsxNodleMmgGr1 <- subset(dfXlsxNodleMmg, group_separation == gr_US)
dfXlsxNodleAbusGr1 <- subset(dfXlsxNodleAbus, group_separation == gr_US)
## Gr2 --------------------------------------------------------------
dfXlsxNodleUsGr2 <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG)
dfXlsxNodleMmgGr2 <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG)
dfXlsxNodleAbusGr2 <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG)



## Gr3 --------------------------------------------------------------
dfXlsxNodleUsGr3 <- subset(dfXlsxNodleUs, group_separation == gr_US_ABUS)
dfXlsxNodleMmgGr3 <- subset(dfXlsxNodleMmg, group_separation == gr_US_ABUS)
dfXlsxNodleAbusGr3 <- subset(dfXlsxNodleAbus, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxNodleUsGr4 <- subset(dfXlsxNodleUs, group_separation == gr_US_MMG_ABUS)
dfXlsxNodleMmgGr4 <- subset(dfXlsxNodleMmg, group_separation == gr_US_MMG_ABUS)
dfXlsxNodleAbusGr4 <- subset(dfXlsxNodleAbus, group_separation == gr_US_MMG_ABUS)


# Calc_block --------------------------------------------------------------


dfXlsxCalc <- subset(dfXlsx, dfXlsx$mmg_is_calc == "Да")

## Jun --------------------------------------------------------------
dfXlsxCalcJun <- subset(dfXlsxCalc, group_separation == gr_US | group_separation ==gr_US_ABUS)

## Sin --------------------------------------------------------------
dfXlsxCalcSnr <- subset(dfXlsxCalc, group_separation == gr_US_MMG | group_separation ==gr_US_MMG_ABUS)

## Gr1 --------------------------------------------------------------
dfXlsxCalcGr1 <- subset(dfXlsxCalc, group_separation == gr_US)

## Gr2 --------------------------------------------------------------
dfXlsxCalcGr2 <- subset(dfXlsxCalc, group_separation == gr_US_MMG)


## Gr3 --------------------------------------------------------------
dfXlsxCalcGr3 <- subset(dfXlsxCalc, group_separation == gr_US_ABUS)

## Gr4 --------------------------------------------------------------
dfXlsxCalcGr4 <- subset(dfXlsxCalc, group_separation == gr_US_MMG_ABUS)






# 4article ----------------------------------------------------------------

dfXlsxSnr_SubsetQuadrant <- subset(dfXlsxSnr,dfXlsxSnr$quadrant !="нет")
dfXlsxSnrHist <- subset(dfXlsxSnr, dfXlsxSnr$hist_is_tumor =="Да")
dfXlsxGr2Hist <- subset(dfXlsxGr2, dfXlsxGr2$hist_is_tumor =="Да")
dfXlsxGr4Hist <- subset(dfXlsxGr4, dfXlsxGr4$hist_is_tumor =="Да")
dfXlsxSnrIsHist <- subset(dfXlsxSnr, dfXlsxSnr$tumor_morphology_structure !="не проводилось")

dfXlsxGr4_usHasFound <- subset(dfXlsxGr4, dfXlsxGr4$us_is_tumor == "Да")
dfXlsxGr4_abusHasFound <- subset(dfXlsxGr4, dfXlsxGr4$abus_is_tumor == "Да")
dfXlsxGr4_mmgHasFound <- subset(dfXlsxGr4, dfXlsxGr4$mmg_is_tumor == "Да")


dfXlsxGr4_cancerFromUsHasFound <- subset(dfXlsxGr4_usHasFound, dfXlsxGr4_usHasFound$hist_is_tumor == "Да")
dfXlsxGr4_cancerFromAbusHasFound <- subset(dfXlsxGr4_abusHasFound, dfXlsxGr4_abusHasFound$hist_is_tumor == "Да")
dfXlsxGr4_cancerFromMmgHasFound <- subset(dfXlsxGr4_mmgHasFound, dfXlsxGr4_mmgHasFound$hist_is_tumor == "Да")






