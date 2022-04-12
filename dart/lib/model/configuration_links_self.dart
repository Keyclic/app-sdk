//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationLinksSelf {
  /// Returns a new [ConfigurationLinksSelf] instance.
  ConfigurationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ConfigurationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ConfigurationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given configuration.
  String? href;

  ConfigurationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ConfigurationLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationLinksSelf>[];
    }
    return json
        .map((value) {
          return ConfigurationLinksSelf.fromJson(value);
        })
        .whereType<ConfigurationLinksSelf>()
        .toList();
  }

  static Map<String, ConfigurationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConfigurationLinksSelf?>(
            key, ConfigurationLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationLinksSelf>;
  }

  // maps a json object with a list of ConfigurationLinksSelf-objects as value to a dart map
  static Map<String, List<ConfigurationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConfigurationLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ConfigurationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
