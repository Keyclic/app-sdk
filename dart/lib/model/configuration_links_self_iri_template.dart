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
  static ConfigurationLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ConfigurationLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConfigurationLinksSelfIriTemplate>[];
    }

    return json.fold(<ConfigurationLinksSelfIriTemplate>[],
        (List<ConfigurationLinksSelfIriTemplate> previousValue, element) {
      final ConfigurationLinksSelfIriTemplate? object =
          ConfigurationLinksSelfIriTemplate.fromJson(element);
      if (object is ConfigurationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ConfigurationLinksSelfIriTemplate>{},
        (Map<String, ConfigurationLinksSelfIriTemplate> previousValue,
            element) {
      final ConfigurationLinksSelfIriTemplate? object =
          ConfigurationLinksSelfIriTemplate.fromJson(element.value);
      if (object is ConfigurationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ConfigurationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationLinksSelfIriTemplate>>(
          key, ConfigurationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ConfigurationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
