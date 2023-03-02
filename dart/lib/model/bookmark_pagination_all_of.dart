//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkPaginationAllOf {
  /// Returns a new [BookmarkPaginationAllOf] instance.
  BookmarkPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BookmarkPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkPaginationAllOf(
      embedded: BookmarkCollection.fromJson(json[r'_embedded']),
    );
  }

  BookmarkCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<BookmarkPaginationAllOf> listFromJson(List<dynamic> json) {
    return <BookmarkPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) BookmarkPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, BookmarkPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkPaginationAllOf-objects as value to a dart map
  static Map<String, List<BookmarkPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
