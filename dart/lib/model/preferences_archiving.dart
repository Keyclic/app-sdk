//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesArchiving {
  /// Returns a new [PreferencesArchiving] instance.
  PreferencesArchiving({
    this.enabled,
  });

  /// Returns a new [PreferencesArchiving] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesArchiving? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesArchiving(
      enabled: json[r'enabled'],
    );
  }

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesArchiving && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesArchiving> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesArchiving>[];
    }

    return json.fold(<PreferencesArchiving>[],
        (List<PreferencesArchiving> previousValue, element) {
      final PreferencesArchiving? object =
          PreferencesArchiving.fromJson(element);
      if (object is PreferencesArchiving) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesArchiving> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesArchiving>{};
    }

    return json.entries.fold(<String, PreferencesArchiving>{},
        (Map<String, PreferencesArchiving> previousValue, element) {
      final PreferencesArchiving? object =
          PreferencesArchiving.fromJson(element.value);
      if (object is PreferencesArchiving) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesArchiving-objects as value to a dart map
  static Map<String, List<PreferencesArchiving>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesArchiving>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesArchiving>>(
          key, PreferencesArchiving.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesArchiving[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
