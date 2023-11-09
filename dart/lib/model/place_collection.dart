//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceCollection {
  /// Returns a new [PlaceCollection] instance.
  PlaceCollection({
    this.items,
  });

  /// Returns a new [PlaceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Place.listFromJson(json[r'items']),
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

  static List<PlaceCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlaceCollection>[];
    }

    return json.fold(<PlaceCollection>[],
        (List<PlaceCollection> previousValue, element) {
      final PlaceCollection? object = PlaceCollection.fromJson(element);
      if (object is PlaceCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceCollection>{};
    }

    return json.entries.fold(<String, PlaceCollection>{},
        (Map<String, PlaceCollection> previousValue, element) {
      final PlaceCollection? object = PlaceCollection.fromJson(element.value);
      if (object is PlaceCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceCollection-objects as value to a dart map
  static Map<String, List<PlaceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceCollection>>(
          key, PlaceCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
