//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksPlace {
  /// Returns a new [BookmarkLinksPlace] instance.
  BookmarkLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksPlace? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkLinksPlace(
      href: json[r'href'],
      iriTemplate: BookmarkLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given bookmark.
  String? href;

  BookmarkLinksPlaceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BookmarkLinksPlace> listFromJson(Iterable? json) {
    if (json == null) {
      return <BookmarkLinksPlace>[];
    }

    return json.fold(<BookmarkLinksPlace>[],
        (List<BookmarkLinksPlace> previousValue, element) {
      final BookmarkLinksPlace? object = BookmarkLinksPlace.fromJson(element);
      if (object is BookmarkLinksPlace) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksPlace> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksPlace>{};
    }

    return json.entries.fold(<String, BookmarkLinksPlace>{},
        (Map<String, BookmarkLinksPlace> previousValue, element) {
      final BookmarkLinksPlace? object =
          BookmarkLinksPlace.fromJson(element.value);
      if (object is BookmarkLinksPlace) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksPlace-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksPlace>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksPlace>>(
          key, BookmarkLinksPlace.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkLinksPlace[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
