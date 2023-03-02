//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AgreementOlderThan {
  /// Returns a new [AgreementOlderThan] instance.
  AgreementOlderThan({
    this.content,
  });

  /// Returns a new [AgreementOlderThan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AgreementOlderThan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AgreementOlderThan(
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

    return other is AgreementOlderThan && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<AgreementOlderThan> listFromJson(List<dynamic> json) {
    return <AgreementOlderThan>[
      if (json is List)
        for (dynamic value in json) AgreementOlderThan.fromJson(value),
    ];
  }

  static Map<String, AgreementOlderThan> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AgreementOlderThan>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AgreementOlderThan.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AgreementOlderThan-objects as value to a dart map
  static Map<String, List<AgreementOlderThan>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AgreementOlderThan>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AgreementOlderThan.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AgreementOlderThan[content=$content]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
    };
  }
}
