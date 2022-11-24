//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationLinks {
  /// Returns a new [ConfigurationLinks] instance.
  ConfigurationLinks({
    this.self,
  });

  /// Returns a new [ConfigurationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinks(
      self: ConfigurationLinksSelf.fromJson(json[r'self']),
    );
  }

  ConfigurationLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<ConfigurationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationLinks>[];
    }

    return json.fold(<ConfigurationLinks>[],
        (List<ConfigurationLinks> previousValue, element) {
      final ConfigurationLinks? object = ConfigurationLinks.fromJson(element);
      if (object is ConfigurationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinks>{};
    }

    return json.entries.fold(<String, ConfigurationLinks>{},
        (Map<String, ConfigurationLinks> previousValue, element) {
      final ConfigurationLinks? object =
          ConfigurationLinks.fromJson(element.value);
      if (object is ConfigurationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationLinks-objects as value to a dart map
  static Map<String, List<ConfigurationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationLinks>>(
          key, ConfigurationLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'ConfigurationLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
