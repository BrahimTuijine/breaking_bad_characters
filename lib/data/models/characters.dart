class Characters {
  late int charId;
  late String name;
  late String image;
  late String nickname;
  late List<dynamic> job;
  late String statusIfDeadOrAlive;
  late List<dynamic> appearanceOfSeasons;
  late String actorRealname;
  late String categorySerie;
  late List<dynamic> betterCSAppearance;

  Characters.fromJson(Map<String, dynamic> json) {
    charId = json["char_id"];
    name = json["name"];
    nickname = json["nickname"];
    image = json["img"];
    job = json["occupation"];
    statusIfDeadOrAlive = json["status"];
    appearanceOfSeasons = json["appearance"];
    actorRealname = json["portrayed"];
    categorySerie = json["category"];
    betterCSAppearance = json["better_call_saul_appearance"];
  }
}