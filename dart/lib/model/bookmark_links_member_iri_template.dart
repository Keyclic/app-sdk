//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksMemberIriTemplate {
  /// Returns a new [BookmarkLinksMemberIriTemplate] instance.
  BookmarkLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksMemberIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMemberIriTemplate(
      mapping: BookmarkLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksMemberIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMemberIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BookmarkLinksMemberIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksMemberIriTemplate>[];
    }
    return json
        .map((value) {
          return BookmarkLinksMemberIriTemplate.fromJson(value);
        })
        .whereType<BookmarkLinksMemberIriTemplate>()
        .toList();
  }

  static Map<String, BookmarkLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksMemberIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksMemberIriTemplate?>(
            key, BookmarkLinksMemberIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksMemberIriTemplate>;
  }

  // maps a json object with a list of BookmarkLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BookmarkLinksMemberIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
