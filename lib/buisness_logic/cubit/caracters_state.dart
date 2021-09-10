part of 'caracters_cubit.dart';

@immutable
abstract class CaractersState {}

class CaractersInitial extends CaractersState {}

class CharctersLoaded extends CaractersState {
  final List<dynamic> characters;

  CharctersLoaded(this.characters);
}
