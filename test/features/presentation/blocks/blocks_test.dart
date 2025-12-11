import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/features/domain/usecases/authentification.dart';
import 'package:windenergy/features/domain/usecases/consulter_etat_eolienne.dart';
import 'package:windenergy/features/domain/usecases/consulter_liste_eoliennes.dart';
import 'package:windenergy/features/domain/usecases/gerer_eolienne.dart';
import 'package:windenergy/features/presentation/blocs/blocks.dart';

class AuthentifierMock extends Mock implements Authentifier {}

class EnregistrerMock extends Mock implements Enregistrer {}

class AjouterEtatEolienneMock extends Mock implements AjouterEolienne {}

class ConsulterEtatEolienneMock extends Mock implements ConsulterEtatEolienne {}

class ConsulterListeEoliennesMock extends Mock
    implements ConsulterListeEoliennes {}

void main() {
  late AuthentifierMock authentifierMock;
  late EnregistrerMock enregistrerMock;
  late AjouterEtatEolienneMock ajouterEtatEolienneMock;
  late ConsulterEtatEolienneMock consulterEtatEolienneMock;
  late ConsulterListeEoliennesMock consulterListeEoliennesMock;

  setUp(() {
    authentifierMock = AuthentifierMock();
    enregistrerMock = EnregistrerMock();
    ajouterEtatEolienneMock = AjouterEtatEolienneMock();
    consulterEtatEolienneMock = ConsulterEtatEolienneMock();
    consulterListeEoliennesMock = ConsulterListeEoliennesMock();
  });

  /*group('test EnregistrerBloc',(){

    blocTest('devrait émettre [EtatUtilisateurChargementState,EtatUtilistateurSuccesState]',
        build: (){
          when(()=>mockEnregistrer(["test@test.com","john","bankoko","pass"])).thenAnswer((_) async => Succes(1));
          return enregistrerBloc;
        },
        act: (_) => enregistrerBloc.add(EnregistrerUtilisateurEvent(nom: "john",email: "test@test.com",adresse: "bankoko", motDePasse: "pass")),
        expect: ()=>[UtilisateurChargementState(),UtilisateurSuccesState<int>(valeur: 1)]
    );

    blocTest('devrait émettre [EtatUtilisateurChargementState,EtatUtilistateurSuccesState]',
        build: (){
          when(()=>mockEnregistrer(["","","",""])).thenAnswer((_) async => Echec(raison: "l'utilisateur existe déjà"));
          return enregistrerBloc;
        },
        act: (_) => enregistrerBloc.add(EnregistrerUtilisateurEvent(nom: "",email: "", motDePasse: "")),
        expect: ()=>[UtilisateurChargementState(),UtilisateurEchecState(raison: "l'utilisateur existe déjà")]
    );
  });*/
}
