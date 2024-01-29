//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksImagesIriTemplateMapping {
  /// Returns a new [FeedbackLinksImagesIriTemplateMapping] instance.
  FeedbackLinksImagesIriTemplateMapping({
    this.feedback,
    this.image,
  });

  /// Returns a new [FeedbackLinksImagesIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksImagesIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImagesIriTemplateMapping(
      feedback: json[r'feedback'],
      image: json[r'image'],
    );
  }

  String? feedback;

  String? image;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplateMapping &&
        other.feedback == feedback &&
        other.image == image;
  }

  @override
  int get hashCode =>
      (feedback == null ? 0 : feedback.hashCode) +
      (image == null ? 0 : image.hashCode);

  static List<FeedbackLinksImagesIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksImagesIriTemplateMapping>[];
    }

    return json.fold(<FeedbackLinksImagesIriTemplateMapping>[],
        (List<FeedbackLinksImagesIriTemplateMapping> previousValue, element) {
      final FeedbackLinksImagesIriTemplateMapping? object =
          FeedbackLinksImagesIriTemplateMapping.fromJson(element);
      if (object is FeedbackLinksImagesIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImagesIriTemplateMapping>{};
    }

    return json.entries.fold(<String, FeedbackLinksImagesIriTemplateMapping>{},
        (Map<String, FeedbackLinksImagesIriTemplateMapping> previousValue,
            element) {
      final FeedbackLinksImagesIriTemplateMapping? object =
          FeedbackLinksImagesIriTemplateMapping.fromJson(element.value);
      if (object is FeedbackLinksImagesIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksImagesIriTemplateMapping-objects as value to a dart map
  static Map<String, List<FeedbackLinksImagesIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksImagesIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksImagesIriTemplateMapping>>(
          key, FeedbackLinksImagesIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksImagesIriTemplateMapping[feedback=$feedback, image=$image]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'feedback')) r'feedback': feedback,
      if (keys == null || keys.contains(r'image')) r'image': image,
    };
  }
}
