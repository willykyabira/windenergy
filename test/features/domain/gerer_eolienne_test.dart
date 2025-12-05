import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';
import 'package:windenergy/features/domain/usecases/gerer_eolienne.dart';

class MockEolienneRepository extends Mock implements EolienneRepository {}

void main() {
  late MockEolienneRepository repository;
  late AjouterEolienne ajouterEolienne;
  late SupprimerEolienne supprimerEolienne;

  setUp(() {
    repository = MockEolienneRepository();
    ajouterEolienne = AjouterEolienne(repository: repository);
    supprimerEolienne = SupprimerEolienne(repository: repository);
  });

  test("devrait appeler [EolienneRepository.ajouterEolienne]", () async {
    final idUtilisateur = 0;
    final numeroSerie = "";
    when(
      () => repository.ajouterEolienne(idUtilisateur,numeroSerie),
    ).thenAnswer((_) async => Succes(true));
    await ajouterEolienne({"idUtilisateur":idUtilisateur,"numeroSerie": numeroSerie});

    verify(() => repository.ajouterEolienne(idUtilisateur,numeroSerie));
  });

  test("devrait appeler [EolienneRepository.supprimerEolienne]", () async {
    final idEolienne = 0;
    when(
      () => repository.supprimerEolienne(idEolienne),
    ).thenAnswer((_) async => Succes(true));
    await supprimerEolienne({"idEolienne": idEolienne});

    verify(() => repository.supprimerEolienne(idEolienne));
  });
}
