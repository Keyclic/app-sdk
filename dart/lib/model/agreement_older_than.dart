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

    return json.fold(<AgreementOlderThan>[],
        (List<AgreementOlderThan> previousValue, element) {
      final AgreementOlderThan? object = AgreementOlderThan.fromJson(element);
      if (object is AgreementOlderThan) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AgreementOlderThan> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AgreementOlderThan>{};
    }

    return json.entries.fold(<String, AgreementOlderThan>{},
        (Map<String, AgreementOlderThan> previousValue, element) {
      final AgreementOlderThan? object =
          AgreementOlderThan.fromJson(element.value);
      if (object is AgreementOlderThan) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AgreementOlderThan-objects as value to a dart map
  static Map<String, List<AgreementOlderThan>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AgreementOlderThan>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AgreementOlderThan>>(
          key, AgreementOlderThan.listFromJson(value));
    });
  }

  @override
  String toString() => 'AgreementOlderThan[content=$content]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'content')) r'content': content,
    };
  }
}
