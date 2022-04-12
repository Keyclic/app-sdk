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
      author: Person.fromJson(json[r'author']),
      place: Place.fromJson(json[r'place']),
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
    return json
        .map((value) {
          return PublicationEmbedded.fromJson(value);
        })
        .whereType<PublicationEmbedded>()
        .toList();
  }

  static Map<String, PublicationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationEmbedded>{};
    }

    final map = json.map((key, value) => MapEntry<String, PublicationEmbedded?>(
        key, PublicationEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationEmbedded>;
  }

  // maps a json object with a list of PublicationEmbedded-objects as value to a dart map
  static Map<String, List<PublicationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationEmbedded[author=$author, place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (author != null) r'author': author,
      if (place != null) r'place': place,
    };
  }
}
