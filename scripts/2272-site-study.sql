/******** Clean Up **********/
DELETE FROM `epic_prod`.`study_site`
WHERE `study_id` = 2272;

DELETE FROM `epic_prod`.`site`
WHERE `site_code` IN (5003, 5004, 5005, 5006, 5009, 5010, 5016, 5017, 5018, 5019, 5020, 5021, 5023, 5024, 5025, 5026, 5027, 5028, 5031, 5033, 5034, 5035, 5036, 5038, 5039, 5040, 5041, 5042, 5043, 5501, 5504, 5508, 5509, 5512, 5514, 5515, 5516, 5517, 5518, 5519, 5521, 5522, 5524, 5525, 5526);

DELETE FROM `epic_prod`.`study`
WHERE `study_id` = 2272;


/******** Import Study **********/
INSERT INTO `epic_prod`.`study` (`study_id`, `name`, `client`, `description`)
VALUES (2272, 'SIRIUS-SLE Clinical Research Program', 'Novartis', 'SLE Study');


/******** Import Sites **********/
INSERT INTO `epic_prod`.`site` (`site_code`, `pi_name`, `name`, `address`, `city`, `state`, `zip`, `contact_name`, `contact_email`, `country`)
VALUES
    (5003, 'Paramount Medical Research', 'Isam Diab', 'Internal Medicine Rheumatology 18660 Bagley Road Suite 102B', 'Cleveland', 'OH', '44130', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5004, 'Ramesh Gupta MD', 'Ramesh Gupta', '6005 Park Ave, suite 409', 'Memphis', 'TN', '38119', 'Brittany Thompkins', 'brittany.thompkins@novartis.com', 'US'),
    (5005, 'Clinical Research of West Florida', 'Robert Levin', '2147 NE Coachman Road', 'Clearwater', 'FL', '33765', 'Phil Sabel', 'phil.sabel@novartis.com', 'US'),
    (5006, 'Parris and Associates', 'Glen Parris', '4850 Sugarloaf PKWY Suite 501', 'Lawrenceville', 'GA', '30044', 'Ahmad Marar', 'ahmad.marar@novartis.com', 'US'),
    (5009, 'Oschner Baton Rouge', 'Saravanan Thiagarajan', '10310 The Grove Blvd 5th Floor Research Department', 'Baton Rouge', 'LA', '70836', 'Nia Walker', 'nia.walker_ext@novartis.com', 'US'),
    (5010, 'STAT Research', 'Sanford Wolfe', 'STAT Research 600 Aviator Court Suite 100B', 'Vandalia', 'OH', '45377', 'Kristen Bosworth', 'kristen.bosworth@novartis.com', 'US'),
    (5016, 'Sahni Rheumatology', 'Kiren Sahni', '842 Broadway', 'West Long Branch', 'NJ', '07764', 'Phebean Obasoyin', 'phebean.obasoyin_ext@novartis.com', 'US'),
    (5017, 'Henry Ford', 'Alireza Meysami', '3031 West Grand Blvd Suite 800', 'Detroit', 'MI', '48202', 'Khyle Sorhaindo', 'khyle.sorhaindo_ext@novartis.com', 'US'),
    (5018, 'Facey Medical Group', 'Sue Chung', '191 S Buena Vista Street Unit 100', 'Burbank', 'CA', '91505', 'Ashley Muller', 'ashley-1.muller_ext@novartis.com', 'US'),
    (5019, 'Millenium Clinical Trials', 'Elvira Lindwall', '1220 La Venta Drive Ste 101', 'Thousand Oaks', 'CA', '91361', 'Ashley Muller', 'ashley-1.muller_ext@novartis.com', 'US'),
    (5020, 'Lake Cumberland Rheumatology', 'Scott Lewis', '3897 Charleston Road', 'New Albany', 'IN', '47150', 'Kristen Bosworth', 'kristen.bosworth@novartis.com', 'US'),
    (5021, 'UCLA Keck School of Medicine', 'William Stohl changing to Leanna Wise', '2011 Zonal Ave. HMR 711', 'Los Angeles', 'CA', 90033, 'Gabriela Luevano', 'gabriela.luevano_ext@novartis.com', 'US')       ,
    (5023, 'University of Pittsburgh', 'Andrea Coca', '3708 Fifth Avenue Suite 501', 'Pittsburgh', 'PA', '15213', 'Hayley Arnold', 'hayley.arnold_ext@novartis.com', 'US'),
    (5024, 'Metro Health', 'Stanley Ballou', '2500 Metro Health Drive', 'Cleveland', 'OH', '44109', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5025, 'University of California San Diego', 'Chelsey Smith', 'Center for Innovative Therapy 9452 Medical Center Drive 3W223 A 17', 'La Jolla', 'CA', 92037, 'Nshan Muradyan', 'nshan.muradyan@novartis.com', 'US'),
    (5026, 'University of Colorado', 'Christopher Striebich', '1775 Aurora Court Mail Stop B115', 'Aurora', 'CO', '80045', 'Maria Weskamp', 'maria.weskamp@novartis.com', 'US'),
    (5027, 'University of Miami', 'Maria Carpintero', '1600 NW 10th Avenue No 7064', 'Miami', 'FL', '33136', 'Phebean Obasoyin', 'phebean.obasoyin_ext@novartis.com', 'US'),
    (5028, 'Robert A Hozman', 'Robert Hozman', '4709 West Golf Road Suite 111', 'Skokie', 'IL', '60076', 'Maria Weskamp', 'maria.weskamp@novartis.com', 'US'),
    (5031, 'Epic Medical Research', 'Sunny Patel', '106 Plaza Drive', 'Red Oak', 'TX', '75154', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5033, 'Accurate Clinical Research', 'Sabeen Najam', '3800 Emmett Hutto Blvd', 'Baytown', 'TX', '77521', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5034, 'Arizona/ Banner Health', 'Kent Kwoh', '1501 N Campbell Avenue', 'Tucson', 'AZ', '85724', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5035, 'Yale University', 'Fotio Koumpouras', '2 Church Street South suite 401', 'New Haven', 'CT', '06511', 'Clarissa Frimpong', 'clarissa.frimpong_ext@novartis.com', 'US'),
    (5036, 'University of Nevada School of Medicine', 'Winn Chatham', '1707 W Charleston Blvd Suite 230', 'Las Vegas', 'NV', '89102', 'Amanda McCausland', 'amanda.mccausland_ext@novartis.com', 'US'),
    (5038, 'GNP Research', 'Mark Jaffe', '9900 Stirling Road 102', 'Cooper City', 'FL', '33024', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5039, 'NYU Langone', 'David Goddard', '70 Atlantic Avenue Suite 4011', 'Brookyln', 'NY', '11201', 'Hayley Arnold', 'hayley.arnold_ext@novartis.com', 'US'),
    (5040, 'Prisma Health', 'Sunita Paudyal', '2 Richland Medical Park Dr Suite 502', 'Columbia', 'SC', '29203', 'Chizo Okoro', 'chizo.okoro@novartis.com', 'US'),
    (5041, 'Texas Arthritis Center', 'Sanjay Chabra', '2600 N Oregon St', 'El Paso', 'TX', '79912', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5042, 'Clinical Research of West Florida', 'Priya Reddy', '605 N Howard Avenue', 'Tampa', 'FL', '33606', 'Chizo Okoro', 'chizo.okoro@novartis.com', 'US'),
    (5043, 'Stamford Health', 'Bret Sohn', 'One Hospital Plaza', 'Stamford', 'CT', '06902', 'Clarissa Frimpong', 'clarissa.frimpong_ext@novartis.com', 'US'),
    (5501, 'West Tennessee Research Institute', 'Jacob Aelion', '369 North Parkway Suite 400', 'Jackson', 'TN', '38305', 'Brittany Thompkins', 'brittany.thompkins@novartis.com', 'US'),
    (5504, 'Ahmed Arif Medical Research Center', 'Ali Karrar', '8200 South Saginaw St', 'Grand Blanc', 'MI', '48439', 'Adam Booth', 'adam.booth@novartis.com', 'US'),
    (5508, 'Novel Research', 'Wajeeha Yousaf', '6300 W Loop S Suite 333', 'Bellaire', 'TX', '77401', 'Ken Okoro', 'ken.okoro@novartis.com', 'US'),
    (5509, 'Pinnacle Research Group', 'Vishala Chindalore', '409 East 10th Street Ste 200', 'Anniston', 'AL', '36207', 'Ahmad Marar', 'ahmad.marar@novartis.com', 'US'),
    (5512, 'Integral Rheumatology and Immunology Specilistis (IRIS)', 'Guillermo Valenzuela', 'Main Centre 140 SW 84th Avenue Suite B', 'Plantation', 'FL', '33324', 'Preston Hamill', 'preston.hamill@novartis.com', 'US'),
    (5514, 'Advanced Medical Research', 'Gerald Ho', '5451 La Palma Avenue No 25', 'La Palma', 'CA', '90623', 'Pamela Clay', 'pamela.clay_ext@novartis.com', 'US'),
    (5515, 'University of California Los Angeles', 'Maureen McMahon', '1000 Veteran Ave Rm 32-59', 'Los Angeles', 'CA', '90095', 'Rachel Bassey', 'rachael-1.bassey@novartis.com', 'US'),
    (5516, 'University of Maryland', 'Violeta Rus', 'Umab 10 S Pine St Mstf Bldg Rm 8-34', 'Baltimore', 'MD', '21201', 'Donny Ezirim', 'donny.ezirim@novartis.com', 'US'),
    (5517, 'Emory University', 'Arezou Khosrashahi', '1365 Clifton Road NE', 'Atlanta', 'GA', '30322', 'Alison Strok', 'alison.strok@novartis.com', 'US'),
    (5518, 'Washington University School of Medicine', 'Reema Syed', '660 South Euclid Campus Box 8127', 'St Louis', 'MO', '63110', 'Maria Weskamp', 'maria.weskamp@novartis.com', 'US'),
    (5519, 'University of California Irvine Med Center', 'Sheetal Desai', '2161 San Joaquin Hills Road', 'Orange', 'CA', '92660', 'Marlene Ma', 'marlene.ma@novartis.com', 'US'),
    (5521, 'Accurate Clinical Research', 'Enrique Mendez', '1727 Imperial Blvd Building 1 Suite B', 'Lake Charles', 'LA', '70605', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5522, 'Thomas Jefferson University', 'Irene Tan', '211 S 9th St', 'Philadelphia', 'PA', '19107', 'Kerry-Ann Day', 'kerry-ann.day_ext@novartis.com', 'US'),
    (5524, 'Willow Rheumatology', 'Angela Crowley', '550 W Ogden Ave', 'Willowbrook', 'IL', 60527, 'Maria Weskamp', 'maria.weskamp@novartis.com', 'US'),
    (5525, 'Homestead Assoc in Research', 'Gilbert Seco', '30328 Old Dixie Hwy', 'Miami', 'FL', '33033', 'Ahmad Marar', 'ahmad.marar@novartis.com', 'US'),
    (5526, 'UMC/ LCMC (affiliated with LSU)', 'Stephen Lindsey', '2000 Canal St D and T 5741', 'New Orleans', 'LA', '70112', 'Mary Faustino ', 'mary.faustino@novartis.com', 'US');



/******** Import Study - Sites relationships **********/
INSERT INTO `epic_prod`.`study_site` (`study_id`, `site_id`)
VALUES 
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5003)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5004)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5005)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5006)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5009)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5010)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5016)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5017)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5018)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5019)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5020)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5021)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5023)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5024)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5025)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5026)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5027)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5028)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5031)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5033)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5034)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5035)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5036)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5038)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5039)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5040)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5041)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5042)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5043)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5501)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5504)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5508)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5509)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5512)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5514)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5515)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5516)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5517)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5518)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5519)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5521)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5522)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5524)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5525)),
    (2272, (SELECT `id` FROM `epic_prod`.`site` WHERE `site_code` = 5526));
