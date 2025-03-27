//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PrivacyPolicyJsonhalRead {
  /// Returns a new [PrivacyPolicyJsonhalRead] instance.
  PrivacyPolicyJsonhalRead({
    this.content,
  });

  /// Returns a new [PrivacyPolicyJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PrivacyPolicyJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PrivacyPolicyJsonhalRead(
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

    return other is PrivacyPolicyJsonhalRead && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<PrivacyPolicyJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PrivacyPolicyJsonhalRead>[];
    }

    return json.fold(<PrivacyPolicyJsonhalRead>[],
        (List<PrivacyPolicyJsonhalRead> previousValue, element) {
      final PrivacyPolicyJsonhalRead? object =
          PrivacyPolicyJsonhalRead.fromJson(element);
      if (object is PrivacyPolicyJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PrivacyPolicyJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PrivacyPolicyJsonhalRead>{};
    }

    return json.entries.fold(<String, PrivacyPolicyJsonhalRead>{},
        (Map<String, PrivacyPolicyJsonhalRead> previousValue, element) {
      final PrivacyPolicyJsonhalRead? object =
          PrivacyPolicyJsonhalRead.fromJson(element.value);
      if (object is PrivacyPolicyJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PrivacyPolicyJsonhalRead-objects as value to a dart map
  static Map<String, List<PrivacyPolicyJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PrivacyPolicyJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PrivacyPolicyJsonhalRead>>(
          key, PrivacyPolicyJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'PrivacyPolicyJsonhalRead[content=$content]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'content')) r'content': content,
    };
  }
}
