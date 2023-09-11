/* Τρίτο procedure, στο οποίο δίνουμε το ID μίας δουλείας και μας εμφανίζει τις οριστικοποιημένες αξιολογήσεις 
της δουλειάς, αλλιώς σε φθίνουσα σειρά, αλλιώς να εμφανίζει πόσες εκκρεμούν. Εδώ σκεφτήκαμε, πως και εδώ 
θα χρησιμοποιήσουμε δείκτη (cursor) και βρόχο. Ο δείκτης θα δείχνει μέσα στο βρόχο στο ID της δουλειάς και στο 
τελικό αποτέλεσμα της evaluation_result . Με συνθήκη IF δείχνουμε αν ο τελικός βαθμός είναι Null,εάν είναι 
NULL, τότε προσθέτουμε σε έναν counter 1(αυτές είναι οι μη οριστικοποιημένες αξιολογήσεις). Έπειτα, με 
συνθήκη IF, ελέγχουμε αν υπάρχουν αξιολογήσεις, αν δεν υπάρχουν εμφανίζεται το κατάλληλο μήνυμα, αλλιώς 
αν υπάρχουν αξιολογήσεις, τότε εμφανίζει τις τελικές αξιολογήσεις σε φθίνουσα σειρά και τις μη τελικές 
αξιολογήσεις σε φθίνουσα σειρά και με την χρήση μίας μεταβλητής υπολογίζουμε πόσες ακόμη μένουν για 
αξιολόγηση. Αλλιώς εμφανίζει τις τελικές αξιολογήσεις, εφόσον καμία αξιολόγηση από τη συγκεκριμένη δουλειά 
δεν είναι υπό επεξεργασία, σε φθίνουσα σειρά . */

/*THIRD*/
DROP PROCEDURE IF EXISTS valid_requests;
DELIMITER $ 
CREATE PROCEDURE valid_requests(IN id_j INT(4))
BEGIN
// Δήλωση μεταβλητών για τα ID της δουλειάς και το αποτέλεσμα.
DECLARE JOB_IDD3 INT(4);
DECLARE EJOB_IDD3 INT(4);
DECLARE GRESULT3 INT(4);
DECLARE not_found3 INT; Δήλωση μεταβλητής για συνθήκη τέλους κέρσορα.
DECLARE counter int DEFAULT 0;
DECLARE MISSNIG INT(4);
DECLARE gcursor CURSOR FOR SELECT idjb,grade FROM evaluation_result; Δηλώνουμε τον δείκτη μας, στα idjb,grade από
τον πίνακα evaluation_result.
DECLARE CONTINUE HANDLER FOR NOT FOUND SET not_found3=1;
SELECT id_j INTO JOB_IDD3;
OPEN gcursor;
loopy3 : LOOP
FETCH gcursor INTO EJOB_IDD3,GRESULT3;
 IF not_found3 THEN 
LEAVE loopy3;
END IF;
IF JOB_IDD3=EJOB_IDD3 AND GRESULT3 IS NULL THEN
SET counter = counter + 1 ;
END IF;
END LOOP;
CLOSE gcursor;
IF (SELECT COUNT(*) FROM request_evaluation WHERE JOB_IDD3=jobid )=0 THEN
 SELECT 'NO AVAILABLE APLICATIONS';
 ELSEIF counter>0 THEN 
 SELECT * FROM evaluation_result WHERE idjb=JOB_IDD3 AND grade is not null ORDER BY (grade) DESC;
SELECT COUNT(*) FROM evaluation_result WHERE idjb=JOB_IDD3 AND grade is null INTO MISSNIG;
 SELECT 'EVALUATION IN PROGRESS, STILL' , MISSNIG , 'MISSING EVALUATIONS';
ELSE 
SELECT 'FINALL RESULTS';
 SELECT * FROM evaluation_result WHERE idjb=JOB_IDD3 ORDER BY (grade) DESC;
END IF;
END$
DELIMITER ;
