//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksSelfIriTemplateMapping {
  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance.
  BookmarkLinksSelfIriTemplateMapping({
    this.bookmark,
  });

  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplateMapping(
      bookmark: json[r'bookmark'],
    );
  }

  String bookmark;

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
      List<dynamic> json) {
    return <BookmarkLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          BookmarkLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
