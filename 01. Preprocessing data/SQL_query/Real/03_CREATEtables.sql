USE abus_real
GO

-- patient_details
CREATE TABLE patient_details.personal(
name_patient nvarchar(50) NOT NULL,
id_patient nvarchar(50) PRIMARY KEY NOT NULL,
date_examination date NOT NULL,
group_separation tinyint NOT NULL,
age_patient int NOT NULL,
height_patient int NOT NULL,
weight_patient int NOT NULL,
satus_reproductive tinyint NOT NULL,
breast_surgery_before tinyint NOT NULL,
hormonal_medications tinyint NOT NULL,
genetics tinyint NOT NULL,
mutation_brca tinyint NOT NULL);

CREATE TABLE patient_details.diagnosis_primary(
id_diagnosis_primary nvarchar(50) PRIMARY KEY NOT NULL,
id_patient nvarchar(50) NOT NULL,
diagnosis_primary tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE patient_details.describe_patient(
id_describe nvarchar(50) PRIMARY KEY NOT NULL,
id_patient nvarchar(50) NOT NULL,
side tinyint NOT NULL,
skin_symptoms tinyint NOT NULL,
nipple_retraction tinyint NOT NULL,
nipple_release tinyint NOT NULL,
type_structure_acr tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE patient_details.quadrant (
id_quadrant nvarchar(50) PRIMARY KEY NOT NULL,
id_patient nvarchar(50) NOT NULL,
quadrant tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE patient_details.complaints (
id_complaints nvarchar(50) PRIMARY KEY NOT NULL,
id_patient nvarchar(50) NOT NULL,
complaints tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


-- abus_details
CREATE TABLE abus_details.abus_diagnosis (
id_patient nvarchar(50) NOT NULL,
id_abus_diagnosis nvarchar(50) PRIMARY KEY NOT NULL,
abus_diagnosis tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal  (id_patient)
);

CREATE TABLE abus_details.abus_is_tumor (
id_patient nvarchar(50) NOT NULL,
id_abus_is_tumor nvarchar(50) PRIMARY KEY NOT NULL,
abus_is_tumor tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE abus_details.abus_nodle_contours (
id_patient nvarchar(50) NOT NULL,
id_abus_nodle_contours nvarchar(50) PRIMARY KEY NOT NULL,
abus_nodle_contours tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE abus_details.abus_nodle_size (
id_patient nvarchar(50) NOT NULL,
id_abus_nodle_size nvarchar(50) PRIMARY KEY NOT NULL,
abus_nodle_size tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE abus_details.abus_structure (
id_patient nvarchar(50) NOT NULL,
id_abus_structure nvarchar(50) PRIMARY KEY NOT NULL,
abus_structure tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE abus_details.abus_describe(
id_patient nvarchar(50) NOT NULL,
id_abus_describe nvarchar(50) PRIMARY KEY NOT NULL,
abus_skin tinyint,
abus_echogenicity_formation tinyint,
abus_symptom_retraction tinyint,
abus_number_nodles tinyint,
abus_category_birads tinyint,
abus_calcinates tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

-- mmg_details
CREATE TABLE mmg_details.mmg_conclusion (
id_patient nvarchar(50) NOT NULL,
id_mmg_conclusion nvarchar(50) PRIMARY KEY NOT NULL,
mmg_conclusion tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE mmg_details.mmg_calcifications (
id_patient nvarchar(50) NOT NULL,
id_mmg_calcifications nvarchar(50) PRIMARY KEY NOT NULL,
mmg_calcifications tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


CREATE TABLE mmg_details.mmg_describe (
id_patient nvarchar(50) NOT NULL,
id_mmg_describe nvarchar(50) PRIMARY KEY NOT NULL,
mmg_conclusion_skin tinyint,
mmg_areola tinyint,
mmg_nipple tinyint,
mmg_background_breast tinyint,
mmg_number_formations_visualized tinyint,
mmg_axillary_lymph_nodes tinyint,
mmg_number_nodles tinyint,
mmg_category_birads tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


CREATE TABLE mmg_details.mmg_is_tumor(
id_patient nvarchar(50) NOT NULL,
id_mmg_is_tumor nvarchar(50) PRIMARY KEY NOT NULL,
mmg_is_tumor tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


CREATE TABLE mmg_details.mmg_nodle  (
id_patient nvarchar(50) NOT NULL,
id_mmg_nodle nvarchar(50) PRIMARY KEY NOT NULL,
mmg_nodle tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


CREATE TABLE mmg_details.mmg_nodle_contour (
id_patient nvarchar(50) NOT NULL,
id_mmg_nodle_contour nvarchar(50) PRIMARY KEY NOT NULL,
mmg_nodle_contour tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


CREATE TABLE mmg_details.mmg_nodle_size(
id_patient nvarchar(50) NOT NULL,
id_mmg_nodle_size nvarchar(50) PRIMARY KEY NOT NULL,
mmg_nodle_size tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);



-- mrsi_details
CREATE TABLE mrsi_details.mrsi_describe (
id_patient nvarchar(50) NOT NULL,
id_mrsi_describe nvarchar(50) PRIMARY KEY NOT NULL,
mrsi_data tinyint,
mrsi_number_nodles tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


-- tumor_details
CREATE TABLE tumor_details.tumor_describe (
id_patient nvarchar(50) NOT NULL,
id_tumor_describe nvarchar(50) PRIMARY KEY NOT NULL,
cytological_conclusion tinyint,
degree_malignancy tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE tumor_details.tumor_is (
id_patient nvarchar(50) NOT NULL,
id_tumor_is nvarchar(50) PRIMARY KEY NOT NULL,
tumor_is tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE tumor_details.tumor_morphology_structure (
id_patient nvarchar(50) NOT NULL,
id_tumor_morphology_structure nvarchar(50) PRIMARY KEY NOT NULL,
tumor_morphology_structure tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE tumor_details.tumor_receptors (
id_patient nvarchar(50) NOT NULL,
id_tumor_receptors nvarchar(50) PRIMARY KEY NOT NULL,
tumor_receptors tinyint,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);


-- us_details
CREATE TABLE us_details.us_background (
id_patient nvarchar(50) NOT NULL,
id_us_background nvarchar(50) PRIMARY KEY NOT NULL,
us_background tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_calcinates_micro_pure (
id_patient nvarchar(50) NOT NULL,
id_us_calcinates_micro_pure nvarchar(50) PRIMARY KEY NOT NULL,
us_calcinates_micro_pure tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_diagnosis (
id_patient nvarchar(50) NOT NULL,
id_us_diagnosis nvarchar(50) PRIMARY KEY NOT NULL,
us_diagnosis tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_describe (
id_patient nvarchar(50) NOT NULL,
id_us_describe nvarchar(50) PRIMARY KEY NOT NULL,
us_skin tinyint NOT NULL,
us_ducts tinyint NOT NULL,
us_form tinyint NOT NULL,
us_echogenicity_formation tinyint NOT NULL,
us_region_lymph_nodes tinyint NOT NULL,
us_number_nodles tinyint NOT NULL,
us_category_birads tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_elastography (
id_patient nvarchar(50) NOT NULL,
id_us_elastography nvarchar(50) PRIMARY KEY NOT NULL,
us_elastography tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_formation(
id_patient nvarchar(50) NOT NULL,
id_us_formation nvarchar(50) PRIMARY KEY NOT NULL,
us_formation tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_formation_blood_flow (
id_patient nvarchar(50) NOT NULL,
id_us_formation_blood_flow nvarchar(50) PRIMARY KEY NOT NULL,
us_formation_blood_flow tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_is_tumor (
id_patient nvarchar(50) NOT NULL,
id_us_is_tumor nvarchar(50) PRIMARY KEY NOT NULL,
us_is_tumor tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_nodle_contour (
id_patient nvarchar(50) NOT NULL,
id_us_nodle_contour nvarchar(50) PRIMARY KEY NOT NULL,
us_nodle_contour tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_nodle_size (
id_patient nvarchar(50) NOT NULL,
id_us_nodle_size nvarchar(50) PRIMARY KEY NOT NULL,
us_nodle_size tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);

CREATE TABLE us_details.us_structure (
id_patient nvarchar(50) NOT NULL,
id_us_structure nvarchar(50) PRIMARY KEY NOT NULL,
us_structure tinyint NOT NULL,
FOREIGN KEY (id_patient)  REFERENCES patient_details.personal (id_patient)
);