//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AgreementOlderThan {
  /// Returns a new [AgreementOlderThan] instance.
  AgreementOlderThan({
    this.content,
  });

  /// Returns a new [AgreementOlderThan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AgreementOlderThan? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AgreementOlderThan(
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

    return other is AgreementOlderThan && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<AgreementOlderThan> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AgreementOlderThan>[];
    }
    return json
        .map((value) {
          return AgreementOlderThan.fromJson(value);
        })
        .whereType<AgreementOlderThan>()
        .toList();
  }

  static Map<String, AgreementOlderThan> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementOlderThan>{};
    }

    final map = json.map((key, value) => MapEntry<String, AgreementOlderThan?>(
        key, AgreementOlderThan.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AgreementOlderThan>;
  }

  // maps a json object with a list of AgreementOlderThan-objects as value to a dart map
  static Map<String, List<AgreementOlderThan>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AgreementOlderThan>>{
      if (json is Map)
        for (final entry in json!.entries)
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
