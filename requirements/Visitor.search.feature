Feature: Visitor search
  Σαν Επισκέπτης
  Γιαν να βρω ένα μέρος που θέλω να επισκεφτώ
  θέλω να κάνω αναζήτηση


Scenario: Αναζήτηση σαν Επισκέπτης
  Given οτι είμαι στην αρχική σελίδα
  When κάνω κλικ στην "περιοχή αναζήτησης" και πληκτρολογώ το όνομα μιας πόλης
  And πατάω στην επιλογή "Πόλη"
  Then θα πρέπει να οδηγηθώ στην σελίδα αποτελεσμάτων
  And θα πρέπει να είμαι σε θέση να διαλέξω το σημείο ενδιαφέροντος που θέλω
  
Scenario: Αναζήτηση σαν Επισκέπτης – Πόλη-Περιοχή
  Given ότι είμαι στην αρχική σελίδα
  When κάνω κλικ στην "περιοχή αναζήτησης" και πληκτρολογώ το όνομα μιας πόλης
  Then πατάω στην επιλογή "Πόλη"
  Then κάνω κλικ στην "περιοχή αναζήτησης" και πληκτρολογώ την περιοχή
  And πατάω στην επιλογή "Περιοχή"
  Then θα πρέπει να οδηγηθώ στην σελίδα αποτελεσμάτων
  And θα πρέπει να είμαι σε θέση να διαλέξω το σημείο ενδιαφέροντος που θέλω
  
Scenario: Αναζήτηση σαν Επισκέπτης – Πόλη – Περιοχή – Σημείο ενδιαφέροντος
  Given ότι είμαι στην αρχική σελίδα
  When κάνω κλικ στην "περιοχή αναζήτησης" και πληκτρολογώ το όνομα μιας πόλης
  Then πατάω στην επιλογή "Πόλη"
  Then κάνω κλικ στην "περιοχή αναζήτησης" και πληκτρολογώ την περιοχή
  And πατάω στην επιλογή "Περιοχή"
  Then θα πρέπει να οδηγηθώ στην σελίδα αποτελεσμάτων ( διαμονή, αξιοθέατα, διασκέδαση, μέσα μαζικής μεταφοράς)
  And θα πρέπει να είμαι σε θέση να διαλέξω το σημείο ενδιαφέροντος που θέλω
  When επιλέγω από τη λίστα με τα σημεία ενδιαφέροντος (διασκέδαση)
  Then θα πρέπει να οδηγηθώ στη σελίδα αποτελεσμάτων (cine– θέατρο, μουσικές σκηνές,φαγητό, café-bar)
