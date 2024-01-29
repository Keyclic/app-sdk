//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkLinks {
  /// Returns a new [BookmarkLinks] instance.
  BookmarkLinks({
    this.member,
    this.place,
    this.self,
  });

  /// Returns a new [BookmarkLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinks(
      member: BookmarkLinksMember.fromJson(json[r'member']),
      place: BookmarkLinksPlace.fromJson(json[r'place']),
      self: BookmarkLinksSelf.fromJson(json[r'self']),
    );
  }

  BookmarkLinksMember? member;

  BookmarkLinksPlace? place;

  BookmarkLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinks &&
        other.member == member &&
        other.place == place &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<BookmarkLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkLinks>[];
    }

    return json.fold(<BookmarkLinks>[],
        (List<BookmarkLinks> previousValue, element) {
      final BookmarkLinks? object = BookmarkLinks.fromJson(element);
      if (object is BookmarkLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinks>{};
    }

    return json.entries.fold(<String, BookmarkLinks>{},
        (Map<String, BookmarkLinks> previousValue, element) {
      final BookmarkLinks? object = BookmarkLinks.fromJson(element.value);
      if (object is BookmarkLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkLinks-objects as value to a dart map
  static Map<String, List<BookmarkLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkLinks>>(
          key, BookmarkLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkLinks[member=$member, place=$place, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
