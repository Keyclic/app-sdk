//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkPaginationAllOf {
  /// Returns a new [BookmarkPaginationAllOf] instance.
  BookmarkPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BookmarkPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkPaginationAllOf(
      embedded: BookmarkCollection.fromJson(json[r'_embedded']),
    );
  }

  BookmarkCollection? embedded;

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

  static List<BookmarkPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkPaginationAllOf>[];
    }

    return json.fold(<BookmarkPaginationAllOf>[],
        (List<BookmarkPaginationAllOf> previousValue, element) {
      final BookmarkPaginationAllOf? object =
          BookmarkPaginationAllOf.fromJson(element);
      if (object is BookmarkPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkPaginationAllOf>{};
    }

    return json.entries.fold(<String, BookmarkPaginationAllOf>{},
        (Map<String, BookmarkPaginationAllOf> previousValue, element) {
      final BookmarkPaginationAllOf? object =
          BookmarkPaginationAllOf.fromJson(element.value);
      if (object is BookmarkPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkPaginationAllOf-objects as value to a dart map
  static Map<String, List<BookmarkPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkPaginationAllOf>>(
          key, BookmarkPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
