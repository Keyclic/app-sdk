//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkEmbedded {
  /// Returns a new [BookmarkEmbedded] instance.
  BookmarkEmbedded({
    this.member,
    this.place,
  });

  /// Returns a new [BookmarkEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkEmbedded(
      member: json[r'member'] is! Map ? null : Member.fromJson(json[r'member']),
      place: json[r'place'] is! Map ? null : Place.fromJson(json[r'place']),
    );
  }

  Member? member;

  Place? place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkEmbedded &&
        other.member == member &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<BookmarkEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkEmbedded>[];
    }

    return json.fold(<BookmarkEmbedded>[],
        (List<BookmarkEmbedded> previousValue, element) {
      final BookmarkEmbedded? object = BookmarkEmbedded.fromJson(element);
      if (object is BookmarkEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkEmbedded>{};
    }

    return json.entries.fold(<String, BookmarkEmbedded>{},
        (Map<String, BookmarkEmbedded> previousValue, element) {
      final BookmarkEmbedded? object = BookmarkEmbedded.fromJson(element.value);
      if (object is BookmarkEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkEmbedded-objects as value to a dart map
  static Map<String, List<BookmarkEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkEmbedded>>(
          key, BookmarkEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkEmbedded[member=$member, place=$place]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && member != null) ||
          (keys?.contains(r'member') ?? false))
        r'member': member?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
    };
  }
}
