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

    return json.fold(<PersonAgreement>[],
        (List<PersonAgreement> previousValue, element) {
      final PersonAgreement? object = PersonAgreement.fromJson(element);
      if (object is PersonAgreement) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonAgreement> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonAgreement>{};
    }

    return json.entries.fold(<String, PersonAgreement>{},
        (Map<String, PersonAgreement> previousValue, element) {
      final PersonAgreement? object = PersonAgreement.fromJson(element.value);
      if (object is PersonAgreement) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonAgreement-objects as value to a dart map
  static Map<String, List<PersonAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonAgreement>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonAgreement>>(
          key, PersonAgreement.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PersonAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && olderThan != null) ||
          (keys?.contains(r'olderThan') ?? false))
        r'olderThan': olderThan,
      if ((keys == null && privacyPolicy != null) ||
          (keys?.contains(r'privacyPolicy') ?? false))
        r'privacyPolicy': privacyPolicy,
      if ((keys == null && termsOfService != null) ||
          (keys?.contains(r'termsOfService') ?? false))
        r'termsOfService': termsOfService,
    };
  }
}
