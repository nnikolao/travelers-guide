Feature: Interest point Valuation
  Σαν Χρήστης 
  Για να μπορώ να βαθμολογήσω ένα σημείο ενδιαφέροντος που επισκέφτηκα
  Θέλω να το αξιολογήσω
  
Scenario: Αξιολόγηση σημείου ενδιαφέροντος
  Given οτι βρίσκομαι στη σελίδα του σημείου ενδιαφέροντος που θέλω
  And Βλέπω τα 6 αστεράκια κάτω αριστερά από το πλαίσιο του σημείου ενδιαφέροντος
  When πατάω το αστεράκι που θέλω
  Then το αστεράκι αυτό και τα υπόλοιπα αριστερά του αλλάζουν χρώμα
  And παραμένω στη σελίδα του σημείου ενδιαφέροντος
