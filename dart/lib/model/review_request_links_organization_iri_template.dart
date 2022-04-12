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
    return json
        .map((value) {
          return ReviewRequestLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<ReviewRequestLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, ReviewRequestLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksOrganizationIriTemplate?>(
            key, ReviewRequestLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of ReviewRequestLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestLinksOrganizationIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
