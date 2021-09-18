class Direction {
  int degrees;
  String localized;
  String english;

  Direction({
    required this.degrees,
    required this.localized,
    required this.english,
  });

  factory Direction.fromJson(Map<String, dynamic> json) {
    return Direction(
      degrees: json['Degrees'],
      localized: json['Localized'],
      english: json['English'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Degrees'] = degrees;
    data['Localized'] = localized;
    data['English'] = english;

    return data;
  }
}
