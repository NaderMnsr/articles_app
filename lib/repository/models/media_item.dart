import 'package:json_annotation/json_annotation.dart';
import 'media_metadata_item.dart';

part 'media_item.g.dart';

@JsonSerializable()
class MediaItem {
  String type;
  String subtype;
  String caption;
  String copyright;
  @JsonKey(name: 'media-metadata')
  List<MediaMetadataItem> metadataItems;

  MediaItem({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.metadataItems,
  });

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);
  Map<String, dynamic> toJson() => _$MediaItemToJson(this);
}
