//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksSelf {
  /// Returns a new [BookmarkLinksSelf] instance.
  BookmarkLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : BookmarkLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given bookmark.
  String? href;

  BookmarkLinksSelfIriTemplate? iriTemplate;

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

  static List<BookmarkLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksSelf>[];
    }

    return json.fold(<BookmarkLinksSelf>[],
        (List<BookmarkLinksSelf> previousValue, element) {
      final BookmarkLinksSelf? object = BookmarkLinksSelf.fromJson(element);
      if (object is BookmarkLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksSelf>{};
    }

    return json.entries.fold(<String, BookmarkLinksSelf>{},
        (Map<String, BookmarkLinksSelf> previousValue, element) {
      final BookmarkLinksSelf? object =
          BookmarkLinksSelf.fromJson(element.value);
      if (object is BookmarkLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksSelf-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksSelf>>(
          key, BookmarkLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
