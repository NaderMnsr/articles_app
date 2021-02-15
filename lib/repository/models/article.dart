import 'package:json_annotation/json_annotation.dart';
import 'media_item.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  int id;
  String source;
  String url;
  @JsonKey(name: 'abstract')
  String abstractText;
  String title;
  String byline;
  String updated;
  @JsonKey(name: 'published_date')
  String publishedDate;
  List<MediaItem> media;

  Article(
      {this.id,
      this.source,
      this.url,
      this.abstractText,
      this.title,
      this.byline,
      this.updated,
      this.publishedDate,
      this.media});

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
