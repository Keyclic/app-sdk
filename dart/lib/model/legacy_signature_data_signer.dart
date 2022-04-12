//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class LegacySignatureDataSigner {
  /// Returns a new [LegacySignatureDataSigner] instance.
  LegacySignatureDataSigner({
    this.familyName,
    this.givenName,
  });

  /// Returns a new [LegacySignatureDataSigner] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory LegacySignatureDataSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return LegacySignatureDataSigner(
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
    );
  }

  String familyName;

  String givenName;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LegacySignatureDataSigner &&
        other.familyName == familyName &&
        other.givenName == givenName;
  }

  @override
  int get hashCode =>
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode);

  static List<LegacySignatureDataSigner> listFromJson(List<dynamic> json) {
    return <LegacySignatureDataSigner>[
      if (json is List)
        for (dynamic value in json) LegacySignatureDataSigner.fromJson(value),
    ];
  }

  static Map<String, LegacySignatureDataSigner> mapFromJson(
      Map<String, dynamic> json) {
    return <String, LegacySignatureDataSigner>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LegacySignatureDataSigner.fromJson(entry.value),
    };
  }

  // maps a json object with a list of LegacySignatureDataSigner-objects as value to a dart map
  static Map<String, List<LegacySignatureDataSigner>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<LegacySignatureDataSigner>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LegacySignatureDataSigner.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'LegacySignatureDataSigner[familyName=$familyName, givenName=$givenName]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (familyName != null) r'familyName': familyName,
      if (givenName != null) r'givenName': givenName,
    };
  }
}
