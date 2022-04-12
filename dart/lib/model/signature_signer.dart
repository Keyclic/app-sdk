//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignatureSigner {
  /// Returns a new [SignatureSigner] instance.
  SignatureSigner({
    this.familyName,
    this.givenName,
  });

  /// Returns a new [SignatureSigner] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignatureSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureSigner(
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

    return other is SignatureSigner &&
        other.familyName == familyName &&
        other.givenName == givenName;
  }

  @override
  int get hashCode =>
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode);

  static List<SignatureSigner> listFromJson(List<dynamic> json) {
    return <SignatureSigner>[
      if (json is List)
        for (dynamic value in json) SignatureSigner.fromJson(value),
    ];
  }

  static Map<String, SignatureSigner> mapFromJson(Map<String, dynamic> json) {
    return <String, SignatureSigner>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignatureSigner.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignatureSigner-objects as value to a dart map
  static Map<String, List<SignatureSigner>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignatureSigner>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignatureSigner.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'SignatureSigner[familyName=$familyName, givenName=$givenName]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (familyName != null) r'familyName': familyName,
      if (givenName != null) r'givenName': givenName,
    };
  }
}
