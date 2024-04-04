//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinksMember {
  /// Returns a new [BookmarkLinksMember] instance.
  BookmarkLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BookmarkLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkLinksMember(
      href: json[r'href'],
      iriTemplate:
          BookmarkLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given bookmark.
  String? href;

  BookmarkLinksMemberIriTemplate? iriTemplate;

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

  static List<BookmarkLinksMember> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinksMember>[];
    }

    return json.fold(<BookmarkLinksMember>[],
        (List<BookmarkLinksMember> previousValue, element) {
      final BookmarkLinksMember? object = BookmarkLinksMember.fromJson(element);
      if (object is BookmarkLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinksMember>{};
    }

    return json.entries.fold(<String, BookmarkLinksMember>{},
        (Map<String, BookmarkLinksMember> previousValue, element) {
      final BookmarkLinksMember? object =
          BookmarkLinksMember.fromJson(element.value);
      if (object is BookmarkLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinksMember-objects as value to a dart map
  static Map<String, List<BookmarkLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinksMember>>(
          key, BookmarkLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
