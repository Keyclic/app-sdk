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
    return json
        .map((value) {
          return AgreementPrivacyPolicy.fromJson(value);
        })
        .whereType<AgreementPrivacyPolicy>()
        .toList();
  }

  static Map<String, AgreementPrivacyPolicy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementPrivacyPolicy>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AgreementPrivacyPolicy?>(
            key, AgreementPrivacyPolicy.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AgreementPrivacyPolicy>;
  }

  // maps a json object with a list of AgreementPrivacyPolicy-objects as value to a dart map
  static Map<String, List<AgreementPrivacyPolicy>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AgreementPrivacyPolicy>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AgreementPrivacyPolicy.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AgreementPrivacyPolicy[content=$content]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
    };
  }
}
