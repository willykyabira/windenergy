import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';
import 'package:windenergy/features/domain/usecases/consulter_etat_eolienne.dart';

class MockEolienneRepository extends Mock implements EolienneRepository {}

void main() {
  late MockEolienneRepository repository;
  late ConsulterEtatEolienne consulterEtatEolienne;

  setUp(() {
    repository = MockEolienneRepository();
    consulterEtatEolienne = ConsulterEtatEolienne(repository: repository);
  });

  test("devrait appeler [EolienneRepository.consulterEtatEolienne]", () async {
    final numeroSerie = "0";
    when(
      () => repository.consulterEtatEolienne(numeroSerie),
    ).thenAnswer((_) async => Succes(true));
    await consulterEtatEolienne(numeroSerie);

    verify(() => repository.consulterEtatEolienne(numeroSerie));
  });
}
