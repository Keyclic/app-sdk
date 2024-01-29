//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksSelfIriTemplate {
  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance.
  ReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplate(
      mapping:
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewRequestLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksSelfIriTemplate>[];
    }

    return json.fold(<ReviewRequestLinksSelfIriTemplate>[],
        (List<ReviewRequestLinksSelfIriTemplate> previousValue, element) {
      final ReviewRequestLinksSelfIriTemplate? object =
          ReviewRequestLinksSelfIriTemplate.fromJson(element);
      if (object is ReviewRequestLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksSelfIriTemplate>{},
        (Map<String, ReviewRequestLinksSelfIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksSelfIriTemplate? object =
          ReviewRequestLinksSelfIriTemplate.fromJson(element.value);
      if (object is ReviewRequestLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksSelfIriTemplate>>(
          key, ReviewRequestLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestLinksSelfIriTemplate[mapping=$mapping]';

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
