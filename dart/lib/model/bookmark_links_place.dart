//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkLinksPlace {
  /// Returns a new [BookmarkLinksPlace] instance.
  BookmarkLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlace(
      href: json[r'href'],
      iriTemplate: BookmarkLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given bookmark.
  String href;

  BookmarkLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BookmarkLinksPlace> listFromJson(List<dynamic> json) {
    return <BookmarkLinksPlace>[
      if (json is List)
        for (dynamic value in json) BookmarkLinksPlace.fromJson(value),
    ];
  }

  static Map<String, BookmarkLinksPlace> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BookmarkLinksPlace>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksPlace.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkLinksPlace-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlace>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkLinksPlace>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkLinksPlace.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BookmarkLinksPlace[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
