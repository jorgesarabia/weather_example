class TimeZone {
  String code;
  String name;
  int gmtOffset;
  bool isDaylightSaving;

  TimeZone({
    required this.code,
    required this.name,
    required this.gmtOffset,
    required this.isDaylightSaving,
  });

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      code: json['Code'],
      name: json['Name'],
      gmtOffset: json['GmtOffset'],
      isDaylightSaving: json['IsDaylightSaving'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Code'] = code;
    data['Name'] = name;
    data['GmtOffset'] = gmtOffset;
    data['IsDaylightSaving'] = isDaylightSaving;

    return data;
  }
}
