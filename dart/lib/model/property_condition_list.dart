//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PropertyConditionList {
  /// Returns a new [PropertyConditionList] instance.
  PropertyConditionList({
    this.allOf,
  });

  /// Returns a new [PropertyConditionList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PropertyConditionList? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PropertyConditionList(
      allOf: ConditionListCondition.listFromJson(json[r'allOf']),
    );
  }

  List<ConditionListCondition>? allOf;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PropertyConditionList &&
        DeepCollectionEquality.unordered().equals(allOf, other.allOf);
  }

  @override
  int get hashCode => (allOf == null ? 0 : allOf.hashCode);

  static List<PropertyConditionList> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PropertyConditionList>[];
    }

    return json.fold(<PropertyConditionList>[],
        (List<PropertyConditionList> previousValue, element) {
      final PropertyConditionList? object =
          PropertyConditionList.fromJson(element);
      if (object is PropertyConditionList) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PropertyConditionList> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PropertyConditionList>{};
    }

    return json.entries.fold(<String, PropertyConditionList>{},
        (Map<String, PropertyConditionList> previousValue, element) {
      final PropertyConditionList? object =
          PropertyConditionList.fromJson(element.value);
      if (object is PropertyConditionList) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PropertyConditionList-objects as value to a dart map
  static Map<String, List<PropertyConditionList>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PropertyConditionList>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PropertyConditionList>>(
          key, PropertyConditionList.listFromJson(value));
    });
  }

  @override
  String toString() => 'PropertyConditionList[allOf=$allOf]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'allOf')) r'allOf': allOf,
    };
  }
}
