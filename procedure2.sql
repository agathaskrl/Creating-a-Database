/* Δεύτερο Procedure, στο οποίο πρέπει να δίνουμε το ID της δουλειάς στην οποία ο υπάλληλος έχει κάνει αίτηση κι 
το ID του αξιολογητή, ώστε να μπορούμε να περάσουμε τον τελικό βαθμός προσθέτοντας τους grade_1, grade_2, 
grade_3 και να βγάζει το κατάλληλο μήνυμα ή να εμφανίζει ότι δεν έχει ολοκληρωθεί η αξιολόγηση. Εδώ 
σκεφτήκαμε πως θα πρέπει να χρησιμοποιήσουμε δείκτη και βρόχο πάλι μαζί για να μπορεί πηγαίνει στα 
στοιχεία Evid,idjb,rgrade_1,rgrade_2, rgrade_3, grade,empl_username του πίνακα evaluation_result και να 
δείχνει εάν οι βαθμοί δεν είναι NULL, τότε με την χρήση της IF(συνθήκη) να κάνει UPDATE (ανανέωση) το 
πίνακα evaluation_result και να προσθέτει τους τελικούς βαθμούς στο grade. Και να εκτυπώνει τα το ID της 
δουλειάς, το ID αξιολογητή και το username του υπαλλήλου. Εάν κάποιος από τους τρεις βαθμούς είναι NULL
τότε εκτυπώνει το κατάλληλο μήνυμα. */

/*SECOND*/
DROP PROCEDURE IF EXISTS complition_check; 
DELIMITER $ 
CREATE PROCEDURE complition_check(IN job_idP2 INT(4), IN evaluator_idP2 INT(4))
BEGIN 
//Τρία πρώτα DECLARE είναι δήλωση μεταβλητών για τα grade_1, grade_2, grade_3 τα οποία παίρνει από τον πίνακα
evaluation_result σαν rgarde_1, rgrade_2 , rgarde_3 .
DECLARE G12 INT(4);
DECLARE G22 INT(4);
DECLARE G32 INT(4);
DECLARE GResult2 INT(4); Δήλωση μεταβλητής για τον τελικό βαθμό.
DECLARE done2 INT DEFAULT 0 ; Δήλωση μεταβλητής για τον δείκτη πότε πρέπει να τελειώσει.
// Δήλωση μεταβλητών για το ID της δουλειάς και του ID αξιολογητή.
DECLARE JOB_IDD2 INT(4);
DECLARE EJOB_IDD2 INT(4);
DECLARE EEV_IDDD2 INT(4);
DECLARE EV_IDD2 INT(4) ;
DECLARE EUSRNAME2 VARCHAR(30); Δήλωση μεταβλητής για το ψευδώνυμο του υπαλλήλου.
DECLARE finalizingcursor CURSOR FOR SELECT Evid,idjb,rgrade_1,rgrade_2, rgrade_3, grade,empl_username FROM 
evaluation_result; Δηλώνουμε τον δείκτη μας, για τα Evid,idjb,rgrade_1,rgrade_2, rgrade_3, grade,empl_username αό τον
πίνακα evaluation_result.
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done2=1;
SELECT job_idP2 INTO EJOB_IDD2; Βάζουμε το job_idP2 από το IN στο declare που κάναμε πιο πάνω.
SELECT evaluator_idP2 INTO EEV_IDDD2; Βάζουμε το evaluator_idP2 από το IN στο declare που κάναμε πιο πάνω.
OPEN finalizingcursor;
loopi : LOOP
 FETCH finalizingcursor INTO EV_IDD2,JOB_IDD2,G12,G22,G32,GResult2,EUSRNAME2;
IF done2 THEN 
LEAVE loopi;
 
END IF;
Η συνθήκη που αναφέραμε πιο πάνω.
 IF G12 IS NOT NULL AND G22 IS NOT NULL AND G32 IS NOT NULL AND GResult2 IS NULL AND EJOB_IDD2=JOB_IDD2 
AND EEV_IDDD2=EV_IDD2 THEN 
UPDATE evaluation_result SET grade = G12 + G22 + G32 WHERE idjb=JOB_IDD2 AND 
Evid=EV_IDD2 AND empl_username=EUSRNAME2;
 SELECT * FROM evaluation_result WHERE idjb=JOB_IDD2 AND Evid=EV_IDD2 AND empl_username=EUSRNAME2;
END IF;
END LOOP;
CLOSE finalizingcursor;
SELECT 'THE FINISHED EVALUATIONS ARE FINAL OR NO FINISHED EVALUATION FOUND';
END$
DELIMITER ;
