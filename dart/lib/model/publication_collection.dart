//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationCollection {
  /// Returns a new [PublicationCollection] instance.
  PublicationCollection({
    this.items = const [],
  });

  /// Returns a new [PublicationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationCollection(
      items: Publication.listFromJson(json[r'items']),
    );
  }

  List<Publication>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<PublicationCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationCollection>[];
    }
    return json
        .map((value) {
          return PublicationCollection.fromJson(value);
        })
        .whereType<PublicationCollection>()
        .toList();
  }

  static Map<String, PublicationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationCollection?>(
            key, PublicationCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationCollection>;
  }

  // maps a json object with a list of PublicationCollection-objects as value to a dart map
  static Map<String, List<PublicationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
