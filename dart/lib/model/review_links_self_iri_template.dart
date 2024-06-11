//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksSelfIriTemplate {
  /// Returns a new [ReviewLinksSelfIriTemplate] instance.
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewLinksSelfIriTemplate(
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

    return other is ReviewLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewLinksSelfIriTemplate>[];
    }

    return json.fold(<ReviewLinksSelfIriTemplate>[],
        (List<ReviewLinksSelfIriTemplate> previousValue, element) {
      final ReviewLinksSelfIriTemplate? object =
          ReviewLinksSelfIriTemplate.fromJson(element);
      if (object is ReviewLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewLinksSelfIriTemplate>{},
        (Map<String, ReviewLinksSelfIriTemplate> previousValue, element) {
      final ReviewLinksSelfIriTemplate? object =
          ReviewLinksSelfIriTemplate.fromJson(element.value);
      if (object is ReviewLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksSelfIriTemplate>>(
          key, ReviewLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewLinksSelfIriTemplate[mapping=$mapping]';

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
