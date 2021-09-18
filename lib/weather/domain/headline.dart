class Headline {
  String effectiveDate;
  int effectiveEpochDate;
  int severity;
  String text;
  String category;
  String endDate;
  int endEpochDate;
  String mobileLink;
  String link;

  Headline({
    required this.effectiveDate,
    required this.effectiveEpochDate,
    required this.severity,
    required this.text,
    required this.category,
    required this.endDate,
    required this.endEpochDate,
    required this.mobileLink,
    required this.link,
  });

  factory Headline.fromJson(Map<String, dynamic> json) {
    return Headline(
      effectiveDate: json['EffectiveDate'],
      effectiveEpochDate: json['EffectiveEpochDate'],
      severity: json['Severity'],
      text: json['Text'],
      category: json['Category'],
      endDate: json['EndDate'],
      endEpochDate: json['EndEpochDate'],
      mobileLink: json['MobileLink'],
      link: json['Link'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['EffectiveDate'] = effectiveDate;
    data['EffectiveEpochDate'] = effectiveEpochDate;
    data['Severity'] = severity;
    data['Text'] = text;
    data['Category'] = category;
    data['EndDate'] = endDate;
    data['EndEpochDate'] = endEpochDate;
    data['MobileLink'] = mobileLink;
    data['Link'] = link;

    return data;
  }
}
