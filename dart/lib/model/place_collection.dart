//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceCollection {
  /// Returns a new [PlaceCollection] instance.
  PlaceCollection({
    this.items = const [],
  });

  /// Returns a new [PlaceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceCollection(
      items: Place.listFromJson(json[r'items']),
    );
  }

  List<Place>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<PlaceCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceCollection>[];
    }
    return json
        .map((value) {
          return PlaceCollection.fromJson(value);
        })
        .whereType<PlaceCollection>()
        .toList();
  }

  static Map<String, PlaceCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, PlaceCollection?>(
        key, PlaceCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceCollection>;
  }

  // maps a json object with a list of PlaceCollection-objects as value to a dart map
  static Map<String, List<PlaceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
