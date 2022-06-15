//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksLogoIriTemplate {
  /// Returns a new [OrganizationLinksLogoIriTemplate] instance.
  OrganizationLinksLogoIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksLogoIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksLogoIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksLogoIriTemplate(
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

    return other is OrganizationLinksLogoIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksLogoIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksLogoIriTemplate>[];
    }
    return json
        .map((value) {
          return OrganizationLinksLogoIriTemplate.fromJson(value);
        })
        .whereType<OrganizationLinksLogoIriTemplate>()
        .toList();
  }

  static Map<String, OrganizationLinksLogoIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksLogoIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksLogoIriTemplate?>(
            key, OrganizationLinksLogoIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksLogoIriTemplate>;
  }

  // maps a json object with a list of OrganizationLinksLogoIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksLogoIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksLogoIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationLinksLogoIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationLinksLogoIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
