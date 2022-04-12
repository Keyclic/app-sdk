//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationLinksSelfIriTemplate {
  /// Returns a new [ConfigurationLinksSelfIriTemplate] instance.
  ConfigurationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ConfigurationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelfIriTemplate(
      mapping:
          ConfigurationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ConfigurationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ConfigurationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ConfigurationLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ConfigurationLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ConfigurationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConfigurationLinksSelfIriTemplate?>(
            key, ConfigurationLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ConfigurationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ConfigurationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ConfigurationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ConfigurationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
