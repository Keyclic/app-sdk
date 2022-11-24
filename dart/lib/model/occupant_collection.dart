//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantCollection {
  /// Returns a new [OccupantCollection] instance.
  OccupantCollection({
    this.items = const [],
  });

  /// Returns a new [OccupantCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantCollection(
      items: Occupant.listFromJson(json[r'items']),
    );
  }

  List<Occupant> items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<OccupantCollection> listFromJson(List<dynamic> json) {
    return <OccupantCollection>[
      if (json is List)
        for (dynamic value in json) OccupantCollection.fromJson(value),
    ];
  }

  static Map<String, OccupantCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantCollection-objects as value to a dart map
  static Map<String, List<OccupantCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
