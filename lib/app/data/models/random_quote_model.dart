class RandomQuoteModel {
  final String id;
  final String content;
  final String author;
  final List<String> tags;

  RandomQuoteModel({
    required this.id,
    required this.content,
    required this.author,
    required this.tags,
  });

  factory RandomQuoteModel.fromJson(Map<String, dynamic> json) {
    return RandomQuoteModel(
      id: json['_id'] ?? "",
      content: json['content'] ?? "",
      author: json['author'] ?? "",
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}
