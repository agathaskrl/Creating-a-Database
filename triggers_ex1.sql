• Τα πρώτα εννέα Triggers αφορούν τα job, employee και request_evaluation σε θέμα INSERT UPDATE 
και DELETE . Για κάθε ένα πίνακα δημιουργήσαμε 3 Triggers που το κάθε ένα έχει τις ενέργειες που 
προ-αναφέραμε. Με την χρήση του IF :
o Στο πίνακα job, δημιουργήσαμε τα triggers του, ώστε κάθε φορά που βάζουμε καινούργια 
δουλειά, ή κάνουμε ενημέρωση τον πίνακα ή διαγράφουμε κάποια δουλειά να εμφανίζει 
Success ή Fail, ανάλογα εάν αυτό που κάναμε πέτυχε ή απέτυχε. Έτσι θα ενημερώνεται ο 
πίνακας log με τις ενέργειες μας. 
o Στο πίνακα employee με την ίδια λογική πάλι, κάθε φορά που βάζουμε καινούργιο υπάλληλο, 
ή κάνουμε ενημέρωση τον πίνακα ή διαγράφουμε κάποιον υπάλληλο, να εμφανίζει Success ή 
Fail, ανάλογα εάν αυτό που κάναμε πέτυχε ή απέτυχε. Έτσι θα ενημερώνεται ο πίνακας log
με τις ενέργειες μας. 
o Στο πίνακα request_evaluation , δημιουργήσαμε τα triggers του, ώστε κάθε φορά που 
βάζουμε καινούργια αίτηση, ή κάνουμε ενημέρωση τον πίνακα ή διαγράφουμε κάποια 
αίτηση να εμφανίζει Success ή Fail, ανάλογα εάν αυτό που κάναμε πέτυχε ή απέτυχε. Έτσι 
θα ενημερώνεται ο πίνακας log με τις ενέργειες μας. 
/*FIRST 9 TRIGGERS OF EXERCISE 1*/
/*JOB*/
DROP TRIGGER IF EXISTS trig_log_jobin;
DELIMITER $
CREATE TRIGGER trig_log_jobin BEFORE INSERT ON job FOR EACH ROW
BEGIN
DECLARE datetrig1 DATETIME;
DECLARE succsestrig1 ENUM ('SUCCSED','FAILED');
IF new.job_id IS NOT NULL THEN 
SET succsestrig1='SUCCSED';
ELSE 
SET succsestrig1='FAILED';
END IF;
SET datetrig1=now();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
#ΤΟ USERNAME THA EINAI AUTO ME TO OPOIO THA KANOUME LOGIN STO APP,NOMIZW DEN 
MPOROUME NA TO GRAPSOUME MEXRI NA ARXISOUME TO GUI
('job',datetrig1,'INSERT',succsestrig1);
END$ 
DELIMITER ; 
SHOW TRIGGERS LIKE 'job';
DROP TRIGGER IF EXISTS trg_log_jobup; 
DELIMITER $ 
CREATE TRIGGER trig_log_jobup BEFORE UPDATE ON job FOR EACH ROW
BEGIN 
DECLARE datetrig2 DATETIME;
DECLARE succsestrig2 ENUM ('SUCCSED','FAILED');
IF old.job_id<>new.job_id OR old.afm_company<>new.afm_company OR old.upload_date<>new.upload_date THEN
SET new.job_id=old.job_id , new.afm_company=old.afm_company , new.upload_date=old.upload_date ;
END IF; 
IF new.potition=old.potition AND new.base=old.base AND new.salary=old.salary AND 
new.deadline_date=old.deadline_date AND new.evaluator=old.evaluator THEN
 SET succsestrig2='FAILED';
