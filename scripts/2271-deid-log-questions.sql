-- Delete existing question_lookup_log rows --
DELETE FROM `epic_prod`.`question_lookup_log` WHERE `study_id` = 2271;

-- PT LOG LOOKUP QUESTIONS FOR STUDY 2271 --

-- Total Amount of Time Spent Identifying and/or Consulting with Patient --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_DROPDOWN', 'TIME_SPENT', 'Total Amount of Time Spent Identifying and/or Consulting with Patient', '1', '1', '1');

-- Patient Race --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_CHECKBOX', 'PATIENT_RACE', 'Patient Race:', '2', '1', '0');

-- Patient Race Other --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_BIGTEXT', 'PATIENT_RACE_OTHER', 'Specify Patient Race (if \"Other\"):', '3', '0', '0');

-- Patient Ethnicity --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'PATIENT_ETHNICITY', 'Patient Ethnicity:', '4', '1', '0');

-- Patient Ethnicity Other --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_BIGTEXT', 'PATIENT_ETHNICITY_OTHER', 'Specify Patient Ethnicity (if \"Other\"):', '5', '0', '0');

-- Patient Gender --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'PATIENT_GENDER', 'Patient Gender:', '6', '1', '0');

-- Method of Patient Identification --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'METHOD_OF_IDENTIFICATION', 'Method of Patient Identification:', '7', '1', '0');

-- Key Study Criteria Checklist --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_CHECKBOX', 'STUDY_CRITERIA_CHECKLIST', 'Key Study Criteria Checklist:', '8', '0', '0');

-- Did the patient meet all of the key study criteria? --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'PATIENT_MEET_CRIERIA', 'Did the patient meet all of the key study criteria outlined above? (If "yes" or \"unknown,\" proceed with consultation)', '9', '1', '0');

-- Method of patient consultation regarding potential study participation --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'METHOD_OF_CONSULTATION', 'Method of patient consultation regarding potential study participation:', '10', '0', '0');

-- Is the patient interested in being contacted by study site personnel for potential study participation? --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'INTERESTED_IN_PRESENTING', 'Is the patient interested in being contacted by study site personnel for potential study participation?', '11', '0');

-- REFUSAL REASON IF NOT INTERESTED --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'REFUSAL_REASON', 'If the patient is NOT interested, choose the primary refusal reason below:', '12', '0');

-- REFUSAL REASON Other --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_BIGTEXT', 'REFUSAL_REASON_OTHER', 'Specify Refusal Reason (if \"Other\"):', '13', '0', '0');

-- PRIMARY RATIONALE IF UNKNOWN --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) 
VALUES ('2271', '0', 'QUESTION_RADIO', 'RATIONALE_UNKNOWN', 'If unknown, choose the Primary Rationale below:', '14', '0');

-- PRIMARY RATIONALE Other --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '0', 'QUESTION_BIGTEXT', 'RATIONALE_UNKNOWN_OTHER', 'Specify Primary Rationale (if \"Other\"):', '15', '0', '0');

-- ANSWERS FOR THE QUESTIONS --

-- TIME SPENT ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) 
VALUES ('2271', '1', 'TIME_SPENT', '', '---- Select One ----', '1', '0', '0'),
('2271', '1', 'TIME_SPENT', '15', '15 minutes', '2', '0', '0'),
('2271', '1', 'TIME_SPENT', '30', '30 minutes', '3', '0', '0'),
('2271', '1', 'TIME_SPENT', '45', '45 minutes', '4', '0', '0'),
('2271', '1', 'TIME_SPENT', '60', '60 minutes', '5', '0', '0'),
('2271', '1', 'TIME_SPENT', '75', '1.25 hours', '6', '0', '0'),
('2271', '1', 'TIME_SPENT', '90', '1.5 hours', '7', '0', '0'),
('2271', '1', 'TIME_SPENT', '105', '1.75 hours', '8', '0', '0'),
('2271', '1', 'TIME_SPENT', '120', '2 hours', '9', '0', '0');

