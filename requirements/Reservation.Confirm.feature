Feature: Confirmation Booking User 
  Σαν επιχειρηματίας
  Για την καλύτερη λειτουργία της επιχείρησής μου
  Θέλω να δω τα στοιχεία της κράτησης και να την επιβεβαιώσω
  
  
Scenario: Επιτυχής Ενημέρωση για Κράτηση
  Given βρίσκομαι στην αρχική μου σελίδα
  And βλέπω το "εικονίδιο μηνύματος" αναμμένο
  When κάνω κλικ πάνω στο "εικονίδιο μηνύματος"
  Then οδηγούμαι στην σελίδα μηνυμάτων μου
  And βλέπω ένα νεο μύνημα με τίτλο "Ενημέρωση Κράτησης"
  When κάνω κλικ πάνω στο μήνυμα
  Τhen μπορώ να δω λεπτομέριες για την κράτηση και τα στοιχεία του Χρήστη που θέλει να κάνει την κράτηση
  When κάνω κλικ στο κουμπί "Accept"
  Then επιβεβαιώνω την κράτηση
  And ειδοποιήτε ο Χρήστης
  And επιστρέφω στην σελίδα μηνυμάτων
  
Scenario: Αποτυχημένη Ενημέρωση για Κράτηση
  Given βρίσκομαι στην αρχική μου σελίδα
  And βλέπω το "εικονίδιο μηνύματος" αναμμένο
  When κάνω κλικ πάνω στο "εικονίδιο μηνύματος"
  Then οδηγούμαι στην σελίδα μηνυμάτων μου
  And βλέπω ένα νεο μύνημα με τίτλο "Ενημέρωση Κράτησης"
  When κάνω κλικ πάνω στο μήνυμα
  Τhen μπορώ να δω λεπτομέριες για την κράτηση και τα στοιχεία του Χρήστη που θέλει να κάνει την κράτηση
  When κάνω κλικ στο κουμπί "Decline"
  Then απορίπτω την κράτηση
  And ειδοποιήτε ο Χρήστης
  And επιστρέφω στην σελίδα μηνυμάτων