//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleCollection {
  /// Returns a new [RuleCollection] instance.
  RuleCollection({
    this.items,
  });

  /// Returns a new [RuleCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<RuleCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <RuleCollection>[];
    }

    return json.fold(<RuleCollection>[],
        (List<RuleCollection> previousValue, element) {
      final RuleCollection? object = RuleCollection.fromJson(element);
      if (object is RuleCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleCollection>{};
    }

    return json.entries.fold(<String, RuleCollection>{},
        (Map<String, RuleCollection> previousValue, element) {
      final RuleCollection? object = RuleCollection.fromJson(element.value);
      if (object is RuleCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleCollection-objects as value to a dart map
  static Map<String, List<RuleCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleCollection>>(
          key, RuleCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
