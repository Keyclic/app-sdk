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
  static BookmarkLinksPlaceIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
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

  static List<BookmarkLinksPlaceIriTemplate> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
