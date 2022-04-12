//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOrganizationIriTemplate {
  /// Returns a new [OperationLinksOrganizationIriTemplate] instance.
  OperationLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOrganizationIriTemplate(
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

    return other is OperationLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return OperationLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<OperationLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, OperationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksOrganizationIriTemplate?>(
            key, OperationLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of OperationLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OperationLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OperationLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
