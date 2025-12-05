import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class ConsulterListeEoliennes {
  EolienneRepository repository;

  ConsulterListeEoliennes({required this.repository});

  @override
  FutureResultat call(Map<String, int> params) {
    int idUtilisateur = params["idUtilisateur"]!;
    return repository.consulterListeEoliennes(idUtilisateur);
  }
}
