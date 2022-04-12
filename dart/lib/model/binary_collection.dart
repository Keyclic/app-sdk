//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BinaryCollection {
  /// Returns a new [BinaryCollection] instance.
  BinaryCollection({
    this.items = const [],
  });

  /// Returns a new [BinaryCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BinaryCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<BinaryCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BinaryCollection>[];
    }
    return json
        .map((value) {
          return BinaryCollection.fromJson(value);
        })
        .whereType<BinaryCollection>()
        .toList();
  }

  static Map<String, BinaryCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BinaryCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, BinaryCollection?>(
        key, BinaryCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BinaryCollection>;
  }

  // maps a json object with a list of BinaryCollection-objects as value to a dart map
  static Map<String, List<BinaryCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BinaryCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BinaryCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BinaryCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
