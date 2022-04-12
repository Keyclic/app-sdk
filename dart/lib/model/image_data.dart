//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ImageData {
  /// Returns a new [ImageData] instance.
  ImageData({
    required this.image,
  });

  /// Returns a new [ImageData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ImageData? fromJson(Map<String, dynamic>? json) {
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
  int get hashCode => image.hashCode;

  static List<ImageData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ImageData>[];
    }
    return json
        .map((value) {
          return ImageData.fromJson(value);
        })
        .whereType<ImageData>()
        .toList();
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ImageData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ImageData?>(key, ImageData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ImageData>;
  }

  // maps a json object with a list of ImageData-objects as value to a dart map
  static Map<String, List<ImageData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ImageData>>{
      if (json is Map)
        for (final entry in json!.entries)
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
