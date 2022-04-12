//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PropertyItems {
  /// Returns a new [PropertyItems] instance.
  PropertyItems({
    this.oneOf = const [],
  });

  /// Returns a new [PropertyItems] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PropertyItems? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PropertyItems(
      oneOf: ItemsChoice.listFromJson(json[r'oneOf']),
    );
  }

  List<ItemsChoice>? oneOf;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PropertyItems &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf);
  }

  @override
  int get hashCode => (oneOf == null ? 0 : oneOf.hashCode);

  static List<PropertyItems> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PropertyItems>[];
    }
    return json
        .map((value) {
          return PropertyItems.fromJson(value);
        })
        .whereType<PropertyItems>()
        .toList();
  }

  static Map<String, PropertyItems> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PropertyItems>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PropertyItems?>(key, PropertyItems.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PropertyItems>;
  }

  // maps a json object with a list of PropertyItems-objects as value to a dart map
  static Map<String, List<PropertyItems>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PropertyItems>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PropertyItems.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PropertyItems[oneOf=$oneOf]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (oneOf != null) r'oneOf': oneOf,
    };
  }
}
