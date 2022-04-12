//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AgreementTermsOfService {
  /// Returns a new [AgreementTermsOfService] instance.
  AgreementTermsOfService({
    this.content,
  });

  /// Returns a new [AgreementTermsOfService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AgreementTermsOfService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AgreementTermsOfService(
      content: json[r'content'],
    );
  }

  String content;

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

  static List<AgreementTermsOfService> listFromJson(List<dynamic> json) {
    return <AgreementTermsOfService>[
      if (json is List)
        for (dynamic value in json) AgreementTermsOfService.fromJson(value),
    ];
  }

  static Map<String, AgreementTermsOfService> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AgreementTermsOfService>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AgreementTermsOfService.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AgreementTermsOfService-objects as value to a dart map
  static Map<String, List<AgreementTermsOfService>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AgreementTermsOfService>>{
      if (json is Map)
        for (final entry in json.entries)
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
