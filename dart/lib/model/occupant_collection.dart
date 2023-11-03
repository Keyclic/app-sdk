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

    return json.fold(<OccupantCollection>[],
        (List<OccupantCollection> previousValue, element) {
      final OccupantCollection? object = OccupantCollection.fromJson(element);
      if (object is OccupantCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantCollection>{};
    }

    return json.entries.fold(<String, OccupantCollection>{},
        (Map<String, OccupantCollection> previousValue, element) {
      final OccupantCollection? object =
          OccupantCollection.fromJson(element.value);
      if (object is OccupantCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantCollection-objects as value to a dart map
  static Map<String, List<OccupantCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantCollection>>(
          key, OccupantCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
