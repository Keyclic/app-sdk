//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReviewIriTemplate {
  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplate] instance.
  ReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksItemToReviewIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplate(
      mapping: ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ReviewRequestLinksItemToReviewIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReviewIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksItemToReviewIriTemplate> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ReviewRequestLinksItemToReviewIriTemplate>[];
    }

    return json.fold(<ReviewRequestLinksItemToReviewIriTemplate>[],
        (List<ReviewRequestLinksItemToReviewIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksItemToReviewIriTemplate? object =
          ReviewRequestLinksItemToReviewIriTemplate.fromJson(element);
      if (object is ReviewRequestLinksItemToReviewIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksItemToReviewIriTemplate>{};
    }

    return json.entries.fold(
        <String, ReviewRequestLinksItemToReviewIriTemplate>{},
        (Map<String, ReviewRequestLinksItemToReviewIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksItemToReviewIriTemplate? object =
          ReviewRequestLinksItemToReviewIriTemplate.fromJson(element.value);
      if (object is ReviewRequestLinksItemToReviewIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksItemToReviewIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReviewIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksItemToReviewIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksItemToReviewIriTemplate>>(
          key, ReviewRequestLinksItemToReviewIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping]';

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
