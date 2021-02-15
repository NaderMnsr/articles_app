// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    id: json['id'] as int,
    source: json['source'] as String,
    url: json['url'] as String,
    abstractText: json['abstract'] as String,
    title: json['title'] as String,
    byline: json['byline'] as String,
    updated: json['updated'] as String,
    publishedDate: json['published_date'] as String,
    media: (json['media'] as List)
        ?.map((e) =>
            e == null ? null : MediaItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'url': instance.url,
      'abstract': instance.abstractText,
      'title': instance.title,
      'byline': instance.byline,
      'updated': instance.updated,
      'published_date': instance.publishedDate,
      'media': instance.media,
    };
