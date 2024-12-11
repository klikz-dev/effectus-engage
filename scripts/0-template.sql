--
--
-- ALTER TABLE suqestion_lookup_log field value increase varchar(750) <----------- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--
--
/******** INSERT Incyte Study 2241 & Training 92241 **********/
INSERT INTO `epic_prod`.`study` (`study_id`, `for_training`, `name`, `client`, `description`, `is_active`) VALUES ('2241', '0', 'HORIZON Study', 'GSK', 'NASH Study', '1');
INSERT INTO `epic_prod`.`study` (`study_id`, `for_training`, `name`, `client`, `description`, `is_active`) VALUES ('92241', '1', 'HORIZON Study', 'GSK', 'NASH Study', '1');

/******** IMPORT  SITES CSV to EXISTING TABLE SITE (!!!!!!!!!!! DO NOT DROP OR TRUNCATE WHEN IMPORTING !!!!!!!!!!!) **********/

/******** Run scripte ASSIGN SITES TO STUDY in study_site **********/
-- INSERT INTO study_site (study_id, site_id) VALUES (2241, 774);
-- build script using this sql
SELECT CONCAT ('INSERT INTO study_site (study_id, site_id) VALUES (2241, ', ID, ');')
FROM epic_prod.site where id > 4690; 

/******** Manually ASSIGN TRAINER TO DEMO STUDY in physician_tracking **********/
-- INSERT INTO study_site (study_id, site_id) VALUES (92241, 114);
-- INSERT INTO `epic_prod`.`physician_tracking` (`physician_id`, `study_id`, `site_id`, `willing`, `screening_status`) VALUES ('567', '92241', '114', 'yes', 'ACTIVE');
-- INSERT INTO `epic_prod`.`physician_tracking` (`physician_id`, `study_id`, `site_id`, `willing`, `screening_status`) VALUES ('566', '92241', '114', 'yes', 'ACTIVE');

/******** IMPORT 2241 Patient Tracking CSV to Question Lookup Tracking (!!!!!!!!!!! DO NOT DROP OR TRUNCATE WHEN IMPORTING !!!!!!!!!!!) **********/
-- (question_lookup_tracking) 

/********* INSERT Patient Deid Log questions  ***********/

-- PT LOG LOOKUP QUESTIONS --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_DROPDOWN', 'TIME_SPENT', 'Total Amount of Time Spent Identifying and/or Consulting with Patient', '1', '1', '1');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_RADIO', 'METHOD_OF_IDENTIFICATION', 'Method of Patient Identification:', '2', '1', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_CHECKBOX', 'STUDY_CRITERIA_CHECKLIST', 'Key Study Criteria Checklist:', '3', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_RADIO', 'PATIENT_MEET_CRIERIA', 'Did the patient meet all of the key study criteria, outlined above?', '4', '1', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_RADIO', 'HAS_HISTORICAL_LIVER_BIOPSY', 'Does the patient have a historical liver biopsy ≤ 6 months?', '5', '1', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_RADIO', 'PATIENT_WILLING_LIVER_BIOPSY', 'If not, would the patient be willing to have a liver biopsy completed as part of study screening?', '6', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '0', 'QUESTION_RADIO', 'INTERESTED_IN_PRESENTING', 'Is the patient interested in being contacted by study site personnel for potential study participation?', '7', '1', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_RADIO', 'METHOD_OF_CONSULTATION', 'Method of patient consultation regarding potential study participation:', '8', '1');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_RADIO', 'REFUSAL_REASON', 'If the patient is NOT interested, choose the primary refusal reason below:', '9', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_BIGTEXT', 'REFUSAL_REASON_OTHER', 'Refusal Reason (if \"Other\")', '10', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_BOOLEAN', 'AUTHORIZATION_SIGNED', 'Did the patient sign the Patient Contact Authorization Form?', '11', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_BOOLEAN', 'AUTHORIZATION_FAXED', 'Was the Patient Contact Authorization Form faxed to Effectus?', '12', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`) VALUES ('2241', '0', 'QUESTION_BOOLEAN', 'GUIDE_BROCHURE_GIVEN', 'Were the Patient Transfer Guide and Study Brochure given to the patient?', '13', '0');

-- PT LOG LOOKUP ANSWERS --
-- TIME SPENT --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '', '---- Select One ----', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '15', '15 minutes', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '30', '30 minutes', '3', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '45', '45 minutes', '4', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '60', '60 minutes', '5', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '75', '1.25 hours', '6', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '90', '1.5 hours', '7', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '105', '1.75 hours', '8', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'TIME_SPENT', '120', '2 hours', '9', '0', '0');

-- METHOD OF IDENTIFICATION --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_IDENTIFICATION', 'record-review', 'Medical Record Review', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_IDENTIFICATION', 'in-person', 'In-person', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_IDENTIFICATION', 'telemedicine', 'Telemedicine', '3', '0', '0');

-- STUDY CHECKLIST --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', '*info-only*', '<div style=\"margin: 0 0 5px 0; font-weight:bold; font-size: 13px;\">Confirm the patient meets the following key study criteria:</div>', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'person-of-age', '18 to 75 years of age, inclusive', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'within-bmi-range', 'BMI ≥ 25 kg/m<sup>2</sup> (or BMI ≥ 23 kg/m<sup>2</sup> for patients of Asian descent)', '3', '0', '0');

INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'meets-one-criteria', 'Meets <i><u>at least one</u></i> of the following:', '4', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`, `style`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'has-liver-biopsy', 'Has historical liver biopsy in the last 6 months showing a NAS ≥4 with at least 1 point each in steatosis, inflammation, and ballooning and Fibrosis 3 using NASH CRN Scoring System, confirmed by central scoring. <i>OR</i>', '5', '0', '0', 'margin-left:50px');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`, `style`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'has-metabolic-syndrome', 'Has features of metabolic syndrome and NAFLD is the most likely cause of liver disease. Metabolic syndrome may include type 2 diabetes mellitus (T2DM), obesity, dyslipidemia and hypertension', '6', '0', '0', 'margin-left:50px');

INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-biopsy-cirrhosis', 'Has no historical biopsy confirming definitive cirrhosis', '7', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-decompensated-liver', 'Has no history of decompensated liver disease, including ascites, hepatic encephalopathy, or variceal bleeding', '8', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-kidney-disease', 'Has no history of chronic kidney disease or kidney impairment defined by current hemodialysis/hemofiltration or an estimated glomerular filtration rate (eGFR) <60 mL/min/1.73 m<sup>2</sup>', '9', '0', '0');

INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-weight-loss', 'Has no known weight loss of ≥ 5% within the past 3 months', '10', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-chronic-hepatitis', 'Has no chronic hepatitis B virus (HBV), hepatitis C virus (HCV) (or must be HCV RNA negative providing treatment occurred > 2 years), or HIV infection', '11', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-other-liver-disease', 'Has no other confirmed cause of liver disease including, but not limited to, alcohol-related liver disease, autoimmune disorders (e.g., primary biliary cholangitis, primary sclerosing cholangitis, and autoimmune hepatitis), drug-induced hepatotoxicity, Wilson disease, hemochromatosis, and alpha-1-antitryspin deficiency', '12', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'limited-alcohol-consumption', 'Does not have an alcohol consumption ≥ 14 standard drinks per week for women or ≥ 21 standard drinks per week for men', '13', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-liver-transplant', 'Has no history of liver transplantation or hepatocellular carcinoma (HCC)', '14', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-contraindication-biopsy', 'Has no contraindication to undergoing liver biopsy including use of anticoagulants, antiplatelet medications, medical history of abnormal bleeding', '15', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'ok-undergo-mr', 'Has no contraindication to undergoing magnetic resonance (MR) imaging or FibroScan®', '16', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'no-glp1-medication', 'Not currently on the following medications or has been on a stable dose for ≥ 6 months prior to liver biopsy: glucagon-like peptide-1 (GLP-1) agonists, PPAR agonists (e.g., pioglitazone, saroglitazar), sodium glucose cotransporter 2 (SGLT2) inhibitors; thyroid hormone receptor agonists; farnesoid X receptor (FXR) agonists; or Vitamin E (at doses greater than or equal to 800 IU/day)', '17', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'STUDY_CRITERIA_CHECKLIST', 'not-pregnant', 'Not currently pregnant or breastfeeding', '18', '0', '0');


-- PATIENT MEET CRITERIA --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_MEET_CRIERIA', 'yes', 'Yes', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_MEET_CRIERIA', 'no', 'No', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_MEET_CRIERIA', 'unknown', 'Unknown', '3', '0', '0');

-- HAS HISTORICAL BIOPSY --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'HAS_HISTORICAL_LIVER_BIOPSY', 'yes', 'Yes', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'HAS_HISTORICAL_LIVER_BIOPSY', 'no', 'No', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'HAS_HISTORICAL_LIVER_BIOPSY', 'unknown', 'Unknown', '3', '0', '0');

-- PATIENT WILLING BIOPSY --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_WILLING_LIVER_BIOPSY', 'yes', 'Yes', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_WILLING_LIVER_BIOPSY', 'no', 'No', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'PATIENT_WILLING_LIVER_BIOPSY', 'unknown', 'Unknown', '3', '0', '0');

-- INTERESTED IN PRESENTING --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'INTERESTED_IN_PRESENTING', 'yes', 'Yes', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'INTERESTED_IN_PRESENTING', 'no', 'No', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'INTERESTED_IN_PRESENTING', 'unknown', 'Unknown', '3', '0', '0');

-- METHOD OF CONSULTATION --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_CONSULTATION', 'in-person', 'In-person', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_CONSULTATION', 'telemedicine', 'Telemedicine', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'METHOD_OF_CONSULTATION', 'pending-consultation', 'Pending Consultation', '3', '0', '0');

-- REFUSAL REASON --
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'REFUSAL_REASON', 'not-willing-participate', 'Not willing to participate in research study', '1', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'REFUSAL_REASON', 'study-duration', 'Not willing to participate for duration of study', '2', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'REFUSAL_REASON', 'not-willing-biopsy', 'Not willing to have liver biopsy', '3', '0', '0');
INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'REFUSAL_REASON', 'refusal-other', 'Other', '5', '0', '0');
-- INSERT INTO `epic_prod`.`question_lookup_log` (`study_id`, `is_answer`, `type`, `key`, `value`, `order`, `required`, `double_columns`) VALUES ('2241', '1', 'REFUSAL_REASON', 'refusal-not-applicable', 'N/A', '6', '0', '0');


/********** Run DEID LOG Script with 92221 DEMO STUDY **********/
