part of keyclic_sdk_api.api;

class PreferencesElectronicSignature {
  PreferencesElectronicSignature({
    this.enabled,
  });

  factory PreferencesElectronicSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesElectronicSignature(
      enabled: json['enabled'],
    );
  }

  bool enabled;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesElectronicSignature &&
        runtimeType == other.runtimeType &&
        enabled == other.enabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= enabled?.hashCode ?? 0;

    return hashCode;
  }

  static List<PreferencesElectronicSignature> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PreferencesElectronicSignature.fromJson(value))
            ?.toList() ??
        <PreferencesElectronicSignature>[];
  }

  static Map<String, PreferencesElectronicSignature> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PreferencesElectronicSignature>(
            (String key, dynamic value) {
          return MapEntry(key, PreferencesElectronicSignature.fromJson(value));
        }) ??
        <String, PreferencesElectronicSignature>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (enabled != null) 'enabled': enabled,
    };
  }

  @override
  String toString() {
    return 'PreferencesElectronicSignature[enabled=$enabled, ]';
  }
}
