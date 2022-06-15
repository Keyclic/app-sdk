//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesElectronicSignature {
  /// Returns a new [PreferencesElectronicSignature] instance.
  PreferencesElectronicSignature({
    this.enabled,
  });

  /// Returns a new [PreferencesElectronicSignature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesElectronicSignature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesElectronicSignature(
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

    return other is PreferencesElectronicSignature && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesElectronicSignature> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PreferencesElectronicSignature>[];
    }
    return json
        .map((value) {
          return PreferencesElectronicSignature.fromJson(value);
        })
        .whereType<PreferencesElectronicSignature>()
        .toList();
  }

  static Map<String, PreferencesElectronicSignature> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesElectronicSignature>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PreferencesElectronicSignature?>(
            key, PreferencesElectronicSignature.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PreferencesElectronicSignature>;
  }

  // maps a json object with a list of PreferencesElectronicSignature-objects as value to a dart map
  static Map<String, List<PreferencesElectronicSignature>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PreferencesElectronicSignature>>{
      if (json is Map)
        for (final entry in json!.entries)
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
