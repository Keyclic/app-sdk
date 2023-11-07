//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksSelfIriTemplateMapping {
  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance.
  BookmarkLinksSelfIriTemplateMapping({
    this.bookmark,
  });

  /// Returns a new [BookmarkLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplateMapping(
      bookmark: json[r'bookmark'],
    );
  }

  String? bookmark;

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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<BookmarkLinksSelfIriTemplateMapping>[],
        (List<BookmarkLinksSelfIriTemplateMapping> previousValue, element) {
      final BookmarkLinksSelfIriTemplateMapping? object =
          BookmarkLinksSelfIriTemplateMapping.fromJson(element);
      if (object is BookmarkLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, BookmarkLinksSelfIriTemplateMapping>{},
        (Map<String, BookmarkLinksSelfIriTemplateMapping> previousValue,
            element) {
      final BookmarkLinksSelfIriTemplateMapping? object =
          BookmarkLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is BookmarkLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksSelfIriTemplateMapping>>(
          key, BookmarkLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkLinksSelfIriTemplateMapping[bookmark=$bookmark]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && bookmark != null) ||
          (keys?.contains(r'bookmark') ?? false))
        r'bookmark': bookmark,
    };
  }
}
