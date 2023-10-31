//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NotePaginationAllOf {
  /// Returns a new [NotePaginationAllOf] instance.
  NotePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [NotePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NotePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotePaginationAllOf(
      embedded: NoteCollection.fromJson(json[r'_embedded']),
    );
  }

  NoteCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NotePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<NotePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NotePaginationAllOf>[];
    }

    return json.fold(<NotePaginationAllOf>[],
        (List<NotePaginationAllOf> previousValue, element) {
      final NotePaginationAllOf? object = NotePaginationAllOf.fromJson(element);
      if (object is NotePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NotePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NotePaginationAllOf>{};
    }

    return json.entries.fold(<String, NotePaginationAllOf>{},
        (Map<String, NotePaginationAllOf> previousValue, element) {
      final NotePaginationAllOf? object =
          NotePaginationAllOf.fromJson(element.value);
      if (object is NotePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NotePaginationAllOf-objects as value to a dart map
  static Map<String, List<NotePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NotePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NotePaginationAllOf>>(
          key, NotePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'NotePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
