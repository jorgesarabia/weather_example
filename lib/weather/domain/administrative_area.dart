class AdministrativeArea {
  String iD;
  String localizedName;
  String englishName;
  int level;
  String localizedType;
  String englishType;
  String countryID;

  AdministrativeArea({
    required this.iD,
    required this.localizedName,
    required this.englishName,
    required this.level,
    required this.localizedType,
    required this.englishType,
    required this.countryID,
  });

  factory AdministrativeArea.fromJson(Map<String, dynamic> json) {
    return AdministrativeArea(
      iD: json['ID'],
      localizedName: json['LocalizedName'],
      englishName: json['EnglishName'],
      level: json['Level'],
      localizedType: json['LocalizedType'],
      englishType: json['EnglishType'],
      countryID: json['CountryID'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['ID'] = iD;
    data['LocalizedName'] = localizedName;
    data['EnglishName'] = englishName;
    data['Level'] = level;
    data['LocalizedType'] = localizedType;
    data['EnglishType'] = englishType;
    data['CountryID'] = countryID;

    return data;
  }
}
