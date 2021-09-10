import 'package:breaking_bad_project/buisness_logic/cubit/caracters_cubit.dart';
import 'package:breaking_bad_project/data/repository/characters_repository.dart';
import 'package:breaking_bad_project/data/web_services/characters_web_services.dart';
import 'package:breaking_bad_project/presentation/screens/characters_details.dart';
import 'package:breaking_bad_project/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CaractersCubit caractersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CaractersWebServices());
    caractersCubit = CaractersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CaractersCubit(charactersRepository),
                  child: CharactersScreen(),
                ));
      case "charScreenDetails":
        return MaterialPageRoute(builder: (_) => CharSdetails());
    }
  }
}
