//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonAgreement {
  /// Returns a new [PersonAgreement] instance.
  PersonAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  /// Returns a new [PersonAgreement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonAgreement(
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

    return other is PersonAgreement &&
        other.olderThan == olderThan &&
        other.privacyPolicy == privacyPolicy &&
        other.termsOfService == termsOfService;
  }

  @override
  int get hashCode =>
      (olderThan == null ? 0 : olderThan.hashCode) +
      (privacyPolicy == null ? 0 : privacyPolicy.hashCode) +
      (termsOfService == null ? 0 : termsOfService.hashCode);

  static List<PersonAgreement> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonAgreement>[];
    }
    return json
        .map((value) {
          return PersonAgreement.fromJson(value);
        })
        .whereType<PersonAgreement>()
        .toList();
  }

  static Map<String, PersonAgreement> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonAgreement>{};
    }

    final map = json.map((key, value) => MapEntry<String, PersonAgreement?>(
        key, PersonAgreement.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PersonAgreement>;
  }

  // maps a json object with a list of PersonAgreement-objects as value to a dart map
  static Map<String, List<PersonAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PersonAgreement>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PersonAgreement.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PersonAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (olderThan != null) r'olderThan': olderThan,
      if (privacyPolicy != null) r'privacyPolicy': privacyPolicy,
      if (termsOfService != null) r'termsOfService': termsOfService,
    };
  }
}
