//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignatureSigner {
  /// Returns a new [SignatureSigner] instance.
  SignatureSigner({
    this.familyName,
    this.givenName,
  });

  /// Returns a new [SignatureSigner] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignatureSigner? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignatureSigner(
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
    );
  }

  String? familyName;

  String? givenName;

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

  static List<SignatureSigner> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignatureSigner>[];
    }

    return json.fold(<SignatureSigner>[],
        (List<SignatureSigner> previousValue, element) {
      final SignatureSigner? object = SignatureSigner.fromJson(element);
      if (object is SignatureSigner) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignatureSigner> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignatureSigner>{};
    }

    return json.entries.fold(<String, SignatureSigner>{},
        (Map<String, SignatureSigner> previousValue, element) {
      final SignatureSigner? object = SignatureSigner.fromJson(element.value);
      if (object is SignatureSigner) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignatureSigner-objects as value to a dart map
  static Map<String, List<SignatureSigner>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignatureSigner>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignatureSigner>>(
          key, SignatureSigner.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SignatureSigner[familyName=$familyName, givenName=$givenName]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
    };
  }
}
