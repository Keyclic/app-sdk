//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksOrganizationIriTemplate {
  /// Returns a new [PublicationLinksOrganizationIriTemplate] instance.
  PublicationLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksOrganizationIriTemplate(
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

    return other is PublicationLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return PublicationLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<PublicationLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, PublicationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksOrganizationIriTemplate?>(
            key, PublicationLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of PublicationLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<PublicationLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              PublicationLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
