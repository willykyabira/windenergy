import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class AjouterEolienne {
  EolienneRepository repository;

  AjouterEolienne({required this.repository});

  @override
  FutureResultat call(Map<String, Object> params) {
    final idUtilisateur = params["idUtilisateur"]! as int;
    final numeroSerie = params["numeroSerie"]! as String;
    return repository.ajouterEolienne(idUtilisateur,numeroSerie);
  }
}

class SupprimerEolienne {
  EolienneRepository repository;

  SupprimerEolienne({required this.repository});

  @override
  FutureResultat call(Map<String, int> params) {
    final idEolienne = params["idEolienne"]!;
    return repository.supprimerEolienne(idEolienne);
  }
}
