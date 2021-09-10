import 'package:bloc/bloc.dart';
import 'package:breaking_bad_project/data/repository/characters_repository.dart';
import 'package:flutter/material.dart';

part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
  final CharactersRepository charactersRepository;
  CaractersCubit(this.charactersRepository) : super(CaractersInitial());
  late List<dynamic> characters;
  List<dynamic> getAllcharacters() {
    charactersRepository.getAllcharacters().then((characters) {
      this.characters = characters;
      emit(CharctersLoaded(characters)); 
    });
    return characters;
  }
}
