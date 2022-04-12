//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksSelf {
  /// Returns a new [BookmarkLinksSelf] instance.
  BookmarkLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelf(
      href: json[r'href'],
      iriTemplate: BookmarkLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given bookmark.
  String href;

  BookmarkLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BookmarkLinksSelf> listFromJson(List<dynamic> json) {
    return <BookmarkLinksSelf>[
      if (json is List)
        for (dynamic value in json) BookmarkLinksSelf.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, BookmarkLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksSelf-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BookmarkLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
