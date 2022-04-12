//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantCollection {
  /// Returns a new [OccupantCollection] instance.
  OccupantCollection({
    this.items = const [],
  });

  /// Returns a new [OccupantCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantCollection(
      items: Occupant.listFromJson(json[r'items']),
    );
  }

  List<Occupant>? items;

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

  static List<OccupantCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantCollection>[];
    }
    return json
        .map((value) {
          return OccupantCollection.fromJson(value);
        })
        .whereType<OccupantCollection>()
        .toList();
  }

  static Map<String, OccupantCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, OccupantCollection?>(
        key, OccupantCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantCollection>;
  }

  // maps a json object with a list of OccupantCollection-objects as value to a dart map
  static Map<String, List<OccupantCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
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
