//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OlderThanJsonhalRead {
  /// Returns a new [OlderThanJsonhalRead] instance.
  OlderThanJsonhalRead({
    this.content,
  });

  /// Returns a new [OlderThanJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OlderThanJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OlderThanJsonhalRead(
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

    return other is OlderThanJsonhalRead && other.content == content;
  }

  @override
  int get hashCode => (content == null ? 0 : content.hashCode);

  static List<OlderThanJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <OlderThanJsonhalRead>[];
    }

    return json.fold(<OlderThanJsonhalRead>[],
        (List<OlderThanJsonhalRead> previousValue, element) {
      final OlderThanJsonhalRead? object =
          OlderThanJsonhalRead.fromJson(element);
      if (object is OlderThanJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OlderThanJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OlderThanJsonhalRead>{};
    }

    return json.entries.fold(<String, OlderThanJsonhalRead>{},
        (Map<String, OlderThanJsonhalRead> previousValue, element) {
      final OlderThanJsonhalRead? object =
          OlderThanJsonhalRead.fromJson(element.value);
      if (object is OlderThanJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OlderThanJsonhalRead-objects as value to a dart map
  static Map<String, List<OlderThanJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OlderThanJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OlderThanJsonhalRead>>(
          key, OlderThanJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'OlderThanJsonhalRead[content=$content]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'content')) r'content': content,
    };
  }
}
