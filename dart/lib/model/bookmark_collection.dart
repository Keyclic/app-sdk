//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkCollection {
  /// Returns a new [BookmarkCollection] instance.
  BookmarkCollection({
    this.items,
  });

  /// Returns a new [BookmarkCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkCollection(
      items: Bookmark.listFromJson(json[r'items']),
    );
  }

  List<Bookmark>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<BookmarkCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkCollection>[];
    }

    return json.fold(<BookmarkCollection>[],
        (List<BookmarkCollection> previousValue, element) {
      final BookmarkCollection? object = BookmarkCollection.fromJson(element);
      if (object is BookmarkCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkCollection>{};
    }

    return json.entries.fold(<String, BookmarkCollection>{},
        (Map<String, BookmarkCollection> previousValue, element) {
      final BookmarkCollection? object =
          BookmarkCollection.fromJson(element.value);
      if (object is BookmarkCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkCollection-objects as value to a dart map
  static Map<String, List<BookmarkCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkCollection>>(
          key, BookmarkCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
