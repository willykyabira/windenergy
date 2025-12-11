import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class ConsulterEtatEolienne {
  EolienneRepository repository;

  ConsulterEtatEolienne({required this.repository});

  @override
  FutureResultat call(String numeroSerie) {
    return repository.consulterEtatEolienne(numeroSerie);
  }
}
