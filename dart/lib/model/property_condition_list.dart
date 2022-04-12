//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PropertyConditionList {
  /// Returns a new [PropertyConditionList] instance.
  PropertyConditionList({
    this.allOf = const [],
  });

  /// Returns a new [PropertyConditionList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PropertyConditionList.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PropertyConditionList(
      allOf: ConditionListCondition.listFromJson(json[r'allOf']),
    );
  }

  List<ConditionListCondition> allOf;

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

  static List<PropertyConditionList> listFromJson(List<dynamic> json) {
    return <PropertyConditionList>[
      if (json is List)
        for (dynamic value in json) PropertyConditionList.fromJson(value),
    ];
  }

  static Map<String, PropertyConditionList> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PropertyConditionList>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PropertyConditionList.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PropertyConditionList-objects as value to a dart map
  static Map<String, List<PropertyConditionList>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PropertyConditionList>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PropertyConditionList.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PropertyConditionList[allOf=$allOf]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (allOf != null) r'allOf': allOf,
    };
  }
}
