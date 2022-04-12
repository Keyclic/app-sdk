//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksDispatcherIriTemplate {
  /// Returns a new [OrganizationLinksDispatcherIriTemplate] instance.
  OrganizationLinksDispatcherIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksDispatcherIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksDispatcherIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcherIriTemplate(
      mapping: OrganizationLinksDispatcherIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  OrganizationLinksDispatcherIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcherIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksDispatcherIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksDispatcherIriTemplate>[];
    }
    return json
        .map((value) {
          return OrganizationLinksDispatcherIriTemplate.fromJson(value);
        })
        .whereType<OrganizationLinksDispatcherIriTemplate>()
        .toList();
  }

  static Map<String, OrganizationLinksDispatcherIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksDispatcherIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksDispatcherIriTemplate?>(
            key, OrganizationLinksDispatcherIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksDispatcherIriTemplate>;
  }

  // maps a json object with a list of OrganizationLinksDispatcherIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksDispatcherIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksDispatcherIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OrganizationLinksDispatcherIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksDispatcherIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
