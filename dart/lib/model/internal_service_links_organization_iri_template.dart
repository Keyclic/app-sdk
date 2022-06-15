//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinksOrganizationIriTemplate {
  /// Returns a new [InternalServiceLinksOrganizationIriTemplate] instance.
  InternalServiceLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [InternalServiceLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksOrganizationIriTemplate(
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

    return other is InternalServiceLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InternalServiceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return InternalServiceLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<InternalServiceLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, InternalServiceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServiceLinksOrganizationIriTemplate?>(
            key, InternalServiceLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServiceLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of InternalServiceLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<InternalServiceLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<InternalServiceLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServiceLinksOrganizationIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
