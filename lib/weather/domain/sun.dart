class Sun {
  String rise;
  int epochRise;
  String set;
  int epochSet;

  Sun({
    required this.rise,
    required this.epochRise,
    required this.set,
    required this.epochSet,
  });

  factory Sun.fromJson(Map<String, dynamic> json) {
    return Sun(
      rise: json['Rise'],
      epochRise: json['EpochRise'],
      set: json['Set'],
      epochSet: json['EpochSet'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Rise'] = rise;
    data['EpochRise'] = epochRise;
    data['Set'] = set;
    data['EpochSet'] = epochSet;

    return data;
  }
}
