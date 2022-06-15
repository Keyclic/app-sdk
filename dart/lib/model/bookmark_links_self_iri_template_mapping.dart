//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksSelfIriTemplateMapping {
  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance.
  BookmarkLinksSelfIriTemplateMapping({
    this.bookmark,
  });

  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplateMapping(
      bookmark: json[r'bookmark'],
    );
  }

  String? bookmark;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelfIriTemplateMapping &&
        other.bookmark == bookmark;
  }

  @override
  int get hashCode => (bookmark == null ? 0 : bookmark.hashCode);

  static List<BookmarkLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return BookmarkLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<BookmarkLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, BookmarkLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksSelfIriTemplateMapping?>(
            key, BookmarkLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of BookmarkLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BookmarkLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BookmarkLinksSelfIriTemplateMapping[bookmark=$bookmark]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (bookmark != null) r'bookmark': bookmark,
    };
  }
}
