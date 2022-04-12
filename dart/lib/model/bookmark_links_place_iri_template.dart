//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksPlaceIriTemplate {
  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance.
  BookmarkLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

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

  static List<BookmarkLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return <BookmarkLinksPlaceIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          BookmarkLinksPlaceIriTemplate.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkLinksPlaceIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksPlaceIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
