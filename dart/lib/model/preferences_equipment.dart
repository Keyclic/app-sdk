//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesEquipment {
  /// Returns a new [PreferencesEquipment] instance.
  PreferencesEquipment({
    this.enabled,
  });

  /// Returns a new [PreferencesEquipment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesEquipment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesEquipment(
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

    return other is PreferencesEquipment && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesEquipment> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesEquipment>[];
    }

    return json.fold(<PreferencesEquipment>[],
        (List<PreferencesEquipment> previousValue, element) {
      final PreferencesEquipment? object =
          PreferencesEquipment.fromJson(element);
      if (object is PreferencesEquipment) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesEquipment> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesEquipment>{};
    }

    return json.entries.fold(<String, PreferencesEquipment>{},
        (Map<String, PreferencesEquipment> previousValue, element) {
      final PreferencesEquipment? object =
          PreferencesEquipment.fromJson(element.value);
      if (object is PreferencesEquipment) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesEquipment-objects as value to a dart map
  static Map<String, List<PreferencesEquipment>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesEquipment>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesEquipment>>(
          key, PreferencesEquipment.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesEquipment[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
