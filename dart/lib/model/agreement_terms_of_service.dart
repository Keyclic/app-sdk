//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AgreementTermsOfService {
  /// Returns a new [AgreementTermsOfService] instance.
  AgreementTermsOfService({
    this.content,
  });

  /// Returns a new [AgreementTermsOfService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AgreementTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AgreementTermsOfService(
      content: json[r'content'],
    );
  }

  String? content;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AgreementTermsOfService && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<AgreementTermsOfService> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AgreementTermsOfService>[];
    }

    return json.fold(<AgreementTermsOfService>[],
        (List<AgreementTermsOfService> previousValue, element) {
      final AgreementTermsOfService? object =
          AgreementTermsOfService.fromJson(element);
      if (object is AgreementTermsOfService) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AgreementTermsOfService> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementTermsOfService>{};
    }

    return json.entries.fold(<String, AgreementTermsOfService>{},
        (Map<String, AgreementTermsOfService> previousValue, element) {
      final AgreementTermsOfService? object =
          AgreementTermsOfService.fromJson(element.value);
      if (object is AgreementTermsOfService) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AgreementTermsOfService-objects as value to a dart map
  static Map<String, List<AgreementTermsOfService>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AgreementTermsOfService>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AgreementTermsOfService>>(
          key, AgreementTermsOfService.listFromJson(value));
    });
  }

  @override
  String toString() => 'AgreementTermsOfService[content=$content]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'content')) r'content': content,
    };
  }
}
