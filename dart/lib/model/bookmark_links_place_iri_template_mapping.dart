//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksPlaceIriTemplateMapping {
  /// Returns a new [BookmarkLinksPlaceIriTemplateMapping] instance.
  BookmarkLinksPlaceIriTemplateMapping({
    this.place,
  });

  /// Returns a new [BookmarkLinksPlaceIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksPlaceIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplateMapping(
      place: json[r'place'],
    );
  }

  String? place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlaceIriTemplateMapping &&
        other.place == place;
  }

  @override
  int get hashCode => (place == null ? 0 : place.hashCode);

  static List<BookmarkLinksPlaceIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksPlaceIriTemplateMapping>[];
    }

    return json.fold(<BookmarkLinksPlaceIriTemplateMapping>[],
        (List<BookmarkLinksPlaceIriTemplateMapping> previousValue, element) {
      final BookmarkLinksPlaceIriTemplateMapping? object =
          BookmarkLinksPlaceIriTemplateMapping.fromJson(element);
      if (object is BookmarkLinksPlaceIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksPlaceIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksPlaceIriTemplateMapping>{};
    }

    return json.entries.fold(<String, BookmarkLinksPlaceIriTemplateMapping>{},
        (Map<String, BookmarkLinksPlaceIriTemplateMapping> previousValue,
            element) {
      final BookmarkLinksPlaceIriTemplateMapping? object =
          BookmarkLinksPlaceIriTemplateMapping.fromJson(element.value);
      if (object is BookmarkLinksPlaceIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksPlaceIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlaceIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksPlaceIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksPlaceIriTemplateMapping>>(
          key, BookmarkLinksPlaceIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkLinksPlaceIriTemplateMapping[place=$place]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'place')) r'place': place,
    };
  }
}
