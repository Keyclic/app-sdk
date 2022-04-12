//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksSelfIriTemplate {
  /// Returns a new [BookmarkLinksSelfIriTemplate] instance.
  BookmarkLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplate(
      mapping: BookmarkLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BookmarkLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return BookmarkLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<BookmarkLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, BookmarkLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksSelfIriTemplate?>(
            key, BookmarkLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksSelfIriTemplate>;
  }

  // maps a json object with a list of BookmarkLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BookmarkLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
