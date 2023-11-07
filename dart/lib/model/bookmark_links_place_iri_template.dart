//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksPlaceIriTemplate {
  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance.
  BookmarkLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BookmarkLinksPlaceIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksPlaceIriTemplate>[];
    }

    return json.fold(<BookmarkLinksPlaceIriTemplate>[],
        (List<BookmarkLinksPlaceIriTemplate> previousValue, element) {
      final BookmarkLinksPlaceIriTemplate? object =
          BookmarkLinksPlaceIriTemplate.fromJson(element);
      if (object is BookmarkLinksPlaceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksPlaceIriTemplate>{};
    }

    return json.entries.fold(<String, BookmarkLinksPlaceIriTemplate>{},
        (Map<String, BookmarkLinksPlaceIriTemplate> previousValue, element) {
      final BookmarkLinksPlaceIriTemplate? object =
          BookmarkLinksPlaceIriTemplate.fromJson(element.value);
      if (object is BookmarkLinksPlaceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksPlaceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksPlaceIriTemplate>>(
          key, BookmarkLinksPlaceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
