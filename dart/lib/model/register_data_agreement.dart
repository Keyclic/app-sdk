//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RegisterDataAgreement {
  /// Returns a new [RegisterDataAgreement] instance.
  RegisterDataAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  /// Returns a new [RegisterDataAgreement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RegisterDataAgreement? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RegisterDataAgreement(
      olderThan: json[r'olderThan'],
      privacyPolicy: json[r'privacyPolicy'],
      termsOfService: json[r'termsOfService'],
    );
  }

  bool? olderThan;

  bool? privacyPolicy;

  bool? termsOfService;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterDataAgreement &&
        other.olderThan == olderThan &&
        other.privacyPolicy == privacyPolicy &&
        other.termsOfService == termsOfService;
  }

  @override
  int get hashCode =>
      (olderThan == null ? 0 : olderThan.hashCode) +
      (privacyPolicy == null ? 0 : privacyPolicy.hashCode) +
      (termsOfService == null ? 0 : termsOfService.hashCode);

  static List<RegisterDataAgreement> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RegisterDataAgreement>[];
    }

    return json.fold(<RegisterDataAgreement>[],
        (List<RegisterDataAgreement> previousValue, element) {
      final RegisterDataAgreement? object =
          RegisterDataAgreement.fromJson(element);
      if (object is RegisterDataAgreement) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RegisterDataAgreement> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RegisterDataAgreement>{};
    }

    return json.entries.fold(<String, RegisterDataAgreement>{},
        (Map<String, RegisterDataAgreement> previousValue, element) {
      final RegisterDataAgreement? object =
          RegisterDataAgreement.fromJson(element.value);
      if (object is RegisterDataAgreement) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RegisterDataAgreement-objects as value to a dart map
  static Map<String, List<RegisterDataAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RegisterDataAgreement>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RegisterDataAgreement>>(
          key, RegisterDataAgreement.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RegisterDataAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'olderThan')) r'olderThan': olderThan,
      if (keys == null || keys.contains(r'privacyPolicy'))
        r'privacyPolicy': privacyPolicy,
      if (keys == null || keys.contains(r'termsOfService'))
        r'termsOfService': termsOfService,
    };
  }
}
