//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceCollection {
  /// Returns a new [PlaceCollection] instance.
  PlaceCollection({
    this.items = const [],
  });

  /// Returns a new [PlaceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceCollection(
      items: Place.listFromJson(json[r'items']),
    );
  }

  List<Place> items;

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

  static List<PlaceCollection> listFromJson(List<dynamic> json) {
    return <PlaceCollection>[
      if (json is List)
        for (dynamic value in json) PlaceCollection.fromJson(value),
    ];
  }

  static Map<String, PlaceCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, PlaceCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceCollection-objects as value to a dart map
  static Map<String, List<PlaceCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
