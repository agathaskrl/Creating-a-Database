/*USER*/
INSERT INTO `user`(username,`password`,`name`,surname,reg_date,email) VALUES
("katerinaki","spitimou","Katerina","Nikolaou",'2020-10-05 01:34:20',"nikakaterina@gmail.com"),
("mhtsakil","nystazw9","Dhmhtra","Lazarou",'2019-05-13 15:45:34',"dhmhl@yahoo.gr"),
("kwstakis93","peinawpol","Kwnstantinos","Karakwstas",'2018-03-16 16:32:26',"kwsk93@gmail.com"),
("nikolakis","80b12nikos","Nikolas","Pappas",'2016-11-17 17:27:15',"nikospap@yahoo.com"),
("agathwn","thelwYpno9","Agatha","Skyrla",'2019-10-01 02:35:46',"agathwnsk@gmail.com"),
("yianstamel","sky!96A","Iwannhs","Stamelos",'2018-01-26 16:48:36',"yianstamel@yahoo.gr"),
("maroutsos","maria97","Maria","Skyrla",'2017-11-06 18:27:18',"mariask@gmail.com"),
("manoumanou99","kafes99","Emmanouela","Pappa",'2019-05-12 09:25:36',"manou99@yahoo.gr"),
("tonyzaf","anTo9","Antwnhs","Zafeirelhs",'2016-06-15 12:36:25',"tonyzaf@gmail.com"),
("savvas94","paizwlol","Savvas","Kalamis",'2016-04-03 15:18:41',"savvka94@yahoo.gr"),
("markzymn","brm87!","Markellos","Zymnhs",'2019-07-21 19:38:12',"markzymn@gmail.com"),
("siliagk","ch!lia9","Basilikh Leukothea","Gkeka",'2018-10-25 10:23:41',"siliagk@gmail.com"),
("mixaltop","t0m!X76","Mixahl","Toptshs",'2013-09-01 14:32:12',"mixatop@gmail.com"),
("yiannisxA","m8ctP28!","Iwannhs","Xaztimixalhs",'2016-05-26 22:31:20',"yiannisxa@yahoo.gr"),
("gianStam","x4L45!s","Iwannhs","Stamoulhs",'2020-12-28 05:32:12',"gianstam@gmail.com"),
("chrisboul","chris99A","Christos","Boulafenths",'2015-06-28 20:04:26',"chrisboul99@gmail.com"),
("anastasila","anast987","Anastasia","Laskaridh",'2014-09-19 18:36:25',"anastasialas@yahoo.gr"),
("andrpi","1245!","Andreas","Pikas",'2013-04-25 11:07:46',"andreaspi@gmail.com"),
("elengeo","sdflif3","Eleni","Georgiadou",'2017-06-30 17:15:06',"elengeo@gmail.com"),
("eyangeo","eya19!A","Eyanthia","Georgiadou",'2018-10-23 16:28:52',"eyxageo@gmail.com"),
("kwstas96","KwstasBro","Kostantinos","Nikolaou","2018-05-01 12:46:45","kwstasnik@gmail.com"),
("dimitrispap","Dimitris85","Dimitris","Papadopoulos","2018-05-30 07:25:15","dimitris.papadopoulo@gmail.com"),
("marakioik","Maria94","Maria","Oikonomou","2018-07-22 09:25:16","maria.oikonomou@gmail.com"),
("nikosgat","Nikos74","Nikos","Gatos","2019-06-14 15:21:36","nikos.gatos@gmail.com"),
("elenisar","Eleni89","Eleni","Saranti","2020-01-23 12:23:15","eleni.saranti@gmail.com"),
("mariadok","Maria95","Maria","Dokouli",'2019-06-11 10:31:29',"maria.dok@gmail.com"),
("elenipapaxri","Eleni84","Eleni","Papaxristou",'2014-11-21 13:25:01',"elenipapaxristou@yahoo.gr"),
("georgeoik","Giorgos96","Georgios","Oikonomou",'2020-04-22 10:00:01',"georgeoikonomou@gmail.com"),
("basilikigeo","Vasiliki91","Vasiliki","Georgiou",'2017-11-22 17:025:11',"vasiliki.georgiou@yahoo.gr"),
("dimitriskous","Dimitris88","Dimitrios","Koustos",'2016-01-30 12:27:21',"dimitris.koustos@gmail.com"),
("kwstasthom","Kwstas92","Kostantinos","Thomaidis",'2018-04-14 18:25:36',"kostantinos.thommaidis@gmail.com"),
("giannisadam","Giannis79","Ioannis","Adamopoulos",'2013-11-06 22:45:01',"ioannis.adamopoulos@gmail.com"),
("athinamar","Athina92","Athina","Martaki",'2016-06-04 11:15:09',"athinamartaki@yahoo.gr"),
("nikosthan","Nikos87","Nikolaos","Thanasouras",'2018-07-14 13:42:16',"nikos.thanasouras@gmail.com"),
("georgiasaim","Georgia96","Georgia","Saimi",'2017-10-06 16:22:31',"georgia.saimi@gmail.com"),
("sofialap","Sofia95","Sofia","Lapari",'2019-04-21 17:45:32',"sofia.lapari@gmail.com"),
("anastasiarep","Anastasia87","Anastasia","Repopoulou",'2015-06-21 21:15:41',"anastasia.reppoulou@gmail.com"),
("evaggeliavotsi","Evaggelia94","Evaggelia","Votsi",'2016-10-12 09:36:25',"evaggelia.votsi@gmail.com"),
("ioannasake","Ioanna89","Ioanna","Sakelaridi",'2017-02-03 08:28:12',"ioanna.sakelaridi@gmail.com"),
("xristospap","Xristos97","Xristos","Papagiannis",'2020-04-02 11:32:40',"xristos.papagiannis@yahoo.gr");
SELECT * FROM `user`;
/*ADMIN*/
INSERT INTO administrator(admin_username) VALUES ("katerinaki");
SELECT * FROM administrator;
/*COMPANY*/
INSERT INTO company(AFM,DOY,phone,street,street_number,city,country,company_name) VALUES
('101235645',"Pagkrati",2106589454,"Neoptolaimou",12,"Athens","Greece","Logisthrio Papakwsta"),
('101456789','Xolargou',2104638622,'Pentelis',74,'Athens','Greece','Finaclial Advice'),
('101879123','A Thessalonikis',2310542106,'Ermou',33,'Thessaloniki','Greece','Financials A.E.');
SELECT * FROM company;
/*MANAGER*/ 
INSERT INTO manager(manager_username,company_exp,manager_id,manager_company) VALUES
("dimitrispap",6,1000,'101235645'),
("markzymn",7,1001,'101456789'),
("agathwn",5,1002,'101879123');
SELECT * FROM manager;
 
