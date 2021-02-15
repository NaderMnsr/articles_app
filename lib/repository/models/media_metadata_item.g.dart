// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_metadata_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaMetadataItem _$MediaMetadataItemFromJson(Map<String, dynamic> json) {
  return MediaMetadataItem(
    format: json['format'] as String,
    url: json['url'] as String,
    height: json['height'] as int,
    width: json['width'] as int,
  );
}

Map<String, dynamic> _$MediaMetadataItemToJson(MediaMetadataItem instance) =>
    <String, dynamic>{
      'format': instance.format,
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