-- PATIENT RACE ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'PATIENT_RACE', 'asian', 'Asian', '1', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'black-african-american', 'Black or African American', '2', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'white', 'White', '3', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'american-indian-alaska-native', 'American Indian or Alaska Native', '4', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'native-hawaiian-pacific-islander', 'Native Hawaiian or other Pacific Islander', '5', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'prefer-not-disclose', 'Prefer not to disclose', '6', '0', '0'),
('2271', '1', 'PATIENT_RACE', 'other-specify', 'Other (specify)', '7', '0', '0');

-- PATIENT ETHNICITY ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'PATIENT_ETHNICITY', 'hispanic-latino', 'Hispanic or Latino', '1', '0', '0'),
('2271', '1', 'PATIENT_ETHNICITY', 'not-hispanic-latino', 'Not Hispanic or Latino', '2', '0', '0'),
('2271', '1', 'PATIENT_ETHNICITY', 'prefer-not-disclose', 'Prefer not to disclose', '3', '0', '0'),
('2271', '1', 'PATIENT_ETHNICITY', 'other-specify', 'Other (specify)', '4', '0', '0');

-- PATIENT GENDER ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'PATIENT_GENDER', 'male', 'Male', '1', '0', '0'),
('2271', '1', 'PATIENT_GENDER', 'female', 'Female', '2', '0', '0'),
('2271', '1', 'PATIENT_GENDER', 'prefer-not-disclose', 'Prefer not to disclose', '3', '0', '0');

-- METHOD OF IDENTIFICATION ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'METHOD_OF_IDENTIFICATION', 'record-review', 'Medical Record Review', '1', '0', '0'),
('2271', '1', 'METHOD_OF_IDENTIFICATION', 'in-person', 'In-person', '2', '0', '0'),
('2271', '1', 'METHOD_OF_IDENTIFICATION', 'telemedicine', 'Telemedicine', '3', '0', '0');

-- STUDY CRITERIA CHECKLIST ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log` 
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`, `style`)
VALUES ('2271', '1', 'STUDY_CRITERIA_CHECKLIST', '*info-only*', '<div style=\"margin: 0 0 5px 0; font-weight:bold; font-size: 13px;\">Confirm the patient meets the following key study criteria:</div>', '1', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'age-12-plus', '≥12 years of age', '2', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'weight-77-plus', 'Weight ≥77 lbs', '3', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'sle-diagnosis', 'Diagnosis of systemic lupus erythematosus ≥6 months meeting the 2019 European League Against Rheumatism/American College of Rheumatology (EULAR/ACR) SLE classification criteria', '4', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'current-treatment', 'Currently receiving corticosteroid (CS) and/or anti-malarial treatment and/or another disease-modifying antirheumatic drug (DMARD) (NOTE: If the patient is on CS, they need to be on <30 mg a day and stable for at least 2 weeks)', '5', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'sledai-score', 'SLEDAI-2k score ≥6 points (NOTE: If unknown, please proceed. The study site will screen for this. However, the patient must be in an active flare)', '6', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'bilag-level', 'BILAG-2004 level “A” disease in ≥1 organ system OR BILAG-2004 level “B” disease in ≥2 organ systems (NOTE: If unknown, please proceed. The study site will screen for this. However, the patient must be in an active flare)', '7', '0', '0', ''),

