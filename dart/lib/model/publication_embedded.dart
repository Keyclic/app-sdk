//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationEmbedded {
  /// Returns a new [PublicationEmbedded] instance.
  PublicationEmbedded({
    this.author,
    this.place,
  });

  /// Returns a new [PublicationEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationEmbedded(
      author: json[r'author'] is! Map ? null : Person.fromJson(json[r'author']),
      place: json[r'place'] is! Map ? null : Place.fromJson(json[r'place']),
    );
  }

  Person? author;

  Place? place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationEmbedded &&
        other.author == author &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (author == null ? 0 : author.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<PublicationEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationEmbedded>[];
    }

    return json.fold(<PublicationEmbedded>[],
        (List<PublicationEmbedded> previousValue, element) {
      final PublicationEmbedded? object = PublicationEmbedded.fromJson(element);
      if (object is PublicationEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationEmbedded>{};
    }

    return json.entries.fold(<String, PublicationEmbedded>{},
        (Map<String, PublicationEmbedded> previousValue, element) {
      final PublicationEmbedded? object =
          PublicationEmbedded.fromJson(element.value);
      if (object is PublicationEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationEmbedded-objects as value to a dart map
  static Map<String, List<PublicationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationEmbedded>>(
          key, PublicationEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationEmbedded[author=$author, place=$place]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && author != null) ||
          (keys?.contains(r'author') ?? false))
        r'author': author?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
    };
  }
}
