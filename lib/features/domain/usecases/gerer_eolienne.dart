import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class AjouterEolienne {
  EolienneRepository repository;

  AjouterEolienne({required this.repository});

  @override
  FutureResultat call(String numeroSerie) {
    return repository.ajouterEolienne(numeroSerie);
  }
}

class SupprimerEolienne {
  EolienneRepository repository;

  SupprimerEolienne({required this.repository});

  @override
  FutureResultat call(String numeroSerie) {
    return repository.supprimerEolienne(numeroSerie);
  }
}
