CREATE OR REPLACE
    ALGORITHM = UNDEFINED 
    DEFINER = `effectusroot`@`%` 
    SQL SECURITY DEFINER
VIEW `epic_prod`.`rpt_vw_patient_metrics_by_site` AS
    SELECT 
        `p`.`study_id` AS `study_id`,
        `p`.`site_id` AS `site_pk_id`,
        `s`.`site_code` AS `site_id`,
        `s`.`pi_name` AS `pi_name`,
        COUNT(DISTINCT `p`.`id`) AS `patients_total`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'PATIENT_MEET_CRIERIA')
                    AND (`pa`.`answer` = 'yes'))
            THEN
                1
            ELSE 0
        END)) AS `patients_criteria_yes`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'PATIENT_MEET_CRIERIA')
                    AND (`pa`.`answer` = 'no'))
            THEN
                1
            ELSE 0
        END)) AS `patients_criteria_no`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'PATIENT_MEET_CRIERIA')
                    AND (`pa`.`answer` = 'unknown'))
            THEN
                1
            ELSE 0
        END)) AS `patients_criteria_unknown`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'INTERESTED_IN_PRESENTING')
                    AND (`pa`.`answer` = 'yes'))
            THEN
                1
            ELSE 0
        END)) AS `patients_interested`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'INTERESTED_IN_PRESENTING')
                    AND (`pa`.`answer` = 'no'))
            THEN
                1
            ELSE 0
        END)) AS `patients_declined`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'INTERESTED_IN_PRESENTING')
                    AND (`pa`.`answer` = 'unknown'))
            THEN
                1
            ELSE 0
        END)) AS `patients_unknown`,
        SUM((CASE
            WHEN
                ((`pa`.`question_key` = 'AUTHORIZATION_SIGNED')
                    AND (`pa`.`answer` = 'yes'))
            THEN
                1
            ELSE 0
        END)) AS `patients_authorized`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Signed Contact Auth - Pending Patient Response')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_potentially_interested`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Referred to Site - Pending Site Response')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_pending_site_response`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Successfully Referred to Site - Pending Site Outreach/Pre-Screen')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_pending_site_contact`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Pending ICF Signature/Screening')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_pending_first_site_visit`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Signed ICF and In Screening')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_screening`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Pre-Screen Disqualified')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_prescreen_disqualified`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Turned Away From Site')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_turned_away_from_site`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Screen Failed')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_screened_failed`,
        (SELECT 
                COUNT(DISTINCT `pt`.`id`)
            FROM
                `epic_prod`.`patient_tracking` `pt`
            WHERE
                ((`pt`.`enrollment_status` = 'Randomized')
                    AND (`pt`.`study_id` = `p`.`study_id`)
                    AND (`pt`.`site_id` = `p`.`site_id`))) AS `patients_randomized`
    FROM
        ((`epic_prod`.`patient_deid_log` `p`
        LEFT JOIN `epic_prod`.`patient_deid_log_answers` `pa` ON ((`p`.`id` = `pa`.`patient_deid_log_id`)))
        LEFT JOIN `epic_prod`.`site` `s` ON ((`p`.`site_id` = `s`.`id`)))
    GROUP BY `p`.`study_id` , `p`.`site_id`