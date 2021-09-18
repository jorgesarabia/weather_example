class Metric {
  const Metric({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  final int value;
  final String unit;
  final int unitType;

  factory Metric.fromJson(Map<String, dynamic> json) {
    return Metric(
      value: json['Value'] as int,
      unit: json['Unit'] as String,
      unitType: json['UnitType'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Value'] = value;
    data['Unit'] = unit;
    data['UnitType'] = unitType;

    return data;
  }
}

// https://javiercbk.github.io/json_to_dart/
