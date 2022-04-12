//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksConfigurationIriTemplate {
  /// Returns a new [OrganizationLinksConfigurationIriTemplate] instance.
  OrganizationLinksConfigurationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksConfigurationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksConfigurationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksConfigurationIriTemplate(
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

    return other is OrganizationLinksConfigurationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksConfigurationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksConfigurationIriTemplate>[];
    }
    return json
        .map((value) {
          return OrganizationLinksConfigurationIriTemplate.fromJson(value);
        })
        .whereType<OrganizationLinksConfigurationIriTemplate>()
        .toList();
  }

  static Map<String, OrganizationLinksConfigurationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksConfigurationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksConfigurationIriTemplate?>(
            key, OrganizationLinksConfigurationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksConfigurationIriTemplate>;
  }

  // maps a json object with a list of OrganizationLinksConfigurationIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksConfigurationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksConfigurationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationLinksConfigurationIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksConfigurationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
