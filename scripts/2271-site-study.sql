INSERT INTO `epic_prod`.`study` (`study_id`, `name`, `client`, `description`)
VALUES (2271, 'VENUSS (CVAY736S12201) Study', 'Novartis', 'dcSSc Study');


INSERT INTO `epic_prod`.`site` (`id`, `name`, `address`, `address2`, `city`, `state`, `zip`, `country`, `pi_name`)
VALUES
    (1008, 'Clinical Res Of W Florida', '2147 NE Coachman Road', NULL, 'Clearwater', 'FL', '33765', 'US', 'Rodney Daniel'),
    (1007, 'Prolato Clinical Research Center', '8990 Kirby Dr', 'Suite 208', 'Houston', 'TX', '77054', 'US', 'Michelle Eisenberg'),
    (1015, 'West Tennessee Research Institute', '369 North Parkway', 'Suite 400', 'Jackson', 'TN', '38305', 'US', 'Jacob Aelion'),
    (1001, 'Arizona Arthritis and Rheumatology Research PLLC', '5681 w beverly lane', 'Suite 100', 'Glendale', 'AZ', '85306', 'US', 'Nehad Soloman'),
    (1017, 'Arthritis and Rheumatology Instit', '981 State Highway 121', 'Suite 3150', 'Allen', 'TX', '79013', 'US', 'Megha Patel Banker'),
    (1012, 'Clinical Research Institute of Michigan LLC', '29200 Harper Avenue', NULL, 'St Clair Shores', 'MI', '48081', 'US', 'Andrew Sulich'),
    (1005, 'GNP Research', '9900 Stirling Road', '102', 'Hollywood', 'FL', '33024', 'US', 'Mark Jaffe'),
    (1021, 'Hoag Hospital Hoag Memorial Hos Presbyterian', '510 Superior Ave', 'Suite 200D', 'Newport Beach', 'CA', '92663', 'US', 'Jonathan Dau'),
    (1020, 'Integral Rheumatology and Immunology Specialists IRIS Main Centre', '140 SW 84th Avenue', 'Suite B', 'Plantation', 'FL', '33324', 'US', 'Guillermo Valenzuela'),
    (1011, 'Sarasota Arthritis Research Center', '1945 Versailles Street', 'Suite 101', 'Sarasota', 'FL', '34239', 'US', 'Jaishree Manohar'),
    (1013, 'UCLA', '1000 Veteran Avenue', 'Suite 32-59', 'Los Angeles', 'CA', '90095-1670', 'US', 'Suzanne Kafaja'),
    (1018, 'UMC New Orleans', '2000 Canal St', 'D and T 5741', 'New Orleans', 'LA', '70112', 'US', 'Stephen Lindsey'),
    (1014, 'Uni Of Michigan Health System', '1500 E Medical Center Drive', NULL, 'Ann Arbor', 'MI', '48109', 'US', 'Carleigh Zahn'),
    (1019, 'University of Chicago Hospitals', '5841 South Maryland Avenue', NULL, 'Chicago', 'IL', '60637', 'US', 'Michael Macklin');


INSERT INTO `epic_prod`.`study_site` (`study_id`, `site_id`)
VALUES 
    (2271, 1008),
    (2271, 1007),
    (2271, 1015),
    (2271, 1001),
    (2271, 1017),
    (2271, 1012),
    (2271, 1005),
    (2271, 1021),
    (2271, 1020),
    (2271, 1011),
    (2271, 1013),
    (2271, 1018),
    (2271, 1014),
    (2271, 1019);
