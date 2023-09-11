/*Πρώτο Procedure, στο οποίο πρέπει να δίνουμε το όνομα και το επώνυμο ενός υπαλλήλου και να βλέπουμε 
ποιες αξιολογήσεις έχει κάνει και αν και ποιες έχουν αποτέλεσμα τελικό αξιολόγησης, αλλιώς να εμφανίζει το 
κατάλληλο μήνυμα. Εδώ σκεφτήκαμε, πως θα χρειαστεί ένας cursor δηλαδή ένας δείκτης για να πηγαίνει στα 
στοιχεία του πίνακα evaluation_result και να δείχνει εάν υπάρχει βαθμός και δεν είναι NULL, ώστε να εμφανίζει 
τις τελικές αξιολογήσεις. Με την χρήση ενός LOOP δηλαδή ενός βρόχου, βάζουμε τον δείκτη να πηγαίνει και να 
δείχνει πολλές φορές ώστε να μην προσπερνά κανένα IF (συνθήκη), διότι θέλουμε να εμφανίζει κι το μήνυμα 
ότι υπάρχει κι αξιολόγηση που να μην έχει φτάσει την τελική φάση.  */



/*FIRST*/
DROP PROCEDURE IF EXISTS requests; 
DELIMITER $ 
CREATE PROCEDURE requests(IN onoma VARCHAR(25), IN epitheto VARCHAR(25))
BEGIN 
DECLARE usrnm varchar(30) ; Δήλωση μεταβλητής, για να βρούμε το username του υπαλλήλου.
DECLARE evusername VARCHAR(30); Δήλωση μεταβλητής για να βρούμε το username του evaluator.
DECLARE GResult INT(4); Δήλωση μεταβλητής για να βρούμε το αποτέλεσμα της τελικής αξιολόγησης.
DECLARE done INT DEFAULT 0 ; Δήλωση μεταβλητής για συνθήκη τέλους κέρσορα.
DECLARE noresultcurs CURSOR FOR SELECT grade,empl_username FROM evaluation_result; Δηλώνουμε τον δείκτη μας, 
ώστε να δείχνει στον βαθμό και το username από το evaluation_result .
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;
SELECT username INTO usrnm FROM `user` WHERE name=onoma AND surname=epitheto; Για όταν δίνουμε το όνομα
και το επίθετο , κατευθείαν να βρίσκει ότι το username του χρήστη/υπαλλήλου .
SELECT * FROM request_evaluation WHERE empl_usrnm=usrnm; Να βρίσκει τις αξιολογήσεις του συγκεκριμένου
υπαλλήλου. 
OPEN noresultcurs; Έπειτα ανοίγουμε τον cursor και εκτελεί τα αναφερόμενα .
notfinished_loop: LOOP
FETCH noresultcurs INTO GResult,evusername;
IF done THEN 
LEAVE notfinished_loop;
END IF;
IF GResult IS NOT NULL AND evusername=usrnm THEN Συνθήκη για το αν ο τελικός βαθμός δεν είναι 
NULL τότε να εκτυπώνει την τελική αξιολόγηση και το username του αξιολογητή, αλλιώς να εκτυπώνει ότι η εξιολόγηση 
βρίσκεται σε εξέλιξη(δηλαδή το κατάλληλο μήνυμα).Και να εκτυπώνει τους βαθμούς μέχρι ώρας δηλαδή grade_1 
,grade_2, grade_3 για να βλέπουμε μέχρι που έχει αξιολογηθεί ο συγκεκριμένος υπάλληλος.
SELECT * FROM evaluation_result WHERE empl_username=usrnm and grade is not null; 
SELECT name,surname FROM user INNER JOIN evaluator ON evaluator_username=username 
INNER JOIN evaluation_result ON evaluator_id=Evid WHERE empl_username=usrnm; ;
ELSEIF GResult IS NULL AND evusername=usrnm THEN 
SELECT'REQUEST IN PROGRESS';
 SELECT idjb,rgrade_1,rgrade_2, rgrade_3,comments FROM evaluation_result WHERE empl_username=usrnm AND 
grade IS NULL;
END IF;
END LOOP;
CLOSE noresultcurs;
END$
DELIMITER ;
