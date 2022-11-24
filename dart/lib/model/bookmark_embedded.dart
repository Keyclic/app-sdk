//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkEmbedded {
  /// Returns a new [BookmarkEmbedded] instance.
  BookmarkEmbedded({
    this.member,
    this.place,
  });

  /// Returns a new [BookmarkEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkEmbedded(
      member: Member.fromJson(json[r'member']),
      place: Place.fromJson(json[r'place']),
    );
  }

  Member member;

  Place place;

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

  static List<BookmarkEmbedded> listFromJson(List<dynamic> json) {
    return <BookmarkEmbedded>[
      if (json is List)
        for (dynamic value in json) BookmarkEmbedded.fromJson(value),
    ];
  }

  static Map<String, BookmarkEmbedded> mapFromJson(Map<String, dynamic> json) {
    return <String, BookmarkEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkEmbedded-objects as value to a dart map
  static Map<String, List<BookmarkEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkEmbedded[member=$member, place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
      if (place != null) r'place': place,
    };
  }
}
