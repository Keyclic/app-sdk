//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksSelfIriTemplate {
  /// Returns a new [DeviceLinksSelfIriTemplate] instance.
  DeviceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [DeviceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelfIriTemplate(
      mapping: DeviceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DeviceLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DeviceLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return DeviceLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<DeviceLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, DeviceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DeviceLinksSelfIriTemplate?>(
            key, DeviceLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DeviceLinksSelfIriTemplate>;
  }

  // maps a json object with a list of DeviceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<DeviceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DeviceLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DeviceLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DeviceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
