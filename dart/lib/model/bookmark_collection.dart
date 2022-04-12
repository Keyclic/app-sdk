//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkCollection {
  /// Returns a new [BookmarkCollection] instance.
  BookmarkCollection({
    this.items = const [],
  });

  /// Returns a new [BookmarkCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return BookmarkCollection.fromJson(value);
        })
        .whereType<BookmarkCollection>()
        .toList();
  }

  static Map<String, BookmarkCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, BookmarkCollection?>(
        key, BookmarkCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkCollection>;
  }

  // maps a json object with a list of BookmarkCollection-objects as value to a dart map
  static Map<String, List<BookmarkCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BookmarkCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
