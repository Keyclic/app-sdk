//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationAgreement {
  /// Returns a new [ApplicationAgreement] instance.
  ApplicationAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  /// Returns a new [ApplicationAgreement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationAgreement(
      olderThan: json[r'olderThan'] is! Map
          ? null
          : AgreementOlderThan.fromJson(json[r'olderThan']),
      privacyPolicy: json[r'privacyPolicy'] is! Map
          ? null
          : AgreementPrivacyPolicy.fromJson(json[r'privacyPolicy']),
      termsOfService: json[r'termsOfService'] is! Map
          ? null
          : AgreementTermsOfService.fromJson(json[r'termsOfService']),
    );
  }

  AgreementOlderThan? olderThan;

  AgreementPrivacyPolicy? privacyPolicy;

  AgreementTermsOfService? termsOfService;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationAgreement &&
        other.olderThan == olderThan &&
        other.privacyPolicy == privacyPolicy &&
        other.termsOfService == termsOfService;
  }

  @override
  int get hashCode =>
      (olderThan == null ? 0 : olderThan.hashCode) +
      (privacyPolicy == null ? 0 : privacyPolicy.hashCode) +
      (termsOfService == null ? 0 : termsOfService.hashCode);

  static List<ApplicationAgreement> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ApplicationAgreement>[];
    }

    return json.fold(<ApplicationAgreement>[],
        (List<ApplicationAgreement> previousValue, element) {
      final ApplicationAgreement? object =
          ApplicationAgreement.fromJson(element);
      if (object is ApplicationAgreement) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationAgreement> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationAgreement>{};
    }

    return json.entries.fold(<String, ApplicationAgreement>{},
        (Map<String, ApplicationAgreement> previousValue, element) {
      final ApplicationAgreement? object =
          ApplicationAgreement.fromJson(element.value);
      if (object is ApplicationAgreement) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationAgreement-objects as value to a dart map
  static Map<String, List<ApplicationAgreement>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationAgreement>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationAgreement>>(
          key, ApplicationAgreement.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && olderThan != null) ||
          (keys?.contains(r'olderThan') ?? false))
        r'olderThan': olderThan?.toJson(),
      if ((keys == null && privacyPolicy != null) ||
          (keys?.contains(r'privacyPolicy') ?? false))
        r'privacyPolicy': privacyPolicy?.toJson(),
      if ((keys == null && termsOfService != null) ||
          (keys?.contains(r'termsOfService') ?? false))
        r'termsOfService': termsOfService?.toJson(),
    };
  }
}
