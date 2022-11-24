//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonPatchAgreement {
  /// Returns a new [PersonPatchAgreement] instance.
  PersonPatchAgreement({
    this.privacyPolicy,
    this.termsOfService,
    this.olderThan,
  });

  /// Returns a new [PersonPatchAgreement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonPatchAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchAgreement(
      privacyPolicy: json[r'privacyPolicy'],
      termsOfService: json[r'termsOfService'],
      olderThan: json[r'olderThan'],
    );
  }

  bool privacyPolicy;

  bool termsOfService;

  bool olderThan;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchAgreement &&
        other.privacyPolicy == privacyPolicy &&
        other.termsOfService == termsOfService &&
        other.olderThan == olderThan;
  }

  @override
  int get hashCode =>
      (privacyPolicy == null ? 0 : privacyPolicy.hashCode) +
      (termsOfService == null ? 0 : termsOfService.hashCode) +
      (olderThan == null ? 0 : olderThan.hashCode);

  static List<PersonPatchAgreement> listFromJson(List<dynamic> json) {
    return <PersonPatchAgreement>[
      if (json is List)
        for (dynamic value in json) PersonPatchAgreement.fromJson(value),
    ];
  }

  static Map<String, PersonPatchAgreement> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PersonPatchAgreement>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatchAgreement.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonPatchAgreement-objects as value to a dart map
  static Map<String, List<PersonPatchAgreement>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonPatchAgreement>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatchAgreement.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PersonPatchAgreement[privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, olderThan=$olderThan]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (privacyPolicy != null) r'privacyPolicy': privacyPolicy,
      if (termsOfService != null) r'termsOfService': termsOfService,
      if (olderThan != null) r'olderThan': olderThan,
    };
  }
}
