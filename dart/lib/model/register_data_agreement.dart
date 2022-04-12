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
  static RegisterDataAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return RegisterDataAgreement.fromJson(value);
        })
        .whereType<RegisterDataAgreement>()
        .toList();
  }

  static Map<String, RegisterDataAgreement> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RegisterDataAgreement>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RegisterDataAgreement?>(
            key, RegisterDataAgreement.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RegisterDataAgreement>;
  }

  // maps a json object with a list of RegisterDataAgreement-objects as value to a dart map
  static Map<String, List<RegisterDataAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RegisterDataAgreement>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RegisterDataAgreement.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'RegisterDataAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (olderThan != null) r'olderThan': olderThan,
      if (privacyPolicy != null) r'privacyPolicy': privacyPolicy,
      if (termsOfService != null) r'termsOfService': termsOfService,
    };
  }
}
