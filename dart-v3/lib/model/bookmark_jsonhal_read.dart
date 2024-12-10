//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BookmarkJsonhalRead {
  /// Returns a new [BookmarkJsonhalRead] instance.
  BookmarkJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.embedded,
  });

  /// Returns a new [BookmarkJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      embedded: BookmarkJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  BookmarkJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<BookmarkJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <BookmarkJsonhalRead>[];
    }

    return json.fold(<BookmarkJsonhalRead>[],
        (List<BookmarkJsonhalRead> previousValue, element) {
      final BookmarkJsonhalRead? object = BookmarkJsonhalRead.fromJson(element);
      if (object is BookmarkJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkJsonhalRead>{};
    }

    return json.entries.fold(<String, BookmarkJsonhalRead>{},
        (Map<String, BookmarkJsonhalRead> previousValue, element) {
      final BookmarkJsonhalRead? object =
          BookmarkJsonhalRead.fromJson(element.value);
      if (object is BookmarkJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkJsonhalRead-objects as value to a dart map
  static Map<String, List<BookmarkJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkJsonhalRead>>(
          key, BookmarkJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
