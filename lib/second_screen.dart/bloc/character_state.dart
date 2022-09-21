part of 'character_bloc.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharacterLoadingState extends CharacterState {}

class CharacterSuccesState extends CharacterState {

  final List<CharacterModel> model;
  CharacterSuccesState({required this.model});
}

class CharacterErrorState extends CharacterState {
    final CatchException error;
    CharacterErrorState({ required this.error});
}
