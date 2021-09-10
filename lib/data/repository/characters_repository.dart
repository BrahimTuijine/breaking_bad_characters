import 'package:breaking_bad_project/data/models/characters.dart';
import 'package:breaking_bad_project/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CaractersWebServices caractersWebServices;

  CharactersRepository(this.caractersWebServices);

  Future<List<dynamic>> getAllcharacters() async {
    final characters = await caractersWebServices.getAllcharacters();
    return characters
        .map((character) => Characters.fromJson(character))
        .toList();
  }
}
