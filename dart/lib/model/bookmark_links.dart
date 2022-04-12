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
    return json
        .map((value) {
          return BookmarkLinks.fromJson(value);
        })
        .whereType<BookmarkLinks>()
        .toList();
  }

  static Map<String, BookmarkLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BookmarkLinks?>(key, BookmarkLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BookmarkLinks>;
  }

  // maps a json object with a list of BookmarkLinks-objects as value to a dart map
  static Map<String, List<BookmarkLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BookmarkLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BookmarkLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BookmarkLinks[member=$member, place=$place, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
      if (place != null) r'place': place,
      if (self != null) r'self': self,
    };
  }
}
