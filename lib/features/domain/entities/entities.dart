import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:equatable/equatable.dart';

class Utilisateur extends Equatable {
  final String authId;
  final int idUtilisateur;
  final String email;
  final String nom;
  final String prenom;

  const Utilisateur({
    this.authId = "",
    this.idUtilisateur = 0,
    this.email = "",
    this.nom = "",
    this.prenom = "",
  });

  @override
  List<Object?> get props => [authId];
}

class Eolienne extends Equatable {
  final String numeroSerie;
  final double vitesseRotation;
  final double puissanceGenere;
  final double orientation;
  final String hashSecurite;
  final DateTime tempsDerniereMesure;
  final bool actif;

  Eolienne({
    this.numeroSerie = "",
    this.vitesseRotation = 0,
    this.puissanceGenere = 0,
    this.orientation = 0,
    this.hashSecurite = "",
    this.actif = true,
    required this.tempsDerniereMesure
  });

  @override
  List<Object?> get props => [numeroSerie];
}
