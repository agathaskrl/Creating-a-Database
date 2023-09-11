DROP DATABASE IF EXISTS StaffEvaluation; Αν υπάρχει η βάση ήδη κάνει DROP την υπάρχον Βάση.
CREATE DATABASE StaffEvaluation; 
USE StaffEvaluation; 
CREATE TABLE `user`
(
username VARCHAR(30) NOT NULL,
`password` VARCHAR(20) NOT NULL,
`name` VARCHAR(25) NOT NULL,
surname VARCHAR(25) NOT NULL,
reg_date DATETIME NOT NULL,
email VARCHAR(50) NOT NULL,
PRIMARY KEY (username))engine=InnoDB; Βάζουμε πρωτεύον κλειδί το username.
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE company
(
AFM CHAR(9) NOT NULL,
DOY VARCHAR(15) NOT NULL,
phone BIGINT(12) NOT NULL,
street VARCHAR(35) NOT NULL,
street_number TINYINT(4) NOT NULL,
city VARCHAR(15) NOT NULL,
country VARCHAR(15) NOT NULL,
company_name VARCHAR(35) NOT NULL,
PRIMARY KEY (AFM,company_name), Βάζουμε πρωτεύων κλειδί το ΑΦΜ και το όνομα της εταιρείας.
KEY(city) Θέτουμε σαν απλό κλειδί την πόλη της εταιρείας, ώστε έπειτα να μπορεί να κάνει Constraint με την δουλειά.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE employee
(
employee_username VARCHAR(30) NOT NULL, 
empl_id INT(4) NOT NULL auto_increment , (extra)Βάζουμε για κάθε υπάλληλο ένα μοναδικό ID για το σύστημα μας , το 
οποίο με κάθε νέο υπάλληλο θα αυξάνετε κατά 1 αυτόματα .
cmp_afm CHAR(9) NOT NULL, (extra)Με το cmp_afm θέτουμε το ΑΦΜ της εταιρείας που δουλεύει ο κάθε υπάλληλος,
expe_years TINYINT(4) NOT NULL,
bio TEXT NOT NULL ,
sistatikes VARCHAR(500) ,
certificates VARCHAR(35), 
awards VARCHAR(150),
manager_report VARCHAR(500), (extra)Βάζουμε ένα report στον employee, το οποίο μέσα στο GUI θα το επεξεργάζεται ο
manager για να συνδεθεί με το process_2(αξιολόγηση με βάση το report του manager).
PRIMARY KEY (employee_username), Πρωτεύον κλειδί είναι το όνομα του υπαλλήλου.
UNIQUE KEY(empl_id), Μοναδικό κλειδί είναι το ID του. Δεν πρέπει δύο υπάλληλοι να έχουν ίδιο ID.
KEY(manager_report), Θέτουμε σαν κλειδί το manager_report ώστε έπειτα να κάνει Constraint με το process_2 στο report.
CONSTRAINT EMPL_USER FOREIGN KEY (employee_username) REFERENCES `user`(username) ON DELETE CASCADE ON
UPDATE CASCADE , Κάνουμε CONSTRAINT στο employee_username από τον user (username), ώστε να αναγνωρίζει το
username από τον χρήστη.
CONSTRAINT COMP_AFM FOREIGN KEY (cmp_afm) REFERENCES company(AFM) ON DELETE CASCADE ON UPDATE CASCADE 
Κάνουμε CONSTRAINT στο cmp_afm από το company (AFM), ώστε να αναγνωρίζει το ΑΦΜ από τον πίνακα εταιρεία. 
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα. Αλλά θεωρήσαμε ότι τα sistatikes, 
certificates, awards, manager_report μπορούν να είναι NULL, καθώς κάποιος εργαζόμενος μπορεί να μην έχει κάποιο από 
αυτά τα πεδία.
CREATE TABLE evaluator
(
evaluator_id INT(4) NOT NULL AUTO_INCREMENT, (extra)Βάζουμε μοναδικό ID σε κάθε evaluator για να αναγνωρίζει το 
σύστημα μας, το οποίο με κάθε εισαγωγή καινούργιου evaluator θα αυξάνετε αυτόματα κατά 1.
evaluator_username VARCHAR(30) NOT NULL,
evaluator_company CHAR(9) NOT NULL, Ως evaluator_company θέσαμε το ΑΦΜ κάθε εταιρίας που ανήκει ο κάθε 
evaluator(ουσιαστικά είναι το firm απλά αλλάξαμε το όνομα για μας βοηθήσει).
years_of_exp TINYINT(4) NOT NULL,
PRIMARY KEY (evaluator_username), Πρωτεύον κλειδί θέτουμε το evaluator_username. 
UNIQUE KEY(evaluator_id), Όπως αναφέραμε θέτουμε μοναδικό κλειδί το ID του evaluator για να κάνει Constraint με 
άλλους πίνακες. 
CONSTRAINT EVALUATOR_USERNAME FOREIGN KEY (evaluator_username) REFERENCES `user`(username) ON DELETE 
CASCADE ON UPDATE CASCADE , Κάνουμε Constraint το evaluator_username του evaluator με το username από τον πίνακα
user.
CONSTRAINT EVALUATOR_COMPANY FOREIGN KEY (evaluator_company) REFERENCES company(AFM) ON DELETE CASCADE 
ON UPDATE CASCADE Κάνουμε Constraint το evaluator_company με το company AFM ώστε να αναγνωρίζει το ΑΦΜ της
εταιρίας από τον πίνακα εταιρία .
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα
CREATE TABLE job
(
job_id INT(4) NOT NULL AUTO_INCREMENT, Θέτουμε ID μοναδικό για κάθε δουλειά το οποίο με κάθε νέα εισαγωγή νέας 
δουλειάς θα αυξάνετε αυτόματα κατά 1.
potition VARCHAR(40) NOT NULL, Ουσιαστικά το όνομα της θέσης εργασίας .
afm_company CHAR(9) NOT NULL, (extra)Ως afm_company θέσαμε το ΑΦΜ κάθε εταιρίας που ανήκει η κάθε δουλειά, για 
να βλέπουμε που ανήκει κάθε δουλειά σε ποια εταιρεία.
base VARCHAR(15) NOT NULL, Θεωρήσαμε σαν base την πόλη που βρίσκεται κάθε δουλειά(ουσιαστικά είναι η edra απλά 
αλλάξαμε το όνομα για λόγους βοηθητικούς).
salary FLOAT(6,1) NOT NULL,
upload_date DATETIME,
deadline_date DATETIME,
evaluator VARCHAR(12) NOT NULL, Ποιος evaluator θα αξιολογήσει τους υποψήφιους για την συγκεκριμένη δουλειά.
PRIMARY KEY (job_id), Θέτουμε ως πρωτεύον κλειδί το ID κάθε δουλειάς.
CONSTRAINT JOB_AFM FOREIGN KEY(afm_company) REFERENCES company(AFM) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint afm_company με το AFM από τον πίνακα company, ώστε να ώστε να αναγνωρίζει το ΑΦΜ 
της εταιρίας από τον πίνακα εταιρία .
CONSTRAINT JOB_CITY FOREIGN KEY (base) REFERENCES company(city) ON DELETE CASCADE ON UPDATE CASCADE,
Κάνουμε Constraint το base στο city από τον πίνακα company, ώστε να αναγνωρίζει την πόλη στην οποία ανήκει η δουλειά 
που ανακοινώνεται δηλαδή είναι η πόλη της εταιρείας στην οποία ανήκει.
CONSTRAINT EVALUATOR_IN_CHARGE FOREIGN KEY (evaluator) REFERENCES evaluator(evaluator_username) ON DELETE
CASCADE ON UPDATE CASCADE Κάνουμε Constraint το evaluator στο evaluator_username από τον πίνακα evaluator, ώστε 
να αναγνωρίζει το username του evaluator ο οποίος έχει αναλάβει την αξιολόγηση της συγκεκριμένης δουλειάς.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE antikeimena
(
title VARCHAR(36) NOT NULL,
descreption TINYTEXT,
belongs_to VARCHAR(36) NOT NULL,
PRIMARY KEY (title) Βάζουμε πρωτεύον κλειδί τον τίτλο όπως μας έχει δωθεί.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα. Το description δεν είναι απαραίτητο να 
γεμίσει. 
CREATE TABLE needs
(
job INT(4) NOT NULL, Ουσιαστικά εδώ έχουμε το ID της δουλειάς που θα κάνουμε Constraint για να το αναγνωρίζει από το 
πίνακα job.
antikeimena_title VARCHAR(36) NOT NULL,
CONSTRAINT JOB_IN_NEED FOREIGN KEY (job) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE,
Κάνουμε Constraint το job στο job_id από το job πίνακα ,δηλαδή για να πάρουμε το job_id από τον πίνακα job.
CONSTRAINT ANTIKEIMENO_JOB FOREIGN KEY (antikeimena_title) REFERENCES antikeimena(title) ON DELETE CASCADE ON 
UPDATE CASCADE Κάνουμε Constraint το antikeimena_title από τον πίνακα antikeiman στο title, για να παίρνει τον τίτλο
του αντικειμένου,δηλαδή από το needs, όπου ανήκει η κάθε δουλειά.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE degree (
titlos VARCHAR(50) NOT NULL,
idryma VARCHAR (40) NOT NULL,
bathmida ENUM ('LYKEIO', 'UNIV', 'MASTER', 'PHD'),
PRIMARY KEY (titlos, idryma) Θέτουμε ως πρωτεύον κλειδί τα titlos,idryma.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE has_degree (
degr_title VARCHAR(50) NOT NULL,
degr_idryma VARCHAR (40) NOT NULL,
empl_usrname VARCHAR(30) NOT NULL,
etos YEAR(4) NOT NULL,
grade FLOAT(3,1) NOT NULL,
PRIMARY KEY (degr_title, degr_idryma, empl_usrname), Θέτουμε ως πρωτεύοντα κλειδιά τα: degr_title, degr_idryma, 
empl_usrname.
CONSTRAINT HAS_DEGR FOREIGN KEY (degr_title, degr_idryma) REFERENCES degree(titlos, idryma) ON DELETE CASCADE 
ON UPDATE CASCADE, Κάνουμε Constraint τα degr_title, degr_idryma στα titlos, idryma από τον πίνακα degree, ώστε να
παίρνει τον τίτλο του πτυχίου και το ίδρυμα από το οποίο έχει αποφοιτήσει ο κάθε υπάλληλος.
CONSTRAINT HAS_EMPL FOREIGN KEY (empl_usrname) REFERENCES employee(employee_username) ON DELETE CASCADE 
ON UPDATE CASCADE Κάνουμε Constraint το empl_username στο employee-username από τον πίνακα employee,ώστε το
has_degree να παίρνει το όνομα του κάθε υπαλλήλου.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE project(
empl VARCHAR(30) NOT NULL,
num TINYINT(4) NOT NULL,
descr TEXT NOT NULL,
url VARCHAR(500) NOT NULL,
PRIMARY KEY (empl, num),
CONSTRAINT PROJ_EMPL FOREIGN KEY (empl) REFERENCES employee(employee_username) ON DELETE CASCADE ON 
UPDATE CASCADE Κάνουμε Constraint το empl στο employee_username από τον πίνακα employee,ώστε το κάθε project να
έχει το όνομα του υπαλλήλου από τον οποίο έχει υλοποιηθεί.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE languages(
employee VARCHAR(30) NOT NULL,
lang SET('EN', 'FR', 'SP', 'GR'),
PRIMARY KEY (employee,lang), Θέτουμε ως πρωτεύον κλειδί τα employee και lang όπως μας έχει δωθεί. 
CONSTRAINT EMPL_LANG FOREIGN KEY (employee) REFERENCES employee(employee_username) ON DELETE CASCADE ON 
UPDATE CASCADE
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE administrator EXTRA πίνακας, ο οποίος είναι για τον admin του συστήματος .
(
admin_username VARCHAR(30) NOT NULL, Βάζουμε το username του admin.
PRIMARY KEY(admin_username), Θέτουμε ότι είναι πρωτεύον κελιδί το admin_username. 
CONSTRAINT ADMIN_USRNM FOREIGN KEY (admin_username) REFERENCES `user`(username) ON DELETE CASCADE ON 
UPDATE CASCADE Κάνουμε Constraint to admin_username στο username από τον πίνακα user,ώστε να προέρχεται από
εκείνο τον πίνακα. 
)engine=InnoDB; 
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE manager
(
manager_username VARCHAR(30) NOT NULL,
company_exp TINYINT(4) NOT NULL,
manager_id INT(4) NOT NULL AUTO_INCREMENT, (extra)Θέτουμε ότι ο κάθε μάνατζερ έχει ένα μοναδικό ID το οποίο με 
κάθε νέα εισαγωγή καινούργιου μάνατζερ θα αυξάνετε αυτόματα, από το προηγούμενο ID κατά 1. 
manager_company CHAR(9) NOT NULL,
PRIMARY KEY (manager_username), Θέτουμε ως πρωτεύον κλειδί το manager_username όπως μας έχει δωθεί.
UNIQUE KEY(manager_id), Θέτουμε το manager_id μοναδικό κλειδί καθώς κάθε μάνατζερ έχει μοναδικό ID.
CONSTRAINT MNGER_USRNNM FOREIGN KEY (manager_username) REFERENCES `user`(username) ON DELETE CASCADE
ON UPDATE CASCADE, Κάνουμε Constraint το manager_username στο username από τον πίνακα user,ώστε κάθε 
ψευδώνυμο των μάνατζερ να το δείχνει από τον πίνακα user.
CONSTRAINT MNGER_COMPANY FOREIGN KEY (manager_company) REFERENCES company(AFM) ON DELETE CASCADE ON 
UPDATE CASCADE , Κάνουμε Constraint το manager_company στο AFM από τον πίνακα company,ώστε να βλέπουμε σε
ποια εταιρεία ανήκει ο κάθε μάνατζερ.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE request_evaluation
(
empl_usrnm VARCHAR(30) NOT NULL, 
jobid INT(4) NOT NULL, 
CONSTRAINT JOB_ID FOREIGN KEY(jobid) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE,
Κάνουμε Constraint το jobid στο job_id από τον πίνακα job,ώστε να υπάρχει σε κάθε νέα αίτηση αξιολόγησης το μοναδικό 
ID κάθε δουλειάς.
CONSTRAINT EMPL_EVAL FOREIGN KEY (empl_usrnm) REFERENCES employee(employee_username) ON DELETE CASCADE 
ON UPDATE CASCADE
Κάνουμε Constraint το empl_usrnm στο employee_username από τον πίνακα employee,ώστε κάθε αίτηση να περιέχει το 
ψευδώνυμο κάθε υπαλλήλου που κάνει αίτηση.
)engine=InnoDB;
Βάζουμε NOT NULL, καθώς αυτά τα στοιχεία θεωρούμε ότι είναι απαιτούμενα.
CREATE TABLE process_1 EXTRA πίνακας για την πρώτη φάση αξιολόγησης δηλαδή την συνέντευξη κάθε υποψηφίου.
(
em_usrnm VARCHAR(30) , Εδώ έχουμε το username κάθε υποψηφίου(employee) που έχει κάνει αίτηση. 
id_empl INT(4) , Το ID κάθε υποψηφίου(employee) που έχει κάνει αίτηση αξιολόγησης .
id_eva INT(4) , Το ID κάθε evaluator(αξιολογητής) που έχει αναλάβει την αξιολόγηση. 
jb_id INT(4) ,Το ΙD κάθε δουλειάς στην οποία έχουν κάνει αίτηση αξιολόγησης, οι υποψήφιοι-υπάλληλοι.
grade_1 ENUM('0','1','2','3','4'), Ο βαθμός της πρώτης φάσης(συνέντευξη) που μπορεί να είναι από 0-4.
comments_1 TEXT, Σχόλια του αξιολογητή. 
KEY (grade_1), Θέτουμε ως κλειδί το βαθμό της πρώτης φάσης αξιολόγησης, grade_1. 
CONSTRAINT PRO_USRNM FOREIGN KEY(em_usrnm) REFERENCES employee(employee_username) ON DELETE CASCADE
ON UPDATE CASCADE, Κάνουμε Constraint το em_usrnm στο employee_username από τον πίνακα employee, ώστε η κάθε 
συνέντευξη να έχει το username του υπαλλήλου/υποψηφίου.
CONSTRAINT PROC_JBID FOREIGN KEY(jb_id) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE, , 
Κάνουμε Constraint το jb_id στο job_id από τον πίνακα job,ώστε να έχει το μοναδικό ID της κάθε δουλειάς στην οποία
έγινε η πρώτη φάση της αξιολόγησης.
CONSTRAINT ID_EMPLO FOREIGN KEY (id_empl) REFERENCES employee(empl_id) ON DELETE CASCADE ON UPDATE
CASCADE , Κάνουμε Constraint το id_empl στο empl_id από τον πίανακα employee,ώστε να έχει το μοναδικό ID του κάθε 
υποψήφιου/υπαλλήλου για την πρώτη φάση της αξιολόγησης.
)engine=InnoDB;
ΔΕΝ ΒΆΖΟΥΜΕ NOT NULL ΚΑΘΩΣ ΜΠΟΡΕΙ ΝΑ ΕΙΝΑΙ ΚΕΝΑ ΤΑ ΣΤΟΙΧΕΙΑ . 
CREATE TABLE process_2 EXTRA πίνακας για την δεύτερη φάση της αξιολόγησης δηλαδή την αξιολόγηση με βάση του 
report του manager για τον κάθε υποψήφιο/υπάλληλο. 
(
id_manager INT(4) , Το ID κάθε μάνατζερ που ανήκει στην εταιρεία που έχει γίνει η αίτηση.
id_eval INT(4) , Το ID κάθε evaluator(αξιολογητής) που έχει αναλάβει την αξιολόγηση . 
usrnm_empl VARCHAR(30) , Εδώ έχουμε το username κάθε υποψηφίου(employee) που έχει κάνει αίτηση αξιολόγησης. 
id_employee INT(4) , Το ID κάθε υποψηφίου(employee) που έχει κάνει αίτηση αξιολόγησης.
id_job INT(4) , Το ΙD κάθε δουλειάς στην οποία έχουν κάνει αίτηση αξιολόγησης, οι υποψήφιοι-υπάλληλοι.
anafora TEXT, Η αναφορά του manager εταιρείας, όπου εργάζεται ο κάθε υπάλληλος. 
grade_2 ENUM('0','1','2','3','4'), Ο βαθμός της δεύτερης φάσης(συνέντευξη) που μπορεί να είναι από 0-4
KEY (grade_2), Θέτουμε ως κλειδί το βαθμό της δεύτερης φάσης αξιολόγησης, grade_2
CONSTRAINT ID_MANA FOREIGN KEY (id_manager) REFERENCES manager(manager_id) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το id_manager στο manager_id από τον πίνακα manager,ώστε να έχει το μοναδικό ID του 
κάθε manager για την δεύτερη φάση της αξιολόγησης.
CONSTRAINT ID_EVALU FOREIGN KEY(id_eval) REFERENCES evaluator(evaluator_id) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το id_eval στο evaluator_id από τον πίνακα evaluator,ώστε να έχει το μοναδικό ID του κάθε 
αξιολογητή για την δεύτερη φάση της αξιολόγησης.
CONSTRAINT PROC_USRNM FOREIGN KEY(usrnm_empl) REFERENCES employee(employee_username) ON DELETE
CASCADE ON UPDATE CASCADE, Κάνουμε Constraint το usrnm_empl στο employee_username από τον πίνακα employee,
ώστε η κάθε δεύτερη φάση αξιολόγησης να έχει το username του υπαλλήλου/υποψηφίου.
CONSTRAINT ID_EMPLOYEE FOREIGN KEY(id_employee) REFERENCES employee(empl_id) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το id_employee στο empl_id από τον πίανακα employee,ώστε να έχει το μοναδικό ID του 
κάθε υποψήφιου/υπαλλήλου για την δεύτερη φάση της αξιολόγησης.
CONSTRAINT PRO_JOBID FOREIGN KEY(id_job) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE
Κάνουμε Constraint το id_job στο job_id από τον πίνακα job,ώστε να έχει το μοναδικό ID της κάθε δουλειάς, που έγινε η 
δεύτερη φάση της αξιολόγησης.
)engine=InnoDB;
ΔΕΝ ΒΆΖΟΥΜΕ NOT NULL ΚΑΘΩΣ ΜΠΟΡΕΙ ΝΑ ΕΙΝΑΙ ΚΕΝΑ ΤΑ ΣΤΟΙΧΕΙΑ .
CREATE TABLE process_3 EXTRA πίνακας για την τρίτη φάση της αξιολόγησης Την αξιολόγηση των πτυχίων, συστατικών 
επιστολών, τον αριθμό των project που έχει υλοποιήσει και τις διακρίσεις που έχει πάρει.
(
usrn_em VARCHAR(30) , Εδώ έχουμε το username κάθε υποψηφίου(employee) που έχει κάνει αίτηση αξιολόγησης.
id_emplo INT(4) , Το ID κάθε υποψηφίου(employee) που έχει κάνει αίτηση αξιολόγησης.
id_evalu INT(4) , Το ID κάθε evaluator(αξιολογητής) που έχει αναλάβει την αξιολόγηση .
id_jb INT(4) , Το ΙD κάθε δουλειάς στην οποία έχουν κάνει αίτηση αξιολόγησης, οι υποψήφιοι-υπάλληλοι.
grade_3 ENUM('0','1','2'), Ο βαθμός της δεύτερης φάσης(συνέντευξη) που μπορεί να είναι από 0-2
KEY (grade_3), Θέτουμε πρωτεύον κλειδί το βαθμό της δεύτερης φάσης αξιολόγησης, grade_2
CONSTRAINT PROCE_USRNM FOREIGN KEY(usrn_em) REFERENCES employee(employee_username) ON DELETE CASCADE
ON UPDATE CASCADE, Κάνουμε Constraint το usrn_em στο employee_username από τον πίνακα employee, ώστε η κάθε 
τρίτη φάση αξιολόγησης να έχει το username του υπαλλήλου/υποψηφίου.
CONSTRAINT ID_EVALUA FOREIGN KEY(id_evalu) REFERENCES evaluator(evaluator_id) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το id_evalu στο evaluator_id από τον πίνακα evaluator,ώστε να έχει το μοναδικό ID του 
κάθε αξιολογητή για την τρίτη φάση της αξιολόγησης.
CONSTRAINT ID_EMPLOY FOREIGN KEY (id_emplo) REFERENCES employee(empl_id) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το id_emplo στο empl_id από τον πίανακα employee,ώστε να έχει το μοναδικό ID του κάθε 
υποψήφιου/υπαλλήλου για την τρίτη φάση της αξιολόγησης.
CONSTRAINT PROCE_JOBID FOREIGN KEY(id_jb) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE 
Κάνουμε Constraint το id_jb στο job_id από τον πίνακα job,ώστε να έχει το μοναδικό ID της κάθε δουλειάς, που έγινε η 
τρίτη φάση της αξιολόγησης.
)engine=InnoDB;
ΔΕΝ ΒΆΖΟΥΜΕ NOT NULL ΚΑΘΩΣ ΜΠΟΡΕΙ ΝΑ ΕΙΝΑΙ ΚΕΝΑ ΤΑ ΣΤΟΙΧΕΙΑ .
CREATE TABLE evaluation_result
(
Evid INT(4) , Το ID κάθε evaluator(αξιολογητής) που έχει αναλάβει την αξιολόγηση .
empl_username VARCHAR(30) ,extra Έχουμε το username κάθε υποψηφίου(employee) που έχει κάνει αίτηση 
αξιολόγησης
idjb INT(4) , Το ΙD κάθε δουλειάς στην οποία έχουν κάνει αίτηση αξιολόγησης, οι υποψήφιοι-υπάλληλοι.
rgrade_1 ENUM('0','1','2','3','4'), extra σκεφτήκαμε για να βλέπει ο κάθε αξιολογητής την τελική θα ήταν καλό να έχουμε 
μαζέψει όλους τους βαθμούς από τις προηγούμενες φάσης αξιολόγησης κι έπειτα με την βοήθεια του procedure να 
υπολογλιζονται όλα μαζι στο τελικό βαθμό garde. Δηαλαδή εδώ έχουμε το βαθμό της φάσης 1.
rgrade_2 ENUM('0','1','2','3','4'), extra σκεφτήκαμε για να βλέπει ο κάθε αξιολογητής την τελική θα ήταν καλό να έχουμε 
μαζέψει όλους τους βαθμούς από τις προηγούμενες φάσης αξιολόγησης κι έπειτα με την βοήθεια του procedure να 
υπολογλιζονται όλα μαζι στο τελικό βαθμό garde. Δηαλαδή εδώ έχουμε το βαθμό της φάσης 2.
rgrade_3 ENUM('0','1','2'), extra σκεφτήκαμε για να βλέπει ο κάθε αξιολογητής την τελική θα ήταν καλό να έχουμε 
μαζέψει όλους τους βαθμούς από τις προηγούμενες φάσης αξιολόγησης κι έπειτα με την βοήθεια του procedure να 
υπολογλιζονται όλα μαζι στο τελικό βαθμό garde. Δηαλαδή εδώ έχουμε το βαθμό της φάσης 3.
grade INT(4) , Ο τελικός βαθμός αξιολόγησης με maximum 10.
comments VARCHAR(255) , Τα σχόλια του τελικά αξιολογητή για τον υποψήφιο/υπάλληλο.
CONSTRAINT EVA_ID FOREIGN KEY (Evid) REFERENCES evaluator(evaluator_id) ON DELETE CASCADE ON UPDATE CASCADE,
Κάνουμε Constraint το Evid στο evaluator_id από τον πίνακα evaluator,ώστε να έχει το μοναδικό ID του κάθε αξιολογητή 
για τα αποτελέσματα της αξιολόγησης.
CONSTRAINT EMPL_EVALR FOREIGN KEY (empl_username) REFERENCES employee(employee_username) ON DELETE
CASCADE ON UPDATE CASCADE, Κάνουμε Constraint το empl_username στο employee_username από τον πίνακα 
employee, ώστε το κάθε αποτέλεσμα αξιολόγησης να έχει το username του υπαλλήλου/υποψηφίου.
CONSTRAINT EVAR_JOBID FOREIGN KEY(idjb) REFERENCES job(job_id) ON DELETE CASCADE ON UPDATE CASCADE,
Κάνουμε Constraint το idjb στο job_id από τον πίνακα job,ώστε να έχει το μοναδικό ID της κάθε δουλειάς, για τα 
αποτελέσματα της αξιολόγησης.
CONSTRAINT RGRADE_1 FOREIGN KEY (rgrade_1) REFERENCES process_1(grade_1) ON DELETE CASCADE ON UPDATE
CASCADE, , Κάνουμε Constraint το rgrade_1 στο grade_1 από τον πίνακα process_1, ώστε να παίρνει τον βαθμό της 
πρώτης φάσης αξιολόγησης, για να τον εμφανίζει στο τελικό πίνακα μαζί με όλους τους άλλους. 
CONSTRAINT RGRADE_2 FOREIGN KEY (rgrade_2) REFERENCES process_2(grade_2) ON DELETE CASCADE ON UPDATE
CASCADE, Κάνουμε Constraint το rgrade_2 στο grade_2 από τον πίνακα process_2, ώστε να παίρνει τον βαθμό της 
δεύτερης φάσης αξιολόγησης, για να τον εμφανίζει στο τελικό πίνακα μαζί με όλους τους άλλους.
CONSTRAINT RGRADE_3 FOREIGN KEY (rgrade_3) REFERENCES process_3(grade_3) ON DELETE CASCADE ON UPDATE
CASCADE Κάνουμε Constraint το rgrade_3 στο grade_3 από τον πίνακα process_3, ώστε να παίρνει τον βαθμό της τρίτης
φάσης αξιολόγησης, για να τον εμφανίζει στο τελικό πίνακα μαζί με όλους τους άλλους.
)engine=InnoDB;
ΔΕΝ ΒΆΖΟΥΜΕ NOT NULL ΚΑΘΩΣ ΜΠΟΡΕΙ ΝΑ ΕΙΝΑΙ ΚΕΝΑ ΤΑ ΣΤΟΙΧΕΙΑ.
CREATE TABLE log EXTRA πίνακας για τις ενέργειες του κάθε user(χρήστη) μέσα στο σύστημα στους πίνακες job,employee
και request-evaluation. 
(
log_username VARCHAR(30) , Το username του χρήστη που κάνει κάποια ενέργεια.
table_edited ENUM('job','employee','request_evaluation'), Ποιος από αυτούς τους τρεις πίνακες ενημερώθηκε.
date_of_action DATETIME , Ημερομηνία και ώρα που άλλαξε κάτι σε έναν από τους πίνακες.
resault_of_action ENUM('INSERT','UPDATE','DELETE'), Τι από τα τρία αυτά έγινε εισαγωγή,ενημέρωση,διαγραφή.
result_succses ENUM ('SUCCSED','FAILED') Αν αυτό που άλλαξε έγινε με επιτυχία ή απορρίφθηκε .
)engine=InnoDB; 
ΔΕΝ ΒΆΖΟΥΜΕ NOT NULL ΚΑΘΩΣ ΜΠΟΡΕΙ ΝΑ ΕΙΝΑΙ ΚΕΝΑ ΤΑ ΣΤΟΙΧΕΙΑ.
CREATE TABLE evaluator_stats EXTRA πίνακας για ώστε να μπορούμε να κρατάμε το μέσο όρο των evaluators. 
(
sevaluatorid INT(4), Μεταβλητή για το ID του evaluator.
sevaluator_username VARCHAR(30), Μεταβλητή για το username του evaluator.
avgrade FLOAT, Μεταβλητή για το βαθμό του evaluator.
PRIMARY KEY (sevaluator_username), Θέτουμε ως πρωτεύον κλειδί το sevaluator_username.
CONSTRAINT SUSERNAME FOREIGN KEY (sevaluator_username) REFERENCES evaluator(evaluator_username) ON DELETE 
CASCADE ON UPDATE CASCADE, Κάνουμε Constraint το sevaluator_username στο evaluator_username από το πίνακα
evaluator για να πάρουμε το username του εξιολογητη.
CONSTRAINT sevid FOREIGN KEY (sevaluatorid) REFERENCES evaluator(evaluator_id) ON DELETE CASCADE ON UPDATE 
CASCADE Κάνουμε Constraint το sevaluatorid στο evaluator_id από το πίνακα evaluator, για να πάρουμε το ID του
εξιολογητή. 
)engine=InnoDB
