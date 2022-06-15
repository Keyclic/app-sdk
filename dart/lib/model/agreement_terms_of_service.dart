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
    return json
        .map((value) {
          return AgreementTermsOfService.fromJson(value);
        })
        .whereType<AgreementTermsOfService>()
        .toList();
  }

  static Map<String, AgreementTermsOfService> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementTermsOfService>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AgreementTermsOfService?>(
            key, AgreementTermsOfService.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AgreementTermsOfService>;
  }

  // maps a json object with a list of AgreementTermsOfService-objects as value to a dart map
  static Map<String, List<AgreementTermsOfService>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AgreementTermsOfService>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AgreementTermsOfService.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AgreementTermsOfService[content=$content]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
    };
  }
}
