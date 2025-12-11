class WindenergyState {}

class IdleState extends WindenergyState {}

class LoadingState extends WindenergyState {}

class SuccesState<T> extends WindenergyState {
  T valeur;
  SuccesState(this.valeur);
}

class EchecState extends WindenergyState {
  String message;
  EchecState(this.message);
}