class UnsplashApiModel {
  UnsplashApiModel({
    required this.altDescription,
    required this.urls,
  });
  late final String altDescription;
  late final Urls urls;

  UnsplashApiModel.fromJson(Map<String, dynamic> json) {
    altDescription = json['alt_description'];
    urls = Urls.fromJson(json['urls']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['alt_description'] = altDescription;
    data['urls'] = urls.toJson();
    return data;
  }
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });
  late final String raw;
  late final String full;
  late final String regular;
  late final String small;
  late final String thumb;
  late final String smallS3;

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['raw'] = raw;
    data['full'] = full;
    data['regular'] = regular;
    data['small'] = small;
    data['thumb'] = thumb;
    data['small_s3'] = smallS3;
    return data;
  }
}
