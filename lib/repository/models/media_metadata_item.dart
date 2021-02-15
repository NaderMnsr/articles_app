import 'package:json_annotation/json_annotation.dart';

part 'media_metadata_item.g.dart';

@JsonSerializable()
class MediaMetadataItem {
  String format;
  String url;

  int height;
  int width;

  MediaMetadataItem({
    this.format,
    this.url,
    this.height,
    this.width,
  });

  factory MediaMetadataItem.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataItemFromJson(json);
  Map<String, dynamic> toJson() => _$MediaMetadataItemToJson(this);
}
