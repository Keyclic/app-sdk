//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AgreementJsonhalRead {
  /// Returns a new [AgreementJsonhalRead] instance.
  AgreementJsonhalRead({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  /// Returns a new [AgreementJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AgreementJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AgreementJsonhalRead(
      olderThan: OlderThanJsonhalRead.fromJson(json[r'olderThan']),
      privacyPolicy: PrivacyPolicyJsonhalRead.fromJson(json[r'privacyPolicy']),
      termsOfService:
          TermsOfServiceJsonhalRead.fromJson(json[r'termsOfService']),
    );
  }

  OlderThanJsonhalRead? olderThan;

  PrivacyPolicyJsonhalRead? privacyPolicy;

  TermsOfServiceJsonhalRead? termsOfService;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AgreementJsonhalRead &&
        other.olderThan == olderThan &&
        other.privacyPolicy == privacyPolicy &&
        other.termsOfService == termsOfService;
  }

  @override
  int get hashCode =>
      (olderThan == null ? 0 : olderThan.hashCode) +
      (privacyPolicy == null ? 0 : privacyPolicy.hashCode) +
      (termsOfService == null ? 0 : termsOfService.hashCode);

  static List<AgreementJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AgreementJsonhalRead>[];
    }

    return json.fold(<AgreementJsonhalRead>[],
        (List<AgreementJsonhalRead> previousValue, element) {
      final AgreementJsonhalRead? object =
          AgreementJsonhalRead.fromJson(element);
      if (object is AgreementJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AgreementJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementJsonhalRead>{};
    }

    return json.entries.fold(<String, AgreementJsonhalRead>{},
        (Map<String, AgreementJsonhalRead> previousValue, element) {
      final AgreementJsonhalRead? object =
          AgreementJsonhalRead.fromJson(element.value);
      if (object is AgreementJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AgreementJsonhalRead-objects as value to a dart map
  static Map<String, List<AgreementJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AgreementJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AgreementJsonhalRead>>(
          key, AgreementJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AgreementJsonhalRead[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^olderThan\.').hasMatch(key)))
        r'olderThan': olderThan?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^olderThan\.'))) {
            previousValue.add(element.split(RegExp(r'^olderThan\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^privacyPolicy\.').hasMatch(key)))
        r'privacyPolicy': privacyPolicy?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^privacyPolicy\.'))) {
            previousValue.add(element.split(RegExp(r'^privacyPolicy\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^termsOfService\.').hasMatch(key)))
        r'termsOfService': termsOfService?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^termsOfService\.'))) {
            previousValue.add(element.split(RegExp(r'^termsOfService\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
