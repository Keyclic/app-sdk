//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BinaryCollection {
  /// Returns a new [BinaryCollection] instance.
  BinaryCollection({
    this.items = const [],
  });

  /// Returns a new [BinaryCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BinaryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BinaryCollection(
      items: Binary.listFromJson(json[r'items']),
    );
  }

  List<Binary> items;

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

  static List<BinaryCollection> listFromJson(List<dynamic> json) {
    return <BinaryCollection>[
      if (json is List)
        for (dynamic value in json) BinaryCollection.fromJson(value),
    ];
  }

  static Map<String, BinaryCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, BinaryCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BinaryCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BinaryCollection-objects as value to a dart map
  static Map<String, List<BinaryCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BinaryCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
