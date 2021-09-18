class Moon {
  String rise;
  int epochRise;
  String set;
  int epochSet;
  String phase;
  int age;

  Moon({
    required this.rise,
    required this.epochRise,
    required this.set,
    required this.epochSet,
    required this.phase,
    required this.age,
  });

  factory Moon.fromJson(Map<String, dynamic> json) {
    return Moon(
      rise: json['Rise'],
      epochRise: json['EpochRise'],
      set: json['Set'],
      epochSet: json['EpochSet'],
      phase: json['Phase'],
      age: json['Age'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Rise'] = rise;
    data['EpochRise'] = epochRise;
    data['Set'] = set;
    data['EpochSet'] = epochSet;
    data['Phase'] = phase;
    data['Age'] = age;

    return data;
  }
}
