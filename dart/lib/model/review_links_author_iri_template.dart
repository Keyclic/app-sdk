//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksAuthorIriTemplate {
  /// Returns a new [ReviewLinksAuthorIriTemplate] instance.
  ReviewLinksAuthorIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksAuthorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksAuthorIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewLinksAuthorIriTemplate(
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

    return other is ReviewLinksAuthorIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksAuthorIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewLinksAuthorIriTemplate>[];
    }

    return json.fold(<ReviewLinksAuthorIriTemplate>[],
        (List<ReviewLinksAuthorIriTemplate> previousValue, element) {
      final ReviewLinksAuthorIriTemplate? object =
          ReviewLinksAuthorIriTemplate.fromJson(element);
      if (object is ReviewLinksAuthorIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksAuthorIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewLinksAuthorIriTemplate>{},
        (Map<String, ReviewLinksAuthorIriTemplate> previousValue, element) {
      final ReviewLinksAuthorIriTemplate? object =
          ReviewLinksAuthorIriTemplate.fromJson(element.value);
      if (object is ReviewLinksAuthorIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksAuthorIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksAuthorIriTemplate>>(
          key, ReviewLinksAuthorIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewLinksAuthorIriTemplate[mapping=$mapping]';

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
