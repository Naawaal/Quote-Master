class RandomQuoteModel {
  RandomQuoteModel({
    required this.id,
    required this.content,
    required this.author,
    required this.tags,
    required this.authorSlug,
    required this.length,
    required this.dateAdded,
    required this.dateModified,
  });
  late final String id;
  late final String content;
  late final String author;
  late final List<String> tags;
  late final String authorSlug;
  late final int length;
  late final String dateAdded;
  late final String dateModified;

  RandomQuoteModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    content = json['content'];
    author = json['author'];
    tags = List.castFrom<dynamic, String>(json['tags']);
    authorSlug = json['authorSlug'];
    length = json['length'];
    dateAdded = json['dateAdded'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = id;
    data['content'] = content;
    data['author'] = author;
    data['tags'] = tags;
    data['authorSlug'] = authorSlug;
    data['length'] = length;
    data['dateAdded'] = dateAdded;
    data['dateModified'] = dateModified;
    return data;
  }
}
