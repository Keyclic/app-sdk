//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PublicationJsonhalReadEmbedded {
  /// Returns a new [PublicationJsonhalReadEmbedded] instance.
  PublicationJsonhalReadEmbedded({
    this.author,
    this.place,
  });

  /// Returns a new [PublicationJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationJsonhalReadEmbedded(
      author: PersonJsonhalRead.fromJson(json[r'author']),
      place: PlaceJsonhalRead.fromJson(json[r'place']),
    );
  }

  PersonJsonhalRead? author;

  PlaceJsonhalRead? place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationJsonhalReadEmbedded &&
        other.author == author &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (author == null ? 0 : author.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<PublicationJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <PublicationJsonhalReadEmbedded>[];
    }

    return json.fold(<PublicationJsonhalReadEmbedded>[],
        (List<PublicationJsonhalReadEmbedded> previousValue, element) {
      final PublicationJsonhalReadEmbedded? object =
          PublicationJsonhalReadEmbedded.fromJson(element);
      if (object is PublicationJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, PublicationJsonhalReadEmbedded>{},
        (Map<String, PublicationJsonhalReadEmbedded> previousValue, element) {
      final PublicationJsonhalReadEmbedded? object =
          PublicationJsonhalReadEmbedded.fromJson(element.value);
      if (object is PublicationJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<PublicationJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationJsonhalReadEmbedded>>(
          key, PublicationJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationJsonhalReadEmbedded[author=$author, place=$place]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^author\.').hasMatch(key)))
        r'author': author?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^author\.'))) {
            previousValue.add(element.split(RegExp(r'^author\.')).last);
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
