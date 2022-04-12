//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksPersonIriTemplate {
  /// Returns a new [DeviceLinksPersonIriTemplate] instance.
  DeviceLinksPersonIriTemplate({
    this.mapping,
  });

  /// Returns a new [DeviceLinksPersonIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksPersonIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPersonIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DeviceLinksPersonIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksPersonIriTemplate>[];
    }
    return json
        .map((value) {
          return DeviceLinksPersonIriTemplate.fromJson(value);
        })
        .whereType<DeviceLinksPersonIriTemplate>()
        .toList();
  }

  static Map<String, DeviceLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksPersonIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DeviceLinksPersonIriTemplate?>(
            key, DeviceLinksPersonIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DeviceLinksPersonIriTemplate>;
  }

  // maps a json object with a list of DeviceLinksPersonIriTemplate-objects as value to a dart map
  static Map<String, List<DeviceLinksPersonIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DeviceLinksPersonIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DeviceLinksPersonIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DeviceLinksPersonIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
