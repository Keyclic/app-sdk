//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointLinksOrganizationIriTemplate {
  /// Returns a new [CheckpointLinksOrganizationIriTemplate] instance.
  CheckpointLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [CheckpointLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinksOrganizationIriTemplate(
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

    return other is CheckpointLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CheckpointLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <CheckpointLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return CheckpointLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<CheckpointLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, CheckpointLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CheckpointLinksOrganizationIriTemplate?>(
            key, CheckpointLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CheckpointLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of CheckpointLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<CheckpointLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<CheckpointLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              CheckpointLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CheckpointLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
