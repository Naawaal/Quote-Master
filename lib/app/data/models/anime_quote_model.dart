class AutoGenerate {
  AutoGenerate({
    required this.anime,
    required this.character,
    required this.quote,
  });
  late final String anime;
  late final String character;
  late final String quote;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    anime = json['anime'];
    character = json['character'];
    quote = json['quote'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['anime'] = anime;
    data['character'] = character;
    data['quote'] = quote;
    return data;
  }
}
