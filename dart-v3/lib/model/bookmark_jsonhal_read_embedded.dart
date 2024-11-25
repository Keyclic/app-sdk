//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BookmarkJsonhalReadEmbedded {
  /// Returns a new [BookmarkJsonhalReadEmbedded] instance.
  BookmarkJsonhalReadEmbedded({
    this.place,
    this.member,
  });

  /// Returns a new [BookmarkJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BookmarkJsonhalReadEmbedded(
      place: AssetJsonhalRead.fromJson(json[r'place']),
      member: MemberJsonhalRead.fromJson(json[r'member']),
    );
  }

  AssetJsonhalRead? place;

  MemberJsonhalRead? member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkJsonhalReadEmbedded &&
        other.place == place &&
        other.member == member;
  }

  @override
  int get hashCode =>
      (place == null ? 0 : place.hashCode) +
      (member == null ? 0 : member.hashCode);

  static List<BookmarkJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <BookmarkJsonhalReadEmbedded>[];
    }

    return json.fold(<BookmarkJsonhalReadEmbedded>[],
        (List<BookmarkJsonhalReadEmbedded> previousValue, element) {
      final BookmarkJsonhalReadEmbedded? object =
          BookmarkJsonhalReadEmbedded.fromJson(element);
      if (object is BookmarkJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, BookmarkJsonhalReadEmbedded>{},
        (Map<String, BookmarkJsonhalReadEmbedded> previousValue, element) {
      final BookmarkJsonhalReadEmbedded? object =
          BookmarkJsonhalReadEmbedded.fromJson(element.value);
      if (object is BookmarkJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<BookmarkJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkJsonhalReadEmbedded>>(
          key, BookmarkJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkJsonhalReadEmbedded[place=$place, member=$member]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
