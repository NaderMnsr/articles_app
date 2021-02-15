// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaItem _$MediaItemFromJson(Map<String, dynamic> json) {
  return MediaItem(
    type: json['type'] as String,
    subtype: json['subtype'] as String,
    caption: json['caption'] as String,
    copyright: json['copyright'] as String,
    metadataItems: (json['media-metadata'] as List)
        ?.map((e) => e == null
            ? null
            : MediaMetadataItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MediaItemToJson(MediaItem instance) => <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'media-metadata': instance.metadataItems,
    };
