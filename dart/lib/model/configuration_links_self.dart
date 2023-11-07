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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ConfigurationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
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

    return json.fold(<ConfigurationLinksSelf>[],
        (List<ConfigurationLinksSelf> previousValue, element) {
      final ConfigurationLinksSelf? object =
          ConfigurationLinksSelf.fromJson(element);
      if (object is ConfigurationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinksSelf>{};
    }

    return json.entries.fold(<String, ConfigurationLinksSelf>{},
        (Map<String, ConfigurationLinksSelf> previousValue, element) {
      final ConfigurationLinksSelf? object =
          ConfigurationLinksSelf.fromJson(element.value);
      if (object is ConfigurationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationLinksSelf-objects as value to a dart map
  static Map<String, List<ConfigurationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationLinksSelf>>(
          key, ConfigurationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConfigurationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
