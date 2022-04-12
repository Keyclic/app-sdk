//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksOrganizationIriTemplate {
  /// Returns a new [ReviewRequestLinksOrganizationIriTemplate] instance.
  ReviewRequestLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <ReviewRequestLinksOrganizationIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksOrganizationIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksOrganizationIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewRequestLinksOrganizationIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