/*EVALUATOR*/
INSERT INTO evaluator(evaluator_id,evaluator_username,evaluator_company,years_of_exp) VALUES 
(2359,"nikolakis",101235645,4),
(2360,"manoumanou99",101879123,2),
(2361,"yianstamel",101235645,6),
(2362,"savvas94",101879123,5),
(2301,"kwstas96",101456789,4),
(2302,"marakioik",101456789,2); 
SELECT * FROM evaluator;
/*EMPLOYEE*/
INSERT INTO 
employee(employee_username,empl_id,cmp_afm,expe_years,bio,sistatikes,certificates,awards,manager_report) VALUES
("tonyzaf",1548,'101235645',4,"Antony Zafeiris Zafeirelis has an Accounting deploma, he is a an experienced accouantant 
(with over 4 years of experience) ","Dear employer, Antonis Zafeiris Zafeirelis has worked in our company for over 4 years 
as an Accountant he is a very capable and cooperative person. With respect Agatha Skyrla. ","certif_antonyzaf.pdf","",""),
("mhtsakil",1549,'101879123',2,"Dhmhtra Lazarou is an Economics degree holder,she also mastered in Accounting ,and 
worked as a manager at a Financials company for 2 years.","Dear employer, Dimitra Lazarou is a manager in our company 
for over 2 years with great experience in her sector. ","certif_dhmhtralaz.pdf","",""),
("siliagk",1550,'101879123',3,"Vasiliki Leukothea Gkeka has an Accounting deploma also holds an Economics deploma as 
well as she has mastered the Financials and Economics.She has experience in the Accounting as she worked as an Assistant 
Manager for over 3 years.","Dear employer, Vasiliki Leykothea Gkeka has worked in our company as an Assisatnt Manager 
for over 3 years.She is very capable and very smart her skills can contribute in your company.With respect 
","certif_vasilikigk.pdf","Glen McLaughlin Prize for Research in Accounting Ethics(2018)",""),
("maroutsos",1551,'101235645',3,"Maria Skyrla has an Economics deploma,she has experience in Economics department 
for over 3 years. She specializes as an Financial Advisor with experience in that sector of 3 years.","Dear employer, Maria 
Skyrla has worked in our company for over 3 years , with great cooperation and good skills as an Financial 
Advisor.","cert_mar_sk.pdf","",""),
("mixaltop",1552,'101879123',8,"Mixahl Toptsis has a PHD in Accounting, he has a master Economics as well as he has 
experience over 8 years in the sector of Accounting and Econmics. ","Dear employer, Mixahl Toptsis is a great has worked as 
an Assistant Manager in our company for over 5 years and as a Accountant in another company for over 3 years. His skills 
are efficiantly in our company. ","certif_mt.pdf","Journal of Management Accounting Research Best Paper Award(2017) & 
Outstanding Behavioral Accounting Researcher Award(2019)",""),
("yiannisxA",1553,'101879123',4,"Iwannhs Xatzhmixalhs is a High School graduate . He worked as an Assistant accountant 
for over 4 years.","","certi_iwnxa.pdf","",""),
("elenisar",1554,'101235645',1,"Elenh Saranti is a graduate of High School of Nicosia, She has experience in Economics 
Department as an Assistant Accountant for 1 year.","","certific_elensar","",""),
("eyangeo","1055",'101235645',2,"Eyanthia Georgiadou has an Accounting and Bussiness Master. She worked as an 
assistant accountant for over 2 years.","Dear employer, Eyanthia Georgiadou is an exchellent Assistant Accountant in our 
company for over 2 years.Her work has been beneficial to our company.","certifi_eyangeo.pdf","",""),
("chrisboul",1556,'101235645',9,"Christos Boulafentis has PHD in Ecomonics and Statistics, he has won awards for his 
contribution to the University of Patras which he has graduated with honors.He has worked as an Assistant Manager in two 
different companies and he has experience over 8 years.","Dear employer, Christos Boulfentis has worked in our company 
for over 5 years as an Assitant manager and before that for 3 years as an Accountant.He is very tallented and hard-working 
person.","chris_boul_certif.pdf","Accounting Research Best Paper Award(2016) & Outsanding Educator Award(2014)",""),
("andrpi",1557,'101235645',7,"Andreas Pikas holds a deploma of Accounting he is very experiened in his sector as well as he 
has experience of 7 years as an Accountant.","Dear employer, Andreas Pikas is a very punctual and hard-working 
Accountant in our company for over 7 years.","certif_andpik","",""),
("kwstakis93",1558,'101235645',2,"Kwnstantinos Karakwstas is a graduate of the Economics department, he has experience 
as an Assistant Accountant for over 2 years.","Dear employer Kwnstantinos Karakwstas is an excellent Assistant Accounter 
in our company for over 2 years.He is a deligent and respectfull person.","karkwst_certific.pdf","",""),
("elengeo",1559,'101235645',3,"Elenh Georgiadou has a master in Accounting as well as she has been many times honored 
for her skills though her young age she has managed to contribute in the Accounting sector with her skills with over 3 yers 
of expereince as an Accounter.","Dear employer, Eleni Georgiadou is a deligdent hard-working person.Though her little 
experience she has contributed to our company and to Accounting sector.",""," Accounting Best Paper Award(2018)",""),
("anastasila",1560,'101235645',6,"Anastasia Laskaridi is a former manager and a graduate of Economics University of 
Athens, with over 6 years of experience.","Dear employer, Anastasia Laskaridi is a former manager in our company. She is a 
very hard-working and willing person.","anastsialask_certificate.pdf","",""),
("nikosgat",1561,'101235645',1,"Nikolaos Gatos has recently graduated University of Aegean in the departments of Maths 
and Statistics and worked as an Assistans Accountant for 1 year.","Dear employer, Nikolaos Gatos is a very skillfull and 
willing person working as an Accountant in our company.","nikgat_certif.pdf","",""),
("gianStam",1562,'101235645',1,"Iwannhs Stamoulhs is a High School Graduate , he has expereince of 1 year as an Assistant 
Accountant.","","certifi_giannstam.pdf","",""),
("mariadok",1501,101456789,1,"Maria Dokouli is a High School Graduate.She has experience in Assistant Accounting for 1 
year.","",'crtif_mariadok.pdf',"",""),
("elenipapaxri",1502,101456789,2,"Eleni Papaxristou has a Financials Deploma.Shw has 2 years of a experience as an 
Accountant.","Dear employer, Maria Papaxristou is a very capable employeer.She has two years of experience as an 
Accountant in our company.She is a willing and hard-working person.","certifi_elenpapa.pdf","",""),
("georgeoik",1503,101456789,2,"Gergios Oikonomou is a graduate of University of Pereus.Hw has a Financials Deploma and 
experience as an Accountant for over 6 years","Dear employer, Georgios Oikonomou is a very hard-working ajmd willing 
Accountant .He has worked in our company for over three years and in other companies for over 4 years.Very good skills 
and great personality.","certif_geooik.pdf","Accounting Best Paper Award(2015)",""),
("basilikigeo",1504,101456789,4,"Vasiliki Georgiou has a Financials Deploma.Shw has four years of a experience as an 
Accountant.","","vasilkgeor.pdf","",'Exchellent in general'),
("dimitriskous",1505,101456789,2,"Dimitris Koustos is a High School graduate, he has experience as an Assistant for 2 
years.","","crt_vasilkou.pdf","",'Good employee'),
("kwstasthom",1506,101456789,1,"Kostantinos Thomaidis is a graduate from University of Patras in Finanacials.He has 
experience as an Accountant for 1 year.","","certifi.pdf","",'Average employee not the best.'),
("giannisadam",1507,101456789,3,"Ioannis Adamopoulos is a graduate from University of Patras in Economics and 
Financials.He has worked as an Accountant for over 3 years.","Dear employer, Ioannis Adamopoulos has worked in our 
comoany for over 3 years as an Accountant.He has fullfilled his duties with honors.He is very hard-working and 
willing","adm_certi.pdf","",'Average/not intersting'),
("athinamar",1508,101456789,4,"Athina Martaki has a Financials Deploma from Universty of Patras.She has experience as 
an Assistant Accountant for over 4 years.","Dear employer , Athina Martaki n exchellent Assistant Accountant in our 
company for over 4 years.Her work has been beneficial to our company ","athnmar_certificate.pdf","",""),
("nikosthan",1509,101456789,2,"Nikolaos Thanasouras has a degree in Economics.He has experience of 2 years as an 
Acountant.","","cerifi_nikthan.pdf","",""),
("georgiasaim",1510,101456789,2,"Georgia Saimi is a graduate from ASOE she has a degree in Financials and she has 
worked as an assistant accountant for over 2 years.","Dear employer, Gerorgia Saimi is a very good and hard-working 
Assistant Accountant.She has worked in our company for over 2 years and her work is very beneficial to our 
company.","cerifi_georgs.pdf","",'Average in total'),
("sofialap",1511,101879123,3,"Sofia Lapari has a degree in Financials.She has experien ce as an Accountant for over three 
years.","","certif_soflap.pdf","",""),
("anastasiarep",1512,101879123,1,"Anastasia Repopoulou is a graduate from ASOE she has a degree in Financials and she 
has worked as an assistant accountant for over 1 year","","certif_anast.pdf","",""),
("evaggeliavotsi",1513,101879123,4,"Evaggelia Votsi is an Accountant with experience for over 4 years.She has a degree 
from ASOE in Fianancials.","Dear employer, Evaggelia Votsi is a very willing and hard-working person in our company.She 
has worked for us for over 4 years.","certif_evagvots.pdf","",""),
("ioannasake",1514,101879123,5,"Ioanna Sakelaridi is an Assistant Manage for over 4 years.She has worked as an 
Accountant for 1 year and then she was pormoted to Assistant Manager.She has a degree in Finncials.","Dear employer. 
Ioanna Sakelaridi has worked in our comoany for 5 years she has been very willing and hard-working form the 
start.","certificate_ionsak.pdf","",'Exchellent and good skills'),
("xristospap",1515,101879123,2,"Xristos Papagiannis has a Master in Financials from ASOE.He has experience for 2 years as 
an Accountant","","certiif_xripap.pdf","","");
SELECT * FROM employee;
/*DEGREE*/
INSERT INTO degree(titlos,idryma,bathmida) VALUES 
("Accounting and Bussiness","University of Athens",'UNIV'),
("Accounting and Financials","University of Nicosia",'MASTER'),
("Accounting and Bussiness","University of Cambridge",'MASTER'),
("Economics and Statistics","University of Patras",'UNIV'),
("Economics and Bussiness","University of Thessaloniki",'PHD'),
("Vocational High School Deploma","2nd Vocational High School of Athens",'LYKEIO'),
("High School Diploma","1st High School of Nicosia",'LYKEIO'),
("Accounting and Bussiness","University of Thessaloniki",'MASTER'),
("Economics and Statistcs","University of Patras",'PHD'),
("Accounting and Financials","University of Athens",'UNIV'),
("Economics and Accounting","University of Nicosia",'UNIV'),
("Accounting and Financials","University of Oxford",'MASTER'),
("Economics and Statistics","University of Athens",'UNIV'),
("Mathematics and Statistics","University of Aeagean",'UNIV'),
("High School Diploma","High School of Mesolonghi",'LYKEIO'),
("Highschool Degree","3o Lykeio Kifisias",'LYKEIO'),
("Highschool Degree","3o Lykeio Patras",'LYKEIO'),
("Financial Sience","ASOE",'UNIV'),
("Financial Sience","University of Peireus",'UNIV'),
("Financial Sience","University of Patras",'UNIV'),
("Economics and Team Managment","ASOE",'MASTER');
SELECT * FROM degree; 
/*HAS_DEGREE*/
INSERT INTO has_degree(degr_title,degr_idryma,empl_usrname,etos,grade) VALUES 
("Accounting and Bussiness","University of Athens","tonyzaf",2016,'8.5'),
("Accounting and Financials","University of Nicosia","mhtsakil",2017,'7.5'),
("Accounting and Bussiness","University of Cambridge","siliagk",2016,'9.5'),
("Economics and Statistics","University of Patras","maroutsos",2015,'7.5'),
("Economics and Bussiness","University of Thessaloniki","mixaltop",2010,'9'),
("Vocational High School Deploma" ,"2nd Vocational High School of Athens","yiannisxA",2013,'10'),
("High School Diploma","1st High School of Nicosia","elenisar",2019,'10'),
("Accounting and Bussiness","University of Thessaloniki","eyangeo",2017,'8.5'),
("Economics and Statistcs","University of Patras","chrisboul",2012,'10'),
("Accounting and Financials","University of Athens","andrpi",2010,'8'),
("Economics and Accounting","University of Nicosia","kwstakis93",2017,'8.5'),
("Accounting and Financials","University of Oxford","elengeo",2015,'9'),
("Economics and Statistics","University of Athens","anastasila",2012,'8.5'),
("Mathematics and Statistics","University of Aeagean","nikosgat",2019,'6.5'),
("High School Diploma","High School of Mesolonghi","gianStam",2019,'10'),
("Highschool Degree","3o Lykeio Kifisias","mariadok",2013,'15.2'),
("Financial Sience","University of Peireus","elenipapaxri",2006,'7.2'),
("Financial Sience","University of Peireus","georgeoik",2018,'6'),
("Financial Sience","University of Peireus","basilikigeo",2013,'5.4'),
("Highschool Degree","3o Lykeio Patras","dimitriskous",2005,'16.0'),
("Financial Sience","University of Patras","kwstasthom",2014,'6.3'),
("Financial Sience","University of Patras","giannisadam",2001,'5.8'),
("Financial Sience","University of Patras","athinamar",2014,'7.5'),
("Financial Sience","University of Patras","nikosthan",2009,'9.2'),
("Financial Sience","ASOE","georgiasaim",2018,'7.6'),
("Financial Sience","ASOE","sofialap",2017,'8'),
("Financial Sience","ASOE","anastasiarep",2009,'7.1'),
("Financial Sience","ASOE","evaggeliavotsi",2016,'6.4'),
("Financial Sience","ASOE","ioannasake",2011,'8.1'),
("Financial Sience","ASOE","xristospap",2019,'9');
SELECT * FROM has_degree;
/*PROJECT*/
INSERT INTO project(empl,num,descr,url) VALUES 
("tonyzaf",1,"This project is about Financial Distress 
Accounting","https://www.researchgate.net/publication/342663780Financial_Distress_Accounting.pdf"),
("siliagk",2,"This porject is about Accounting in Shipping companies, The project is about Invenstemnts in Greece and the 
Implications.","https://www.researchgate.net/publication/342665896Accounting_in_Shipping_companies.pdf,https://www
.resrarchnet.net/publications/5896Invenstemnts_Greece_Implications.pdf"),
("mixaltop",1,"This project is about Banking Services and Community 
Law.","https://www.projectsonline.net/public/1025896Banking_Services_Community_Law.pdf"),
("eyangeo",1,"This project is about Single Europians
Loans.","https://www.github.net/publications/254815621Single_Europians_Loans.pdf"),
("chrisboul",2,"This project is about Financial Investigation of Accounting Statemants of Industrial Enterprise. This project is 
about Bussiness Communication between Organizations of Different 
Cultures","https://www.researchgate.net/publication/345874126Financial_Investigation.pdf, 
https://www.resrarchnet.net/publications/58458796Bussiness_Communications.pdf"),
("elengeo",1,"This project is about Employee Insurance.","https://startree.eu/images/publications/project/Employee_Insurance.pdf"),
("andrpi",1,"This project is about The Role of Multinantional Enterprises and the World Bank in the Developing 
World.","https://dialls2020.eu/project-publications/154872Andreas_Pikas_Multinational_Enterprises.pdf"),
("anastasila",1,"This project is about The Concept Role of the Leader in a 
Company.","https://www.projectsonline.net/public/1024755Anastasia_Laskaridi_Leader_Company.pdf"),
("sofialap",'1','This project is about Banking Services and Community 
Law.','https://www.projectsonline.net/public/102584Sofia_Lapari_Banking_Services.pdf"'),
("anastasiarep",'1','The project is about Invenstemnts in Germany and 
Impications.','https://www.projectsonline.net/public/1025896_Anastasia-Repopoulou_Germany_Investments.pdf'),
("evaggeliavotsi",'2','"This porject is about Accounting in Financial companies,This projet is about Jail 
Expenses.','https://www.projectsonline.net/public/1024587_Evaggelia_Votsi_Fiancial_Companies.pdf,https://dialls2020.eu
/project-publications/154125_Evaggelia_Votsi_Jail_Expenses.pdf'),
("ioannasake",'1','This project is about the concept of a Manager in a 
company.','https://www.worldprojectsonline.net/public/10236589Ioanna_Sakelaridi_Manager_in_a_company.pdf'),
("xristospap",'1','This project is about the World Economic 
Crisis.','https://www.onlineprojects/public/10236984_Xristos_Papagiannis_World_Economic_Crisis.pdf');
SELECT * FROM project;
/*LANGUAGES*/
INSERT INTO languages(employee,lang) VALUES 
("tonyzaf",'EN,GR'),
("mhtsakil",'EN,GR'),
("siliagk",'GR,EN,FR'),
("maroutsos",'GR,EN,FR,SP'),
("mixaltop",'GR,EN'),
("yiannisxA",'GR'),
("elenisar",'GR,EN'),
("eyangeo",'GR,FR,EN'),
("chrisboul",'GR,EN,FR'),
("andrpi",'GR,EN'),
("kwstakis93",'GR,EN'),
("elengeo",'GR,FR,EN'),
("anastasila",'GR,EN'),
("nikosgat",'GR,FR'),
("gianStam",'GR'),
("mariadok",'EN'),
("elenipapaxri",'EN'),
("georgeoik",'EN,FR'),
("basilikigeo",'EN'),
("dimitriskous",'EN,GR'),
("kwstasthom",'EN'),
("giannisadam",'EN'),
("athinamar",'EN'),
("nikosthan",'EN,GR'),
("georgiasaim",'EN,FR'),
("sofialap",'EN'),
("anastasiarep",'EN,FR'),
("evaggeliavotsi",'EN'),
("ioannasake",'EN,GR'),
("xristospap",'EN');
SELECT * FROM languages;
/*JOB*/
INSERT INTO job(job_id,potition,afm_company,base,salary,upload_date,deadline_date,evaluator) VALUES
(2001,"Assistant Accountant",'101235645',"Athens",'980','2021-01-04 12:05:45','2021-02-05 12:00:00',"yianstamel"),
(2002,"Accountant",'101879123','Thessaloniki','1350','2021-01-05 11:25:31','2021-03-23 23:00:00',"savvas94"),
(2003,"Assistant Accountant",'101879123','Thessaloniki','934','2021-01-12 15:02:25','2021-02-12 
23:00:00',"manoumanou99"),
(2004,"Assistant Manager",'101235645',"Athens",'1425','2021-01-23 12:00:00','2021-02-23 23:00:00',"nikolakis"),
(2005,"Accountant",'101235645',"Athens",'1225','2021-01-03 11:25:45','2021-03-03 23:00:00',"yianstamel"),
(2006,"Assistant Manager",'101879123','Thessaloniki','1956','2021-01-15 12:00:00','2021-02-15 
23:00:00',"manoumanou99"),
(2007,"Accountant",'101879123','Thessaloniki','1268','2021-01-23 23:00:00','2021-03-23 23:00:00',"manoumanou99"),
(2099,"Advisor",'101456789','Athens','1500','2021-01-02 13:10:04','2021-01-20 12:00:00',"marakioik"),
(2098,"Advisor",'101456789','Athens','1500','2021-01-02 14:10:04','2021-01-30 12:00:00',"marakioik"),
(2097,"Assistant Advisor",'101456789','Athens','1200','2021-01-05 09:10:04','2021-02-01 12:00:00',"marakioik"),
(2096,"Secretery",'101456789','Athens','1000','2021-01-04 10:10:04','2021-02-06 12:00:00',"kwstas96"),
(2095,"Assistant Manager",'101456789','Athens','2000','2021-01-09 15:10:04','2021-01-25 12:00:00',"kwstas96"),
(2094,"Advisor",'101879123','Thessaloniki','1500','2021-01-11 10:10:21','2021-01-30 12:00:00',"manoumanou99");
SELECT * FROM job;
#DELETE FROM job;
/*ANTIKEIMENA*/
INSERT INTO antikeimena(title,descreption,belongs_to) VALUES
("Accounting","Average knowledge of accounting for an Assistant Accountant or an averege accountant.","Accounting"),
("Accounting and Economics","Good knowledge of Accounting and Economics.","Accounting"),
("Economics and Bussiness","Very good knowlegde of Economics to help a bussiness flourish.","Economics"),
("Economics and Statistics","Perfect knowldge of Economics and Ststistcs","Economics"),
("Accounting and Financials","The perfect combinantion for an Accountant","Accounting"),
("Accounting and Bussiness","Very good knowledge of accounting to help a bussiness or keep the bookkeeping of a 
bussiness.","Accounting"),
('Financial Knowledge','Advanced','Financial'),
('Financial Knowledge Avarege','Avarege','Financial'),
('Computer Knowledge','Avarege','Computer'),
('Team Managment Experience','Advanced','Managment'),
('Negotiation Skills','Advanced','Managment'),
('Organaization Skills','Expirienced','Organaization'),
('Communication Skills','Advanced','Communication');
SELECT * FROM antikeimena;
/*NEEDS*/
INSERT INTO needs(job,antikeimena_title) VALUES
('2001',"Accounting"),
('2002',"Accounting and Financials"),
('2003',"Economics and Statistics"),
('2004',"Economics and Bussiness"),
('2005',"Accounting and Financials"),
('2006',"Accounting and Financials"),
('2007',"Economics and Bussiness"),
(2099,'Financial Knowledge'),
(2099,'Communication Skills'),
(2099,'Computer Knowledge'),
(2098,'Financial Knowledge'),
(2098,'Communication Skills'),
(2098,'Computer Knowledge'),
(2094,'Financial Knowledge'),
(2094,'Communication Skills'),
(2094,'Computer Knowledge'),
(2097,'Financial Knowledge Avarege'),
(2097,'Computer Knowledge'),
(2096,'Computer Knowledge'),
(2096,'Organaization Skills'),
(2095,'Financial Knowledge'),
(2095,'Negotiation Skills'),
(2095,'Team Managment Experience');
SELECT * FROM needs;
/*REQUEST_EVALUATION*/
INSERT INTO request_evaluation(empl_usrnm,jobid) VALUES
("basilikigeo",2095),
("dimitriskous",2095),
("kwstasthom",2095),
("georgiasaim",2095),
("basilikigeo",2098),
("giannisadam",2097),
("kwstasthom",2098),
("ioannasake",2094);
SELECT * FROM request_evaluation;
/*PROCESS1*/
INSERT INTO process_1(em_usrnm,id_empl,id_eva,jb_id,grade_1,comments_1) VALUES
("basilikigeo",1504,2301,2095,3,'Very good ibterview/Good bio/Years of experience.'),
("dimitriskous",1505,2301,2095,4,'Very good ibterview/Good bio/Years of experience'),
("kwstasthom",1506,2302,2095,3,'Good in total'),
("georgiasaim",1508,2302,2095,NULL,''),
("basilikigeo",1504,2302,2098,4,'Excellent bio/years of exp/talkative'),
("ioannasake",1514,2360,2094,4,'Outstanding behavior.Good bio'),
("giannisadam",1507,2302,2097,2,'Average in total'),
("kwstasthom",1506,2302,2098,2,'Average in total');
SELECT * FROM process_1;
/*PROCESS2*/
INSERT INTO process_2(id_manager,id_eval,usrnm_empl,id_employee,id_job,report,grade_2) VALUES
(1001,2301,"basilikigeo",1504,2095,'Exchellent in general',4),
(1001,2301,"dimitriskous",1505,2095,'Good employee',3),
(1001,2301,"kwstasthom",1506,2095,NULL,NULL),
(1001,2301,"georgiasaim",1508,2095,'Average in total',2),
(1002,2360,"ioannasake",1514,2094,'Exchellent and good skills',4),
(1001,2302,"giannisadam",1507,2097,'Average/not intersting',2),
(1001,2302,"kwstasthom",1506,2098,'Average employee not the best.',2),
(1001,2302,"basilikigeo",1504,2098,NULL,2);
SELECT * FROM process_2;
/*PROCESS3*/
INSERT INTO process_3(usrn_em,id_emplo,id_evalu,id_jb,grade_3) VALUES 
("basilikigeo",1504,2301,2095,NULL),
("dimitriskous",1505,2301,2095,NULL),
("kwstasthom",1506,2302,2095,1),
("georgiasaim",1508,2302,2095,1),
("ioannasake",1514,2360,2094,2),
("basilikigeo",1504,2302,2098,2),
("kwstasthom",1506,2302,2098,2),
("giannisadam",1507,2302,2097,NULL);
SELECT * FROM process_3;
/*EVALUATION_RESULT*/
INSERT INTO evaluation_result(Evid,empl_username,idjb,jb_position,rgrade_1,rgrade_2,rgrade_3,grade,comments) 
VALUES 
(2301,'basilikigeo',2095,"Assistant Manager",3,4,2,9,'Very good candidate for the position.'),
(2301,"dimitriskous",2095,"Assistant Manager",4,4,2,10,'Very good candidate for the position.'),
(2302,"kwstasthom",2095,"Assistant Manager",3,3,NULL,NULL,'Average candidate not the best but not the worst.'),
(2302,"georgiasaim",2095,"Assistant Manager",NULL,NULL,1,NULL,'Not the best candidate.'),
(2360,'ioannasake',2094,"Advisor",4,4,2,NULL,"Exchellent candidate for the position."),
(2302,"giannisadam",2097,"Assistant Advisor",2,2,NULL,NULL,NULL),
(2302,"kwstasthom",2098,"Advisor",2,2,2,NULL,'Average in general.'),
(2302,'basilikigeo',2098,"Advisor",4,2,NULL,NULL,NULL);
SELECT * FROM evaluation_result;
INSERT INTO evaluator_stats(sevaluatorid,sevaluator_username,avgrade) VALUES
(2359,"nikolakis",NULL),
(2360,"manoumanou99",NULL),
(2361,"yianstamel",NULL),
(2362,"savvas94",NULL),
(2301,"kwstas96",NULL),
(2302,"marakioik",NULL);
