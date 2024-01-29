//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReviewerIriTemplate {
  /// Returns a new [ReviewRequestLinksReviewerIriTemplate] instance.
  ReviewRequestLinksReviewerIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksReviewerIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReviewerIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewerIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewerIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksReviewerIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewerIriTemplate>[];
    }

    return json.fold(<ReviewRequestLinksReviewerIriTemplate>[],
        (List<ReviewRequestLinksReviewerIriTemplate> previousValue, element) {
      final ReviewRequestLinksReviewerIriTemplate? object =
          ReviewRequestLinksReviewerIriTemplate.fromJson(element);
      if (object is ReviewRequestLinksReviewerIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksReviewerIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewerIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksReviewerIriTemplate>{},
        (Map<String, ReviewRequestLinksReviewerIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksReviewerIriTemplate? object =
          ReviewRequestLinksReviewerIriTemplate.fromJson(element.value);
      if (object is ReviewRequestLinksReviewerIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksReviewerIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewerIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksReviewerIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksReviewerIriTemplate>>(
          key, ReviewRequestLinksReviewerIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksReviewerIriTemplate[mapping=$mapping]';

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
