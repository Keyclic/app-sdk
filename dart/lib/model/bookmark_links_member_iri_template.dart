//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksMemberIriTemplate {
  /// Returns a new [BookmarkLinksMemberIriTemplate] instance.
  BookmarkLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [BookmarkLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksMemberIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping? mapping;

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

  static List<BookmarkLinksMemberIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <BookmarkLinksMemberIriTemplate>[];
    }

    return json.fold(<BookmarkLinksMemberIriTemplate>[],
        (List<BookmarkLinksMemberIriTemplate> previousValue, element) {
      final BookmarkLinksMemberIriTemplate? object =
          BookmarkLinksMemberIriTemplate.fromJson(element);
      if (object is BookmarkLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, BookmarkLinksMemberIriTemplate>{},
        (Map<String, BookmarkLinksMemberIriTemplate> previousValue, element) {
      final BookmarkLinksMemberIriTemplate? object =
          BookmarkLinksMemberIriTemplate.fromJson(element.value);
      if (object is BookmarkLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<BookmarkLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksMemberIriTemplate>>(
          key, BookmarkLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkLinksMemberIriTemplate[mapping=$mapping]';

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
