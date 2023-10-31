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

    return json.fold(<ImageData>[], (List<ImageData> previousValue, element) {
      final ImageData? object = ImageData.fromJson(element);
      if (object is ImageData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ImageData>{};
    }

    return json.entries.fold(<String, ImageData>{},
        (Map<String, ImageData> previousValue, element) {
      final ImageData? object = ImageData.fromJson(element.value);
      if (object is ImageData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ImageData-objects as value to a dart map
  static Map<String, List<ImageData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ImageData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ImageData>>(
          key, ImageData.listFromJson(value));
    });
  }

  @override
  String toString() => 'ImageData[image=$image]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'image': image,
    };
  }
}