ELSE 
SET succsestrig2='SUCCSED';
END IF;
SET datetrig2=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('job',datetrig2,'UPDATE',succsestrig2);
END$ 
DELIMITER ;
SHOW TRIGGERS LIKE 'job'; 
DROP TRIGGER IF EXISTS trig_log_jobdel; 
DELIMITER $ 
CREATE TRIGGER trig_log_jobdel AFTER DELETE ON job FOR EACH ROW 
BEGIN 
DECLARE datetrig3 DATETIME;
DECLARE succsestrig3 ENUM ('SUCCSED','FAILED');
IF old.job_id IS NOT NULL THEN 
SET succsestrig3='SUCCSED';
ELSE
SET succsestrig3='FAILED';
END IF;
SET datetrig3=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('job',datetrig3,'DELETE',succsestrig3);
END$ 
DELIMITER ; 
SHOW TRIGGERS LIKE 'job'; 
/*EMPLOYEE*/
DROP TRIGGER IF EXISTS trig_log_emplin;
DELIMITER $ 
CREATE TRIGGER trig_log_emplin AFTER INSERT ON employee FOR EACH ROW 
BEGIN 
DECLARE datetrig4 DATETIME;
DECLARE succsestrig4 ENUM ('SUCCSED','FAILED');
IF new.empl_id IS NOT NULL THEN 
SET succsestrig4='SUCCSED';
ELSE 
SET succsestrig4 ='FAILED';
END IF;
SET datetrig4=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('employee',datetrig4,'INSERT',succsestrig4);
END$ 
DELIMITER ;
SHOW TRIGGERS LIKE 'employee'; 
DROP TRIGGER IF EXISTS trig_log_emplup;
DELIMITER $ 
CREATE TRIGGER trig_log_emplup BEFORE UPDATE ON employee FOR EACH ROW 
BEGIN 
DECLARE datetrig5 DATETIME;
DECLARE succsestrig5 ENUM ('SUCCSED','FAILED');
IF new.employee_username<>old.employee_username OR new.empl_id<>old.empl_id OR new.cmp_afm<>old.cmp_afm 
THEN 
SET new.employee_username=old.employee_username , new.empl_id=old.empl_id, new.cmp_afm=old.cmp_afm;
END IF;
IF new.expe_years=old.expe_years AND new.bio=old.bio AND new.sistatikes=old.sistatikes AND 
new.certificates=old.certificates AND new.awards=old.awards THEN
SET succsestrig5='FAILED';
ELSE 
SET succsestrig5='SUCCSED';
END IF;
SET datetrig5=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('employee',datetrig5,'UPDATE',succsestrig5);
END$ 
DELIMITER ;
SHOW TRIGGERS LIKE 'employee';
DROP TRIGGER IF EXISTS trig_log_empldel;
DELIMITER $ 
CREATE TRIGGER trig_log_empldel BEFORE DELETE ON employee FOR EACH ROW 
BEGIN 
DECLARE datetrig6 DATETIME;
DECLARE succsestrig6 ENUM ('SUCCSED','FAILED');
IF old.empl_id IS NOT NULL THEN 
SET succsestrig6='SUCCSED';
ELSE
SET succsestrig6='FAILED';
END IF;
SET datetrig6=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('employee',datetrig6,'DELETE',succsestrig6);
END$ 
DELIMITER ;
SHOW TRIGGERS LIKE 'employee';
/*REQUEST EVALUATION*/
DROP TRIGGER IF EXISTS trig_log_reqin;
DELIMITER $ 
CREATE TRIGGER trig_log_reqin BEFORE INSERT ON request_evaluation FOR EACH ROW 
BEGIN 
DECLARE datetrig7 DATETIME;
DECLARE succsestrig7 ENUM ('SUCCSED','FAILED');
IF new.empl_usrnm is not null and new.jobid is not null then
SET succsestrig7='SUCCSED' ;
ELSE
SET succsestrig7='FAILED' ;
END IF;
SET datetrig7=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('request_evaluation',datetrig7,'INSERT',succsestrig7);
END$ 
DELIMITER ; 
SHOW TRIGGERS LIKE 'request_evaluation';
DROP TRIGGER IF EXISTS trig_log_requp;
DELIMITER $ 
CREATE TRIGGER trig_log_requp BEFORE UPDATE ON request_evaluation FOR EACH ROW 
BEGIN 
DECLARE datetrig8 DATETIME;
DECLARE succsestrig8 ENUM ('SUCCSED','FAILED');
IF new.empl_usrnm<>old.empl_usrnm THEN
SET new.empl_usrnm=old.empl_usrnm;
END IF;
IF new.jobid=old.jobid THEN 
SET succsestrig8='FAILED' ;
ELSE 
SET succsestrig8='SUCCSED';
END IF; 
SET datetrig8=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('request_evaluation',datetrig8,'UPDATE',succsestrig8);
END$
DELIMITER ; 
DROP TRIGGER IF EXISTS trig_log_reqdel;
DELIMITER $ 
CREATE TRIGGER trig_log_reqdel BEFORE DELETE ON request_evaluation FOR EACH ROW 
BEGIN 
DECLARE datetrig9 DATETIME;
DECLARE succsestrig9 ENUM ('SUCCSED','FAILED');
SET succsestrig9='SUCCSED';
SET datetrig9=NOW();
INSERT INTO log (table_edited,date_of_action,resault_of_action,result_succses) VALUES
('request_evaluation',datetrig9,'DELETE',succsestrig9);
END$ 
DELIMITER ;
