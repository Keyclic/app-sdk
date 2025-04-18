//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConfigurationJsonhalRead {
  /// Returns a new [ConfigurationJsonhalRead] instance.
  ConfigurationJsonhalRead({
    this.public,
  });

  /// Returns a new [ConfigurationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConfigurationJsonhalRead(
      public: json[r'public'],
    );
  }

  bool? public;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationJsonhalRead && other.public == public;
  }

  @override
  int get hashCode => (public == null ? 0 : public.hashCode);

  static List<ConfigurationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConfigurationJsonhalRead>[];
    }

    return json.fold(<ConfigurationJsonhalRead>[],
        (List<ConfigurationJsonhalRead> previousValue, element) {
      final ConfigurationJsonhalRead? object =
          ConfigurationJsonhalRead.fromJson(element);
      if (object is ConfigurationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationJsonhalRead>{};
    }

    return json.entries.fold(<String, ConfigurationJsonhalRead>{},
        (Map<String, ConfigurationJsonhalRead> previousValue, element) {
      final ConfigurationJsonhalRead? object =
          ConfigurationJsonhalRead.fromJson(element.value);
      if (object is ConfigurationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationJsonhalRead-objects as value to a dart map
  static Map<String, List<ConfigurationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationJsonhalRead>>(
          key, ConfigurationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ConfigurationJsonhalRead[public=$public]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'public')) r'public': public,
    };
  }
}
