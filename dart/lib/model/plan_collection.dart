//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanCollection {
  /// Returns a new [PlanCollection] instance.
  PlanCollection({
    this.items = const [],
  });

  /// Returns a new [PlanCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanCollection(
      items: Plan.listFromJson(json[r'items']),
    );
  }

  List<Plan>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<PlanCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanCollection>[];
    }
    return json
        .map((value) {
          return PlanCollection.fromJson(value);
        })
        .whereType<PlanCollection>()
        .toList();
  }

  static Map<String, PlanCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlanCollection?>(key, PlanCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanCollection>;
  }

  // maps a json object with a list of PlanCollection-objects as value to a dart map
  static Map<String, List<PlanCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlanCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
