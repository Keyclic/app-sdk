//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TermsOfServiceJsonhalRead {
  /// Returns a new [TermsOfServiceJsonhalRead] instance.
  TermsOfServiceJsonhalRead({
    this.content,
  });

  /// Returns a new [TermsOfServiceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TermsOfServiceJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TermsOfServiceJsonhalRead(
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

    return other is TermsOfServiceJsonhalRead && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<TermsOfServiceJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TermsOfServiceJsonhalRead>[];
    }

    return json.fold(<TermsOfServiceJsonhalRead>[],
        (List<TermsOfServiceJsonhalRead> previousValue, element) {
      final TermsOfServiceJsonhalRead? object =
          TermsOfServiceJsonhalRead.fromJson(element);
      if (object is TermsOfServiceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TermsOfServiceJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TermsOfServiceJsonhalRead>{};
    }

    return json.entries.fold(<String, TermsOfServiceJsonhalRead>{},
        (Map<String, TermsOfServiceJsonhalRead> previousValue, element) {
      final TermsOfServiceJsonhalRead? object =
          TermsOfServiceJsonhalRead.fromJson(element.value);
      if (object is TermsOfServiceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TermsOfServiceJsonhalRead-objects as value to a dart map
  static Map<String, List<TermsOfServiceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TermsOfServiceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TermsOfServiceJsonhalRead>>(
          key, TermsOfServiceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'TermsOfServiceJsonhalRead[content=$content]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'content')) r'content': content,
    };
  }
}
