//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationLinksSelfIriTemplateMapping {
  /// Returns a new [ConfigurationLinksSelfIriTemplateMapping] instance.
  ConfigurationLinksSelfIriTemplateMapping({
    this.configuration,
  });

  /// Returns a new [ConfigurationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelfIriTemplateMapping(
      configuration: json[r'configuration'],
    );
  }

  String? configuration;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelfIriTemplateMapping &&
        other.configuration == configuration;
  }

  @override
  int get hashCode => (configuration == null ? 0 : configuration.hashCode);

  static List<ConfigurationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<ConfigurationLinksSelfIriTemplateMapping>[],
        (List<ConfigurationLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ConfigurationLinksSelfIriTemplateMapping? object =
          ConfigurationLinksSelfIriTemplateMapping.fromJson(element);
      if (object is ConfigurationLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, ConfigurationLinksSelfIriTemplateMapping>{},
        (Map<String, ConfigurationLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ConfigurationLinksSelfIriTemplateMapping? object =
          ConfigurationLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is ConfigurationLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ConfigurationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationLinksSelfIriTemplateMapping>>(
          key, ConfigurationLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConfigurationLinksSelfIriTemplateMapping[configuration=$configuration]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (configuration != null) r'configuration': configuration,
    };
  }
}
