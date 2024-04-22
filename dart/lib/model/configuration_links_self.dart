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
  static ConfigurationLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ConfigurationLinksSelf> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
