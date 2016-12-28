Feature: Company Info change
  Σαν επιχειρηματίας
  Για να ενημερώσω τους πελάτες μου για αλλαγή των στοιχείων της επιχείρησης μου
  θέλω να αλλάξω τα στοιχεία της επιχείρησης μου
  
Scenario: Εισαγωγή Νέου σημείου ενδιαφέροντος
  Given οτι βρίσκομαι στην αρχική σελίδα
  When κάνω κλικ στο "εικονίδιο ρυθμίσεων" πάνω δεξιά
  Then οδηγούμαι στη σελίδα των ρυθμίσεών μου
  When επιλέγω και πατάω το κουμπί "Εισαγωγή επιχείρησης"
  Then οδηγούμαι στην σελίδα "Εγγραφή Επαγγελματία"
  When συμπληρώνω τα στοιχεία της νέας επιχείρησης
  And πατάω το κουμπί ""Εγγραφή""
  Then εμφανίζεται μήνυμα "Να σωθούν οι αλλαγές?"
  Then πατάω στην επιλογή "ΥΕS"
  And επανέρχομαι στη σελίδα με τα στοιχεία της επιχείρησης
  
Scenario: Επιτυχής αλλαγή στοιχείων
  Given οτι βρίσκομαι στην αρχική σελίδα
  When κάνω κλικ στο "εικονίδιο ρυθμίσεων" πάνω δεξιά
  Then οδηγούμαι στη σελίδα των ρυθμίσεών μου
  When επιλέγω και πατάω πάνω στο κουμπί "στοιχεία επιχείρησης"
  Then οδηγούμαι στη σελίδα με τα στοιχεία της επιχείρησής μου
  When κάνω κλικ πάνω στο κουμπί "Edit" δίπλα απο το όνομα της επιχείρησης μου
  Then το πεδίο δίπλα σε κάθε στοιχείο της επιχείρησης μου ανοίγει και μπορώ να γράψω
  When αλλάζω τα στοιχεία που θέλω
  And πατάω το κουμπί ""Εγγραφή""
  Then εμφανίζεται μήνυμα "Να σωθούν οι αλλαγές?"
  Then πατάω στην επιλογή "ΥΕS"
  And επανέρχομαι στη σελίδα με τα στοιχεία της επιχείρησης
  
Scenario: Διαγραφή επιχείρησης
  Given οτι βρίσκομαι στην αρχική σελίδα
  When κάνω κλικ στο "εικονίδιο ρυθμίσεων" πάνω δεξιά
  Then οδηγούμαι στη σελίδα των ρυθμίσεών μου
  When επιλέγω και πατάω πάνω στο κουμπί "στοιχεία επιχείρησης"
  Then οδηγούμαι στη σελίδα με τα στοιχεία της επιχείρησής μου
  When κάνω κλικ στο κουμπί "delete" δίπλα απο το όνομα της επιχείρησης μου
  Then εμφανίζεται μύνημα "Είστε σίγουροι για την επιλογή αυτή?"
  Then πατάω στην επιλογή "ΥΕS"
  And επανέρχομαι στην αρχική σελίδα της εφαρμογής
