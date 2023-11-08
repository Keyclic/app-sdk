//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksItemReviewedIriTemplate {
  /// Returns a new [ReviewLinksItemReviewedIriTemplate] instance.
  ReviewLinksItemReviewedIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksItemReviewedIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksItemReviewedIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksItemReviewedIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewedIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksItemReviewedIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksItemReviewedIriTemplate>[];
    }

    return json.fold(<ReviewLinksItemReviewedIriTemplate>[],
        (List<ReviewLinksItemReviewedIriTemplate> previousValue, element) {
      final ReviewLinksItemReviewedIriTemplate? object =
          ReviewLinksItemReviewedIriTemplate.fromJson(element);
      if (object is ReviewLinksItemReviewedIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksItemReviewedIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksItemReviewedIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewLinksItemReviewedIriTemplate>{},
        (Map<String, ReviewLinksItemReviewedIriTemplate> previousValue,
            element) {
      final ReviewLinksItemReviewedIriTemplate? object =
          ReviewLinksItemReviewedIriTemplate.fromJson(element.value);
      if (object is ReviewLinksItemReviewedIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksItemReviewedIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksItemReviewedIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksItemReviewedIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksItemReviewedIriTemplate>>(
          key, ReviewLinksItemReviewedIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewLinksItemReviewedIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
