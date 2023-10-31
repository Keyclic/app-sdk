//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksOrganizationIriTemplate {
  /// Returns a new [ReviewRequestLinksOrganizationIriTemplate] instance.
  ReviewRequestLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksOrganizationIriTemplate>[];
    }

    return json.fold(<ReviewRequestLinksOrganizationIriTemplate>[],
        (List<ReviewRequestLinksOrganizationIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksOrganizationIriTemplate? object =
          ReviewRequestLinksOrganizationIriTemplate.fromJson(element);
      if (object is ReviewRequestLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(
        <String, ReviewRequestLinksOrganizationIriTemplate>{},
        (Map<String, ReviewRequestLinksOrganizationIriTemplate> previousValue,
            element) {
      final ReviewRequestLinksOrganizationIriTemplate? object =
          ReviewRequestLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is ReviewRequestLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksOrganizationIriTemplate>>(
          key, ReviewRequestLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
