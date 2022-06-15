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
    return json
        .map((value) {
          return ConfigurationLinks.fromJson(value);
        })
        .whereType<ConfigurationLinks>()
        .toList();
  }

  static Map<String, ConfigurationLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, ConfigurationLinks?>(
        key, ConfigurationLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationLinks>;
  }

  // maps a json object with a list of ConfigurationLinks-objects as value to a dart map
  static Map<String, List<ConfigurationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConfigurationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ConfigurationLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
