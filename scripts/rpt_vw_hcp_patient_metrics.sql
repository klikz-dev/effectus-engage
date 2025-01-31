CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `effectusroot`@`%` 
    SQL SECURITY DEFINER
VIEW `epic_prod`.`rpt_vw_hcp_patient_metrics` AS
    SELECT 
        `s`.`study_id` AS `Study ID`,
        `s`.`name` AS `Study Name`,
        `si`.`site_code` AS `Site ID`,
        `si`.`city` AS `City`,
        `si`.`state` AS `State`,
        (CASE
            WHEN ISNULL(`si`.`pi_name`) THEN ''
            ELSE `si`.`pi_name`
        END) AS `PI Name`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_total`) THEN 0
            ELSE `hcp`.`hcps_total`
        END) AS `Total HCPs`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_active`) THEN 0
            ELSE `hcp`.`hcps_high_interest`
        END) AS `High Level of Interest HCPs`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_active`) THEN 0
            ELSE `hcp`.`hcps_active`
        END) AS `HCPs Active`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_training`) THEN 0
            ELSE `hcp`.`hcps_training`
        END) AS `HCPs Training`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_contracting`) THEN 0
            ELSE `hcp`.`hcps_contracting`
        END) AS `HCPs Contracting`,
        (CASE
            WHEN ISNULL(`hcp`.`hcps_terminated`) THEN 0
            ELSE `hcp`.`hcps_terminated`
        END) AS `HCPs Terminated`,
        (CASE
            WHEN ISNULL(`pt`.`patients_total`) THEN 0
            ELSE `pt`.`patients_total`
        END) AS `Total Patients`,
        (CASE
            WHEN ISNULL(`pt`.`patients_criteria_yes`) THEN 0
            ELSE `pt`.`patients_criteria_yes`
        END) AS `Patients Meet Criteria`,
        (CASE
            WHEN ISNULL(`pt`.`patients_criteria_no`) THEN 0
            ELSE `pt`.`patients_criteria_no`
        END) AS `Patients Doesnt Meet Criteria`,
        (CASE
            WHEN ISNULL(`pt`.`patients_criteria_unknown`) THEN 0
            ELSE `pt`.`patients_criteria_unknown`
        END) AS `Patients Unknown Criteria`,
        (CASE
            WHEN ISNULL(`pt`.`patients_interested`) THEN 0
            ELSE `pt`.`patients_interested`
        END) AS `Patients Interested`,
        (CASE
            WHEN ISNULL(`pt`.`patients_declined`) THEN 0
            ELSE `pt`.`patients_declined`
        END) AS `Patients Declined`,
        (CASE
            WHEN ISNULL(`pt`.`patients_unknown`) THEN 0
            ELSE `pt`.`patients_unknown`
        END) AS `Patients Unknown`,
        (CASE
            WHEN ISNULL(`pt`.`patients_authorized`) THEN 0
            ELSE `pt`.`patients_authorized`
        END) AS `Patients Authorized`,
        (CASE
            WHEN ISNULL(`pt`.`patients_potentially_interested`) THEN 0
            ELSE `pt`.`patients_potentially_interested`
        END) AS `Patients Potentially Interested and Flagged for Further Review`,
        (CASE
            WHEN ISNULL(`pt`.`patients_pending_site_response`) THEN 0
            ELSE `pt`.`patients_pending_site_response`
        END) AS `Patients Pending Site Response`,
        (CASE
            WHEN ISNULL(`pt`.`patients_pending_site_contact`) THEN 0
            ELSE `pt`.`patients_pending_site_contact`
        END) AS `Patients Pending Site Contact`,
        (CASE
            WHEN ISNULL(`pt`.`patients_pending_first_site_visit`) THEN 0
            ELSE `pt`.`patients_pending_first_site_visit`
        END) AS `Patients Pending First Site Visit`,
        (CASE
            WHEN ISNULL(`pt`.`patients_screening`) THEN 0
            ELSE `pt`.`patients_screening`
        END) AS `Patients In Screening`,
        (CASE
            WHEN ISNULL(`pt`.`patients_prescreen_disqualified`) THEN 0
            ELSE `pt`.`patients_prescreen_disqualified`
        END) AS `Pre-Screen Disqualified`,
        (CASE
            WHEN ISNULL(`pt`.`patients_turned_away_from_site`) THEN 0
            ELSE `pt`.`patients_turned_away_from_site`
        END) AS `Turned Away From Site`,
        (CASE
            WHEN ISNULL(`pt`.`patients_screened_failed`) THEN 0
            ELSE `pt`.`patients_screened_failed`
        END) AS `Screen Failed`,
        (CASE
            WHEN ISNULL(`pt`.`patients_randomized`) THEN 0
            ELSE `pt`.`patients_randomized`
        END) AS `Randomized`
    FROM
        ((((`epic_prod`.`study` `s`
        LEFT JOIN `epic_prod`.`study_site` `ss` ON ((`s`.`study_id` = `ss`.`study_id`)))
        LEFT JOIN `epic_prod`.`site` `si` ON ((`ss`.`site_id` = `si`.`id`)))
        LEFT JOIN `epic_prod`.`rpt_vw_hcp_metrics_by_site` `hcp` ON (((`ss`.`study_id` = `hcp`.`study_id`)
            AND (`ss`.`site_id` = `hcp`.`site_pk_id`))))
        LEFT JOIN `epic_prod`.`rpt_vw_patient_metrics_by_site` `pt` ON (((`ss`.`study_id` = `pt`.`study_id`)
            AND (`ss`.`site_id` = `pt`.`site_pk_id`))))
    WHERE
        ((`si`.`for_training` = 0)
            AND (`s`.`for_training` = 0))
    ORDER BY `s`.`study_id` , `si`.`site_code`