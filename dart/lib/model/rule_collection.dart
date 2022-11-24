//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class RuleCollection {
  /// Returns a new [RuleCollection] instance.
  RuleCollection({
    this.items = const [],
  });

  /// Returns a new [RuleCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory RuleCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleCollection(
      items: Rule.listFromJson(json[r'items']),
    );
  }

  List<Rule> items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<RuleCollection> listFromJson(List<dynamic> json) {
    return <RuleCollection>[
      if (json is List)
        for (dynamic value in json) RuleCollection.fromJson(value),
    ];
  }

  static Map<String, RuleCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, RuleCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of RuleCollection-objects as value to a dart map
  static Map<String, List<RuleCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<RuleCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
