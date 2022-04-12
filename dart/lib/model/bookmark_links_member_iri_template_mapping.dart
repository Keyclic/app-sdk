//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksMemberIriTemplateMapping {
  /// Returns a new [BookmarkLinksMemberIriTemplateMapping] instance.
  BookmarkLinksMemberIriTemplateMapping({
    this.member,
  });

  /// Returns a new [BookmarkLinksMemberIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksMemberIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMemberIriTemplateMapping(
      member: json[r'member'],
    );
  }

  String? member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMemberIriTemplateMapping &&
        other.member == member;
  }

  @override
  int get hashCode => (member == null ? 0 : member.hashCode);

  static List<BookmarkLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksMemberIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return BookmarkLinksMemberIriTemplateMapping.fromJson(value);
        })
        .whereType<BookmarkLinksMemberIriTemplateMapping>()
        .toList();
  }

  static Map<String, BookmarkLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksMemberIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinksMemberIriTemplateMapping?>(
            key, BookmarkLinksMemberIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinksMemberIriTemplateMapping>;
  }

  // maps a json object with a list of BookmarkLinksMemberIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksMemberIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BookmarkLinksMemberIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BookmarkLinksMemberIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkLinksMemberIriTemplateMapping[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
    };
  }
}
