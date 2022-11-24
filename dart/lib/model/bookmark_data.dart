//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BookmarkData {
  /// Returns a new [BookmarkData] instance.
  BookmarkData({
    @required this.member,
    @required this.place,
  });

  /// Returns a new [BookmarkData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BookmarkData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkData(
      member: json[r'member'],
      place: json[r'place'],
    );
  }

  String member;

  String place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkData &&
        other.member == member &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<BookmarkData> listFromJson(List<dynamic> json) {
    return <BookmarkData>[
      if (json is List)
        for (dynamic value in json) BookmarkData.fromJson(value),
    ];
  }

  static Map<String, BookmarkData> mapFromJson(Map<String, dynamic> json) {
    return <String, BookmarkData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BookmarkData-objects as value to a dart map
  static Map<String, List<BookmarkData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BookmarkData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BookmarkData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BookmarkData[member=$member, place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'member': member,
      r'place': place,
    };
  }
}
