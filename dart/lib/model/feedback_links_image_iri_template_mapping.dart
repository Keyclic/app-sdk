//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksImageIriTemplateMapping {
  /// Returns a new [FeedbackLinksImageIriTemplateMapping] instance.
  FeedbackLinksImageIriTemplateMapping({
    this.feedback,
    this.image,
  });

  /// Returns a new [FeedbackLinksImageIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksImageIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImageIriTemplateMapping(
      feedback: json[r'feedback'],
      image: json[r'image'],
    );
  }

  String feedback;

  String image;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplateMapping &&
        other.feedback == feedback &&
        other.image == image;
  }

  @override
  int get hashCode =>
      (feedback == null ? 0 : feedback.hashCode) +
      (image == null ? 0 : image.hashCode);

  static List<FeedbackLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <FeedbackLinksImageIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksImageIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksImageIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImageIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksImageIriTemplateMapping-objects as value to a dart map
  static Map<String, List<FeedbackLinksImageIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<FeedbackLinksImageIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              FeedbackLinksImageIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksImageIriTemplateMapping[feedback=$feedback, image=$image]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (feedback != null) r'feedback': feedback,
      if (image != null) r'image': image,
    };
  }
}
