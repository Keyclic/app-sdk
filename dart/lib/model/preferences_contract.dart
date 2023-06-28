//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesContract {
  /// Returns a new [PreferencesContract] instance.
  PreferencesContract({
    this.enabled,
  });

  /// Returns a new [PreferencesContract] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesContract? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesContract(
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

    return other is PreferencesContract && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesContract> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesContract>[];
    }

    return json.fold(<PreferencesContract>[],
        (List<PreferencesContract> previousValue, element) {
      final PreferencesContract? object = PreferencesContract.fromJson(element);
      if (object is PreferencesContract) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesContract> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesContract>{};
    }

    return json.entries.fold(<String, PreferencesContract>{},
        (Map<String, PreferencesContract> previousValue, element) {
      final PreferencesContract? object =
          PreferencesContract.fromJson(element.value);
      if (object is PreferencesContract) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesContract-objects as value to a dart map
  static Map<String, List<PreferencesContract>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesContract>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesContract>>(
          key, PreferencesContract.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesContract[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (enabled != null) r'enabled': enabled,
    };
  }
}
