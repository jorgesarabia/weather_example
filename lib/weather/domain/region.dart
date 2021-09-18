class Region {
  String iD;
  String localizedName;
  String englishName;

  Region({
    required this.iD,
    required this.localizedName,
    required this.englishName,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      iD: json['ID'],
      localizedName: json['LocalizedName'],
      englishName: json['EnglishName'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['ID'] = iD;
    data['LocalizedName'] = localizedName;
    data['EnglishName'] = englishName;

    return data;
  }
}
