/******** Clean Up **********/
DELETE FROM `epic_prod`.`study_site`
WHERE `study_id` = 2271;

DELETE FROM `epic_prod`.`site`
WHERE `site_code` IN (
    1008,
    1007,
    1015,
    1001,
    1017,
    1012,
    1005,
    1021,
    1020,
    1011,
    1013,
    1018,
    1014,
    1019
);

DELETE FROM `epic_prod`.`study`
WHERE `study_id` = 2271;


/******** Import Study **********/
INSERT INTO `epic_prod`.`study` (`study_id`, `name`, `client`, `description`)
VALUES (2271, 'VENUSS (CVAY736S12201) Study', 'Novartis', 'dcSSc Study');


/******** Import Sites **********/
INSERT INTO `epic_prod`.`site` (`site_code`, `pi_name`, `name`, `address`, `city`, `state`, `zip`, `country`)
    (1008, 'Rodney Daniel', 'Clinical Res Of W Florida', '2147 NE Coachman Road', 'Clearwater', 'FL', '33765', 'US'),
    (1007, 'Michelle Eisenberg', 'Prolato Clinical Research Center', '8990 Kirby Dr Suite 208', 'Houston', 'TX', '77054', 'US'),
    (1015, 'Jacob Aelion', 'West Tennessee Research Institute', '369 North Parkway Suite 400', 'Jackson', 'TN', '38305', 'US'),
    (1001, 'Nehad Soloman', 'Arizona Arthritis and Rheumatology Research PLLC', '5681 w beverly lane suite 100', 'Glendale', 'AZ', '85306', 'US'),
    (1017, 'Megha Patel Banker', 'Arthritis and Rheumatology Instit', '981 State Highway 121 Suite 3150', 'Allen', 'TX', '79013', 'US'),
    (1012, 'Andrew Sulich', 'Clinical Research Institute of Michigan LLC', '29200 Harper Avenue', 'St Clair Shores', 'MI', '48081', 'US'),
    (1005, 'Mark Jaffe', 'GNP Research', '9900 Stirling Road 102', 'Hollywood', 'FL', '33024', 'US'),
    (1021, 'Jonathan Dau', 'Hoag Hospital', 'Hoag Memorial Hos Presbyterian 510 Superior Ave Suite 200D', 'Newport Beach', 'CA', '92663', 'US'),
    (1020, 'Guillermo Valenzuela', 'Integral Rheumatology and Immunology Specialists IRIS', 'Main Centre 140 SW 84th Avenue Suite B', 'Plantation', 'FL', '33324', 'US'),
    (1011, 'Jaishree Manohar', 'Sarasota Arthritis Research Center', '1945 Versailles Street Suite 101', 'Sarasota', 'FL', '34239', 'US'),
    (1013, 'Suzanne Kafaja', 'UCLA', '1000 Veteran Avenue, Suite 32-59', 'Los Angeles', 'CA', '90095-1670', 'US'),
    (1018, 'Stephen Lindsey', 'UMC New Orleans', '2000 Canal St D and T 5741', 'New Orleans', 'LA', '70112', 'US'),
    (1014, 'Carleigh Zahn', 'Uni Of Michigan Health System', '1500 E Medical Center Drive', 'Ann Arbor', 'MI', '48109', 'US'),
    (1019, 'Michael Macklin', 'University of Chicago Hospitals', '5841 South Maryland Avenue', 'Chicago', 'IL', '60637', 'US');


/******** Import Study - Sites relationships **********/
INSERT INTO `epic_prod`.`study_site` (`study_id`, `site_id`)
VALUES 
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1008)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1007)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1015)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1001)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1017)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1012)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1005)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1021)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1020)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1011)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1013)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1018)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1014)),
    (2271, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 1019));
