//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanCollection {
  /// Returns a new [PlanCollection] instance.
  PlanCollection({
    this.items = const [],
  });

  /// Returns a new [PlanCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanCollection(
      items: Plan.listFromJson(json[r'items']),
    );
  }

  List<Plan> items;

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

  static List<PlanCollection> listFromJson(List<dynamic> json) {
    return <PlanCollection>[
      if (json is List)
        for (dynamic value in json) PlanCollection.fromJson(value),
    ];
  }

  static Map<String, PlanCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, PlanCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanCollection-objects as value to a dart map
  static Map<String, List<PlanCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
