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
    final numeroSerie = "";
    when(
      () => repository.ajouterEolienne(numeroSerie),
    ).thenAnswer((_) async => Succes(true));
    await ajouterEolienne(numeroSerie);

    verify(() => repository.ajouterEolienne(numeroSerie));
  });

  test("devrait appeler [EolienneRepository.supprimerEolienne]", () async {
    final numeroSerie = "";
    when(
      () => repository.supprimerEolienne(numeroSerie),
    ).thenAnswer((_) async => Succes(true));
    await supprimerEolienne(numeroSerie);

    verify(() => repository.supprimerEolienne(numeroSerie));
  });
}
