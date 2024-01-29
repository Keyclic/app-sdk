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

    return json.fold(<ReviewLinksSelfIriTemplateMapping>[],
        (List<ReviewLinksSelfIriTemplateMapping> previousValue, element) {
      final ReviewLinksSelfIriTemplateMapping? object =
          ReviewLinksSelfIriTemplateMapping.fromJson(element);
      if (object is ReviewLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ReviewLinksSelfIriTemplateMapping>{},
        (Map<String, ReviewLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ReviewLinksSelfIriTemplateMapping? object =
          ReviewLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is ReviewLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReviewLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksSelfIriTemplateMapping>>(
          key, ReviewLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewLinksSelfIriTemplateMapping[review=$review]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'review')) r'review': review,
    };
  }
}
