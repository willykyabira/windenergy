abstract class WindenergyEvent {}

class AuthentifierEvent extends WindenergyEvent {
  final String email;
  final String motDePasse;

  AuthentifierEvent({this.email = "", this.motDePasse = ""});
}

class EnregistrerEvent extends WindenergyEvent {
  final String email;
  final String nom;
  final String prenom;
  final String motDePasse;

  EnregistrerEvent({
    this.email = "",
    this.nom = "",
    this.prenom = "",
    this.motDePasse = "",
  });
}

class AjouterEolienneEvent extends WindenergyEvent {
  final String numeroSerie;
  AjouterEolienneEvent({this.numeroSerie = ""});
}

class ConsulterEtatEolienneEvent extends WindenergyEvent {
  final String numeroSerie;
  ConsulterEtatEolienneEvent({this.numeroSerie = ""});
}

class ConsulterListeEolienneEvent extends WindenergyEvent {
  ConsulterListeEolienneEvent();
}

class SupprimerEolienneEvent extends WindenergyEvent {
  final String numeroSerie;
  SupprimerEolienneEvent({this.numeroSerie = ""});
}