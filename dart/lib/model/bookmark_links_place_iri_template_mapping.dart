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
  static BookmarkLinksPlaceIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return BookmarkLinksPlaceIriTemplateMapping.fromJson(value);
        })
        .whereType<BookmarkLinksPlaceIriTemplateMapping>()
        .toList();
  }

  static Map<String, BookmarkLinksPlaceIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksPlaceIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksPlaceIriTemplateMapping?>(
            key, BookmarkLinksPlaceIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksPlaceIriTemplateMapping>;
  }

  // maps a json object with a list of BookmarkLinksPlaceIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlaceIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksPlaceIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BookmarkLinksPlaceIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkLinksPlaceIriTemplateMapping[place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (place != null) r'place': place,
    };
  }
}
