//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksSelfIriTemplateMapping {
  /// Returns a new [ReviewLinksSelfIriTemplateMapping] instance.
  ReviewLinksSelfIriTemplateMapping({
    this.review,
  });

  /// Returns a new [ReviewLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelfIriTemplateMapping(
      review: json[r'review'],
    );
  }

  String? review;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplateMapping && other.review == review;
  }

  @override
  int get hashCode => (review == null ? 0 : review.hashCode);

  static List<ReviewLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return ReviewLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<ReviewLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewLinksSelfIriTemplateMapping?>(
            key, ReviewLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of ReviewLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReviewLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ReviewLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewLinksSelfIriTemplateMapping[review=$review]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (review != null) r'review': review,
    };
  }
}
