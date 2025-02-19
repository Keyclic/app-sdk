//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BinaryCollection {
  /// Returns a new [BinaryCollection] instance.
  BinaryCollection({
    this.items,
  });

  /// Returns a new [BinaryCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BinaryCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BinaryCollection(
      items: Binary.listFromJson(json[r'items']),
    );
  }

  List<Binary>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BinaryCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<BinaryCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <BinaryCollection>[];
    }

    return json.fold(<BinaryCollection>[],
        (List<BinaryCollection> previousValue, element) {
      final BinaryCollection? object = BinaryCollection.fromJson(element);
      if (object is BinaryCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BinaryCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BinaryCollection>{};
    }

    return json.entries.fold(<String, BinaryCollection>{},
        (Map<String, BinaryCollection> previousValue, element) {
      final BinaryCollection? object = BinaryCollection.fromJson(element.value);
      if (object is BinaryCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BinaryCollection-objects as value to a dart map
  static Map<String, List<BinaryCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BinaryCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BinaryCollection>>(
          key, BinaryCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'BinaryCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
