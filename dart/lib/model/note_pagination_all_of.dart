//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NotePaginationAllOf {
  /// Returns a new [NotePaginationAllOf] instance.
  NotePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [NotePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NotePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NotePaginationAllOf(
      embedded: NoteCollection.fromJson(json[r'_embedded']),
    );
  }

  NoteCollection embedded;

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

  static List<NotePaginationAllOf> listFromJson(List<dynamic> json) {
    return <NotePaginationAllOf>[
      if (json is List)
        for (dynamic value in json) NotePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, NotePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, NotePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NotePaginationAllOf-objects as value to a dart map
  static Map<String, List<NotePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NotePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NotePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
