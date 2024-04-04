//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PropertyItems {
  /// Returns a new [PropertyItems] instance.
  PropertyItems({
    this.oneOf,
  });

  /// Returns a new [PropertyItems] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PropertyItems? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<PropertyItems>[],
        (List<PropertyItems> previousValue, element) {
      final PropertyItems? object = PropertyItems.fromJson(element);
      if (object is PropertyItems) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PropertyItems> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PropertyItems>{};
    }

    return json.entries.fold(<String, PropertyItems>{},
        (Map<String, PropertyItems> previousValue, element) {
      final PropertyItems? object = PropertyItems.fromJson(element.value);
      if (object is PropertyItems) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PropertyItems-objects as value to a dart map
  static Map<String, List<PropertyItems>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PropertyItems>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PropertyItems>>(
          key, PropertyItems.listFromJson(value));
    });
  }

  @override
  String toString() => 'PropertyItems[oneOf=$oneOf]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'oneOf')) r'oneOf': oneOf,
    };
  }
}
