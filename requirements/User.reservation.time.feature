Feature: User Reservation Edit
  Σαν Χρήστης
  Για να αλλάξω ή να διαγράψω μια κράτηση που έχω κάνει
  Θέλω να αλλάξω την κράτηση μου
  
Scenario: Επιτυχής Αλλαγή κράτησης Χρήστη
  Given οτι έχω κάνει κράτηση σε μια επιχείρηση
  And βρίσκομαι στην σελίδα κρατήσεων της επειχήρησης
  When κάνω κλικ στο κουμπί "Επεξεργασία κράτησης"
  Then οδηγούμαι στη σελίδα της φόρμας κράτησης
  And συμπληρώνω τα νεα στοιχεία της κράτησης μου
  When κανω κλικ στο κουμπί "Κάντε κράτηση"
  Τhen οδηγούμαι στη σελίδα της επιχείρησης και εμφανίζεται το μήνυμα " Η κράτηση σας πραγματοποιήθηκε με επιτυχία"
  And περιμένω email επιβεβαίωσης
  
Scenario: Αποτυχημένη Αλλαγή κράτησης Χρήστη
  Given οτι έχω κάνει κράτηση σε μια επιχείρηση αλλά απομένουν λιγότερο απο 24 ώρες απο αυτή
  And βρίσκομαι στην σελίδα κρατήσεων της επιχείρησης
  When κάνω κλικ στο κουμπί "Επεξεργασία κράτησης"
  Then εμφανίζεται μήνυμα "Η επεξεργασία της κράτησης σας δεν μπορεί να πραγματοποιηθεί. Επικοινωνήστε με την επιχείρηση."
  And επιστρέφω στη σελίδα της επιχείρησης

Scenario: Ακύρωση κράτησης Χρήστη
  Given οτι έχω κάνει κράτηση σε μια επιχείρηση
  And βρίσκομαι στην σελίδα κρατήσεων της επιχείρησης
  When κάνω κλικ στο κουμπί "Ακύρωση κράτησης"
  Then εμφανίζεται μήνυμα "Είστε σίγουρος οτι θέλετε να ακυρώσετε την κράτηση σας?"
  When κάνω κλικ στο κουμπί "ΟΚ"
  Then οδηγούμαι πίσω στην σελίδα της επιχείρησης και εμφανίζεται το μήνυμα "Η κράτησή σας ακυρώθηκε επιτυχώς"
  
Scenario: Αποτυχημένη Ακύρωση κράτησης Χρήστη
  Given οτι έχω κάνει κράτηση σε μια επιχείρηση άλλα απομένουν λιγότερο απο 24 ώρες απο αυτή
  And βρίσκομαι στην σελίδα κρατήσεων της επιχείρησης
  When κάνω κλικ στο κουμπί "Ακύρωση κράτησης"
  Then εμφανίζεται μήνυμα "Η Ακύρωση της κράτησης σας δεν μπορεί να πραγματοποιηθεί. Επικοινωνήστε με την επιχείρηση."
  And επιστρέφω στη σελίδα της επιχείρησης
