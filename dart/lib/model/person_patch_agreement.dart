//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static PersonPatchAgreement? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PersonPatchAgreement(
      privacyPolicy: json[r'privacyPolicy'],
      termsOfService: json[r'termsOfService'],
      olderThan: json[r'olderThan'],
    );
  }

  bool? privacyPolicy;

  bool? termsOfService;

  bool? olderThan;

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

  static List<PersonPatchAgreement> listFromJson(Iterable? json) {
    if (json == null) {
      return <PersonPatchAgreement>[];
    }

    return json.fold(<PersonPatchAgreement>[],
        (List<PersonPatchAgreement> previousValue, element) {
      final PersonPatchAgreement? object =
          PersonPatchAgreement.fromJson(element);
      if (object is PersonPatchAgreement) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonPatchAgreement> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPatchAgreement>{};
    }

    return json.entries.fold(<String, PersonPatchAgreement>{},
        (Map<String, PersonPatchAgreement> previousValue, element) {
      final PersonPatchAgreement? object =
          PersonPatchAgreement.fromJson(element.value);
      if (object is PersonPatchAgreement) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonPatchAgreement-objects as value to a dart map
  static Map<String, List<PersonPatchAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonPatchAgreement>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonPatchAgreement>>(
          key, PersonPatchAgreement.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PersonPatchAgreement[privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, olderThan=$olderThan]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'privacyPolicy'))
        r'privacyPolicy': privacyPolicy,
      if (keys == null || keys.contains(r'termsOfService'))
        r'termsOfService': termsOfService,
      if (keys == null || keys.contains(r'olderThan')) r'olderThan': olderThan,
    };
  }
}
