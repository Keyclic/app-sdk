//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleCollection {
  /// Returns a new [RuleCollection] instance.
  RuleCollection({
    this.items = const [],
  });

  /// Returns a new [RuleCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleCollection(
      items: Rule.listFromJson(json[r'items']),
    );
  }

  List<Rule>? items;

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

  static List<RuleCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleCollection>[];
    }
    return json
        .map((value) {
          return RuleCollection.fromJson(value);
        })
        .whereType<RuleCollection>()
        .toList();
  }

  static Map<String, RuleCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RuleCollection?>(key, RuleCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RuleCollection>;
  }

  // maps a json object with a list of RuleCollection-objects as value to a dart map
  static Map<String, List<RuleCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RuleCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
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
