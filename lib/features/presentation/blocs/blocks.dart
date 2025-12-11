import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/entities/entities.dart';
import 'package:windenergy/features/domain/usecases/authentification.dart';
import 'package:windenergy/features/domain/usecases/consulter_etat_eolienne.dart';
import 'package:windenergy/features/domain/usecases/consulter_liste_eoliennes.dart';
import 'package:windenergy/features/domain/usecases/gerer_eolienne.dart';
import 'package:windenergy/features/presentation/blocs/states.dart';
import 'package:windenergy/features/presentation/blocs/events.dart';

class AuthentifierBloc extends Bloc<WindenergyEvent, WindenergyState> {
  final Authentifier authentifier;

  AuthentifierBloc(this.authentifier) : super(IdleState()) {
    on<AuthentifierEvent>((event, emit) async {
      final email = event.email;
      final motDePasse = event.motDePasse;
      emit(LoadingState());
      final resultat = await authentifier(
        email,
        motDePasse,
      ); // Fait le pont avec le cas d'utilisation authentifier

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<bool>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}

class EnregistrerBloc extends Bloc<WindenergyEvent, WindenergyState> {
  final Enregistrer enregistrer;

  EnregistrerBloc(this.enregistrer) : super(IdleState()) {
    on<EnregistrerEvent>((event, emit) async {
      final email = event.email;
      final nom = event.nom;
      final prenom = event.prenom;
      final motDePasse = event.motDePasse;
      emit(LoadingState());
      final resultat = await enregistrer(
        email,
        nom,
        prenom,
        motDePasse,
      ); // Fait le pont avec le cas d'utilisation enregistrer

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<bool>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}

class ConsulterEtatEolienneBloc extends Bloc<WindenergyEvent, WindenergyState> {
  final ConsulterEtatEolienne consulterEtatEolienne;

  ConsulterEtatEolienneBloc(this.consulterEtatEolienne) : super(IdleState()) {
    on<ConsulterEtatEolienneEvent>((event, emit) async {
      final numeroSerie = event.numeroSerie;
      emit(LoadingState());
      final resultat = await consulterEtatEolienne(
        numeroSerie,
      ); // Fait le pont avec le cas d'utilisation enregistrer

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<Eolienne>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}

class AjouterEolienneBloc extends Bloc<WindenergyEvent, WindenergyState> {
  final AjouterEolienne ajouterEolienne;

  AjouterEolienneBloc(this.ajouterEolienne) : super(IdleState()) {
    on<AjouterEolienneEvent>((event, emit) async {
      final numeroSerie = event.numeroSerie;
      emit(LoadingState());
      final resultat = await ajouterEolienne(
        numeroSerie,
      ); // Fait le pont avec le cas d'utilisation enregistrer

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<Eolienne>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}

class ConsulterListeEoliennesBloc
    extends Bloc<WindenergyEvent, WindenergyState> {
  final ConsulterListeEoliennes consulterListeEoliennes;

  ConsulterListeEoliennesBloc(this.consulterListeEoliennes)
    : super(IdleState()) {
    on<ConsulterListeEolienneEvent>((event, emit) async {
      emit(LoadingState());
      final resultat =
          await consulterListeEoliennes(); // Fait le pont avec le cas d'utilisation enregistrer

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<List<Eolienne>>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}

class SupprimerEolienneBloc extends Bloc<WindenergyEvent, WindenergyState> {
  final SupprimerEolienne supprimerEolienne;

  SupprimerEolienneBloc(this.supprimerEolienne) : super(IdleState()) {
    on<AjouterEolienneEvent>((event, emit) async {
      final numeroSerie = event.numeroSerie;
      emit(LoadingState());
      final resultat = await supprimerEolienne(
        numeroSerie,
      ); // Fait le pont avec le cas d'utilisation enregistrer

      if (resultat is Echec) {
        emit(EchecState(resultat.message));
      } else {
        var succ = resultat as Succes<bool>;
        emit(SuccesState(succ.valeur));
      }
    });
  }
}
