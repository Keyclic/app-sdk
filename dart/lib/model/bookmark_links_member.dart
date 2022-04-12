//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksMember {
  /// Returns a new [BookmarkLinksMember] instance.
  BookmarkLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMember(
      href: json[r'href'],
      iriTemplate:
          BookmarkLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given bookmark.
  String href;

  BookmarkLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BookmarkLinksMember> listFromJson(List<dynamic> json) {
    return <BookmarkLinksMember>[
      if (json is List)
        for (dynamic value in json) BookmarkLinksMember.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkLinksMember>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksMember.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksMember-objects as value to a dart map
  static Map<String, List<BookmarkLinksMember>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksMember>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksMember.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BookmarkLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
