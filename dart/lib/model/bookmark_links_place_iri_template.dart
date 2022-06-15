//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksPlaceIriTemplate {
  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance.
  BookmarkLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BookmarkLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksPlaceIriTemplate>[];
    }
    return json
        .map((value) {
          return BookmarkLinksPlaceIriTemplate.fromJson(value);
        })
        .whereType<BookmarkLinksPlaceIriTemplate>()
        .toList();
  }

  static Map<String, BookmarkLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksPlaceIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksPlaceIriTemplate?>(
            key, BookmarkLinksPlaceIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksPlaceIriTemplate>;
  }

  // maps a json object with a list of BookmarkLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BookmarkLinksPlaceIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
