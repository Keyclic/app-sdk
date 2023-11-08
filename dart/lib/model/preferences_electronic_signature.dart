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

    return json.fold(<PreferencesElectronicSignature>[],
        (List<PreferencesElectronicSignature> previousValue, element) {
      final PreferencesElectronicSignature? object =
          PreferencesElectronicSignature.fromJson(element);
      if (object is PreferencesElectronicSignature) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesElectronicSignature> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesElectronicSignature>{};
    }

    return json.entries.fold(<String, PreferencesElectronicSignature>{},
        (Map<String, PreferencesElectronicSignature> previousValue, element) {
      final PreferencesElectronicSignature? object =
          PreferencesElectronicSignature.fromJson(element.value);
      if (object is PreferencesElectronicSignature) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesElectronicSignature-objects as value to a dart map
  static Map<String, List<PreferencesElectronicSignature>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesElectronicSignature>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesElectronicSignature>>(
          key, PreferencesElectronicSignature.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesElectronicSignature[enabled=$enabled]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && enabled != null) ||
          (keys?.contains(r'enabled') ?? false))
        r'enabled': enabled,
    };
  }
}
