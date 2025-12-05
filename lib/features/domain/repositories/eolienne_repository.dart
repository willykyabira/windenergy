import 'package:windenergy/core/resultat/resultat.dart';

abstract class EolienneRepository {
  FutureResultat authentifier(String email, String motDePasse);

  FutureResultat enregistrer(
    String email,
    String nom,
    String prenom,
    String motDePasse,
  );

  FutureResultat consulterEtatEolienne(int idUtilisateur, int idEolienne);
  FutureResultat consulterListeEoliennes(int idUtilisateur);
  FutureResultat ajouterEolienne(int idUtilisateur,String numeroSerie);
  FutureResultat supprimerEolienne(int idEolienne);
}
