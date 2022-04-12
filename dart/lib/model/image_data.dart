//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ImageData {
  /// Returns a new [ImageData] instance.
  ImageData({
    @required this.image,
  });

  /// Returns a new [ImageData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ImageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ImageData(
      image: json[r'image'],
    );
  }

  String image;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ImageData && other.image == image;
  }

  @override
  int get hashCode => (image == null ? 0 : image.hashCode);

  static List<ImageData> listFromJson(List<dynamic> json) {
    return <ImageData>[
      if (json is List)
        for (dynamic value in json) ImageData.fromJson(value),
    ];
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic> json) {
    return <String, ImageData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ImageData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ImageData-objects as value to a dart map
  static Map<String, List<ImageData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ImageData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ImageData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ImageData[image=$image]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'image': image,
    };
  }
}
