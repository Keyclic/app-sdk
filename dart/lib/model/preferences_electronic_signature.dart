//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PreferencesElectronicSignature {
  /// Returns a new [PreferencesElectronicSignature] instance.
  PreferencesElectronicSignature({
    this.enabled,
  });

  /// Returns a new [PreferencesElectronicSignature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PreferencesElectronicSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesElectronicSignature(
      enabled: json[r'enabled'],
    );
  }

  bool enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesElectronicSignature && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesElectronicSignature> listFromJson(List<dynamic> json) {
    return <PreferencesElectronicSignature>[
      if (json is List)
        for (dynamic value in json)
          PreferencesElectronicSignature.fromJson(value),
    ];
  }

  static Map<String, PreferencesElectronicSignature> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PreferencesElectronicSignature>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PreferencesElectronicSignature.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PreferencesElectronicSignature-objects as value to a dart map
  static Map<String, List<PreferencesElectronicSignature>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PreferencesElectronicSignature>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PreferencesElectronicSignature.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PreferencesElectronicSignature[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (enabled != null) r'enabled': enabled,
    };
  }
}
