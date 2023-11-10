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

    return json.fold(<BookmarkLinksSelfIriTemplate>[],
        (List<BookmarkLinksSelfIriTemplate> previousValue, element) {
      final BookmarkLinksSelfIriTemplate? object =
          BookmarkLinksSelfIriTemplate.fromJson(element);
      if (object is BookmarkLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, BookmarkLinksSelfIriTemplate>{},
        (Map<String, BookmarkLinksSelfIriTemplate> previousValue, element) {
      final BookmarkLinksSelfIriTemplate? object =
          BookmarkLinksSelfIriTemplate.fromJson(element.value);
      if (object is BookmarkLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksSelfIriTemplate>>(
          key, BookmarkLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
