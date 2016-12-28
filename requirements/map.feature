Feature: Map
  Σαν χρήστης
  Για να δω την τοποθεσία ενός σημείου ενδιαφέροντος
  Θέλω να το δω στον χάρτη
  
  
Scenario: Εισαγωγή τοποθεσίας στον χάρτη απο Επιχειρηματία
  Given οτι είμαι στη σελίδα "εγγραφή Επιχειρηματία"
  And έχω συμπληρώσει όλα τα πεδία
  Then η εφαρμογή διαβάζει τη διεύθυνση της επιχείρησης
  And την καταχωρεί στον χάρτη
  
  
Scenario: Ο χρήστης βλέπει την τοποθεσία του σημείου ενδιαφέροντος στον χάρτη
  Given ότι είμαι στη σελίδα ενός σημείου ενδιαφέροντος
  When κάνω κλικ στην λέξη "χάρτης" κάτω δεξιά απο την εικόνα της επιχείρησης
  Then οδηγούμαι στη σελίδα οπου η συγκεκριμένη επιχείρηση φένεται στον χάρτη
  And μπορώ να και τι άλλο υπάρχει γύρω απο την επιχείρηση
