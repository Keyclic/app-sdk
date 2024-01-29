//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReviewIriTemplate {
  /// Returns a new [ReviewRequestLinksReviewIriTemplate] instance.
  ReviewRequestLinksReviewIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksReviewIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReviewIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksReviewIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewIriTemplate>[];
    }

    return json.fold(<ReviewRequestLinksReviewIriTemplate>[],
        (List<ReviewRequestLinksReviewIriTemplate> previousValue, element) {
      final ReviewRequestLinksReviewIriTemplate? object =
          ReviewRequestLinksReviewIriTemplate.fromJson(element);
      if (object is ReviewRequestLinksReviewIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksReviewIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksReviewIriTemplate>{},
        (Map<String, ReviewRequestLinksReviewIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksReviewIriTemplate? object =
          ReviewRequestLinksReviewIriTemplate.fromJson(element.value);
      if (object is ReviewRequestLinksReviewIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksReviewIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksReviewIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksReviewIriTemplate>>(
          key, ReviewRequestLinksReviewIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestLinksReviewIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
