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
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'age-18-70', '≥18 and ≤70 years of age', '2', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'systemic-sclerosis', 'Diagnosis of systemic sclerosis, as defined by the 2013 American College of Rheumatology/European League Against Rheumatism (ACR/EULAR) classification criteria for SSc (van den Hoogen et al 2013) and meets the dcSSc subset classification according to LeRoy (LeRoy 1988)', '3', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'mrss-15-45', 'mRSS of ≥15 and ≤45 units (NOTE: If unknown, please proceed. The study site will screen for this)', '4', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'disease-duration', 'Disease duration of ≤60 months (defined as time from the first non-Raynaud phenomenon manifestation)', '5', '0', '0', ''),

('2271', '1', 'STUDY_CRITERIA_CHECKLIST', '*info-only*', '<div style=\"margin-left: 10px;\">Active disease that meets at least 1 of the following criteria:</div>', '6', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'duration-18-months', 'Disease duration of ≤18 months defined as time from the first non-Raynaud phenomenon manifestation', '7', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'mrss-increase-3', 'Increase in mRSS of ≥3 units compared with the most recent assessment performed within the last 6 months', '8', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'new-area-1', 'Involvement of 1 new body area and an increase in mRSS of ≥2 units compared with the most recent assessment performed within last 6 months', '9', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'new-area-2', 'Involvement of 2 new body areas within the last 6 months', '10', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'elevated-reactants', 'Elevated acute phase reactants (ESR ≥30 mm/hr or hsCRP ≥6 mg/dL)', '11', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'ild-ata', 'Presence of interstitial lung disease (ILD) and anti-topoisomerase I (ATA) autoantibody positivity', '12', '0', '0', 'margin-left: 30px;'),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'eustar-index', 'Modified EUSTAR disease activity index (mDAI) >2.5', '13', '0', '0', 'margin-left: 30px;'),

('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'positive-autoantibodies', 'Positive for at least 1 of the following autoantibodies: ATA (also known as anti-SCL-70), anti-RNA polymerase III, or anti-nuclear antibody (≥1:80)', '14', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-other-rheumatic', "No rheumatic disease other than dcSSc, including limited cutaneous disease (lcSSc) or sine scleroderma (NOTE: Patients with secondary Sjogren\'s disease and scleroderma myopathy are able to participate)", '15', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-functional-class-3', 'No WHO Functional Class 3 or higher assessment for pulmonary arterial hypertension (PAH), receiving IV therapy for PAH, or evidence of other moderately severe pulmonary disease', '16', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-cyclophosphamide', 'Not treated with cyclophosphamide within the last 12 weeks', '17', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-b-cell-depleting', 'No prior use of a B-cell-depleting therapy other than ianalumab (e.g., rituximab, other anti-CD20 mAb, anti-CD22 mAb, or anti-CD52 mAb) administered within past 36 weeks, or as long as B cell count is less than the lower limit of normal or baseline value prior to receipt of B-cell-depleting therapy (whichever is lower)', '18', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-previous-treatment', 'No previous treatment with chlorambucil, bone marrow transplantation, or total lymphoid irradiation', '19', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-vasculitis', 'No active vasculitis of a major organ system', '20', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-severe-symptoms', 'No current symptoms of severe, progressive, or uncontrolled renal, hepatic, hematologic, gastrointestinal, pulmonary, cardiac, neurologic, or cerebral disease, or substance abuse, whether or not related to SSc', '21', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-malignancy-5-years', 'No history of lymphoproliferative disease or any known malignancy or history of malignancy of any organ system within the past 5 years (except for basal cell carcinoma or actinic keratosis that has been treated with no evidence of recurrence in the past 3 months, carcinoma in situ of the cervix, or noninvasive malignant colon polyps that have been removed)', '22', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-chronic-infections', 'No chronic infection with HBV, HCV, HIV, or active TB', '23', '0', '0', ''),
('2271', '1', 'STUDY_CRITERIA_CHECKLIST', 'not-pregnant', 'Not currently pregnant or breastfeeding', '24', '0', '0', '');

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
