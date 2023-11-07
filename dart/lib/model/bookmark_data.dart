//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkData {
  /// Returns a new [BookmarkData] instance.
  BookmarkData({
    required this.member,
    required this.place,
  });

  /// Returns a new [BookmarkData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkData? fromJson(Map<String, dynamic>? json) {
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
  int get hashCode => member.hashCode + place.hashCode;

  static List<BookmarkData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <BookmarkData>[];
    }

    return json.fold(<BookmarkData>[],
        (List<BookmarkData> previousValue, element) {
      final BookmarkData? object = BookmarkData.fromJson(element);
      if (object is BookmarkData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkData>{};
    }

    return json.entries.fold(<String, BookmarkData>{},
        (Map<String, BookmarkData> previousValue, element) {
      final BookmarkData? object = BookmarkData.fromJson(element.value);
      if (object is BookmarkData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkData-objects as value to a dart map
  static Map<String, List<BookmarkData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkData>>(
          key, BookmarkData.listFromJson(value));
    });
  }

  @override
  String toString() => 'BookmarkData[member=$member, place=$place]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'member': member,
      r'place': place,
    };
  }
}
