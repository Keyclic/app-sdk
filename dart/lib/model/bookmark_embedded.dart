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
  static BookmarkEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkEmbedded(
      member: Member.fromJson(json[r'member']),
      place: Place.fromJson(json[r'place']),
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
    };
  }
}
