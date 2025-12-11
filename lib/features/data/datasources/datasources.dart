import 'package:windenergy/core/resultat/resultat.dart';

abstract class DatabaseDatasource {
  FutureResultat ajouterEolienne(String numeroSerie);

  FutureResultat authentifier(String email, String motDePasse);

  FutureResultat consulterEtatEolienne(String numeroSerie);

  FutureResultat consulterListeEoliennes();

  FutureResultat enregistrer(
    String email,
    String nom,
    String prenom,
    String motDePasse,
  );

  FutureResultat supprimerEolienne(String numeroSerie);
}
