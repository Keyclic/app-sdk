//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksMemberIriTemplate {
  /// Returns a new [BookmarkLinksMemberIriTemplate] instance.
  BookmarkLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping mapping;

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

  static List<BookmarkLinksMemberIriTemplate> listFromJson(List<dynamic> json) {
    return <BookmarkLinksMemberIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          BookmarkLinksMemberIriTemplate.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkLinksMemberIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksMemberIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