('2271', '1', 'STUDY_CRITERIA_CHECKLIST', '*info-only*', 'No history of receiving:', '8', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-high-dose-cs', 'High-dose CS, calcineurin inhibitors, Janus kinase (JAK) or other kinase inhibitors, or other DMARDs within the past 12 weeks (NOTE: methotrexate [MTX] or an imidazole derivative or mycophenolic acid [MPA] derivatives are acceptable)', '9', '0', '0', 'margin-left: 50px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-cyclophosphamide', 'Cyclophosphamide or biologics such as immunoglobulins (IV or SC), plasmapheresis, anti-type I interferon receptor (IFNAR1) biologic agents, anti-CD40 agents; CTLA4-Fc Ig (abatacept) or BAFF-targeting agents administered within the past 24 weeks', '10', '0', '0', 'margin-left: 50px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-bcell-depleting-therapies', 'Any B-cell-depleting therapies other than ianalumab administered within the past 36 weeks, or as long as B cell count is less than the lower limit of normal or baseline value prior to receipt of B-cell-depleting therapy (whichever is lower)', '11', '0', '0', 'margin-left: 50px;'),

('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-active-infections', 'No active viral, bacterial, or other infections requiring systemic treatment', '12', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-chronic-infection', 'No known chronic infection with hepatitis B (HBV), hepatitis C (HCV) or active tuberculosis (TB) infection', '13', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-immunodeficiency', 'No history of primary or secondary immunodeficiency, including positive HIV', '14', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-severe-organ-dysfunction', 'No severe organ dysfunction or life-threatening disease', '15', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-major-transplant', 'No history of major organ, hematopoietic stem cell, or bone marrow transplant', '16', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-severe-lupus-kidney-disease', 'No presence of severe lupus kidney disease as defined by proteinuria >2 g/day or equivalent using spot urine protein creatinine ratio, or serum creatinine >2.0 mg/dL (176.84 µmol/L), or requiring immune-suppressive induction or maintenance treatment', '17', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-hypersensitivity', 'No history of hypersensitivity to IgG1 biologics or oral CS or to sucrose, L-histidine hydrochloride, L-histidine, and polysorbate 20', '18', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-non-lupus-conditions', 'No presence of non-lupus conditions such as asthma, gout, or urticaria requiring intermittent or chronic treatment with systemic CS', '19', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-history-of-malignancy', 'No history of malignancy of any organ system other than localized basal cell carcinoma of the skin or in situ cervical cancer', '20', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'not-pregnant', 'Not currently pregnant or breastfeeding', '21', '0', '0', '');

-- PATIENT MEET CRITERIA ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'PATIENT_MEET_CRIERIA', 'yes', 'Yes', '1', '0', '0'),
('2271', '1', 'PATIENT_MEET_CRIERIA', 'no', 'No', '2', '0', '0'),
('2271', '1', 'PATIENT_MEET_CRIERIA', 'unknown', 'Unknown', '3', '0', '0');

-- METHOD OF CONSULTATION ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'METHOD_OF_CONSULTATION', 'in-person', 'In-person', '1', '0', '0'),
('2271', '1', 'METHOD_OF_CONSULTATION', 'telemedicine', 'Telemedicine', '2', '0', '0'),
('2271', '1', 'METHOD_OF_CONSULTATION', 'pending-consultation', 'Pending', '3', '0', '0');

-- INTERESTED IN PRESENTING ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'INTERESTED_IN_PRESENTING', 'yes', 'Yes, the patient is interested', '1', '0', '0'),
('2271', '1', 'INTERESTED_IN_PRESENTING', 'no', 'No, the patient is not interested', '2', '0', '0'),
('2271', '1', 'INTERESTED_IN_PRESENTING', 'unknown', 'Unknown', '3', '0', '0');

-- REFUSAL REASON ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'REFUSAL_REASON', 'not-willing-to-participate', 'Not willing to participate in research study', '1', '0', '0'),
('2271', '1', 'REFUSAL_REASON', 'study-duration', 'Not willing to participate for duration of study', '2', '0', '0'),
('2271', '1', 'REFUSAL_REASON', 'not-willing-travel', 'Not willing to travel to site visits', '3', '0', '0'),
('2271', '1', 'REFUSAL_REASON', 'other-specify', 'Other (specify):', '4', '0', '0');

-- RATIONALE UNKNOWN ANSWERS --
INSERT INTO `epic_prod`.`question_lookup_log`
(`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`)
VALUES ('2271', '1', 'RATIONALE_UNKNOWN', 'wants-think', 'Wants to think about it', '1', '0', '0'),
('2271', '1', 'RATIONALE_UNKNOWN', 'discuss-with-family', 'Wants to discuss with family', '2', '0', '0'),
('2271', '1', 'RATIONALE_UNKNOWN', 'other-specify', 'Other (specify):', '3', '0', '0');
