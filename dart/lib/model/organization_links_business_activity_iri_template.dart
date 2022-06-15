//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksBusinessActivityIriTemplate {
  /// Returns a new [OrganizationLinksBusinessActivityIriTemplate] instance.
  OrganizationLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksBusinessActivityIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksBusinessActivityIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivityIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksBusinessActivityIriTemplate>[];
    }
    return json
        .map((value) {
          return OrganizationLinksBusinessActivityIriTemplate.fromJson(value);
        })
        .whereType<OrganizationLinksBusinessActivityIriTemplate>()
        .toList();
  }

  static Map<String, OrganizationLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksBusinessActivityIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksBusinessActivityIriTemplate?>(
            key, OrganizationLinksBusinessActivityIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksBusinessActivityIriTemplate>;
  }

  // maps a json object with a list of OrganizationLinksBusinessActivityIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksBusinessActivityIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksBusinessActivityIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationLinksBusinessActivityIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksBusinessActivityIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
