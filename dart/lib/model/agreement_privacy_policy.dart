//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AgreementPrivacyPolicy {
  /// Returns a new [AgreementPrivacyPolicy] instance.
  AgreementPrivacyPolicy({
    this.content,
  });

  /// Returns a new [AgreementPrivacyPolicy] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AgreementPrivacyPolicy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AgreementPrivacyPolicy(
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

    return other is AgreementPrivacyPolicy && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<AgreementPrivacyPolicy> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AgreementPrivacyPolicy>[];
    }

    return json.fold(<AgreementPrivacyPolicy>[],
        (List<AgreementPrivacyPolicy> previousValue, element) {
      final AgreementPrivacyPolicy? object =
          AgreementPrivacyPolicy.fromJson(element);
      if (object is AgreementPrivacyPolicy) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AgreementPrivacyPolicy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementPrivacyPolicy>{};
    }

    return json.entries.fold(<String, AgreementPrivacyPolicy>{},
        (Map<String, AgreementPrivacyPolicy> previousValue, element) {
      final AgreementPrivacyPolicy? object =
          AgreementPrivacyPolicy.fromJson(element.value);
      if (object is AgreementPrivacyPolicy) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AgreementPrivacyPolicy-objects as value to a dart map
  static Map<String, List<AgreementPrivacyPolicy>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AgreementPrivacyPolicy>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AgreementPrivacyPolicy>>(
          key, AgreementPrivacyPolicy.listFromJson(value));
    });
  }

  @override
  String toString() => 'AgreementPrivacyPolicy[content=$content]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && content != null) ||
          (keys?.contains(r'content') ?? false))
        r'content': content,
    };
  }
}
