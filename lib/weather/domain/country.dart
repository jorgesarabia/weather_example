class Country {
  Country({
    required this.iD,
    required this.localizedName,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      iD: json['ID'],
      localizedName: json['LocalizedName'],
    );
  }

  String iD;
  String localizedName;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['ID'] = iD;
    data['LocalizedName'] = localizedName;

    return data;
  }
}
