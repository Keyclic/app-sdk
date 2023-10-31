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

    return json.fold(<PlanCollection>[],
        (List<PlanCollection> previousValue, element) {
      final PlanCollection? object = PlanCollection.fromJson(element);
      if (object is PlanCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanCollection>{};
    }

    return json.entries.fold(<String, PlanCollection>{},
        (Map<String, PlanCollection> previousValue, element) {
      final PlanCollection? object = PlanCollection.fromJson(element.value);
      if (object is PlanCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanCollection-objects as value to a dart map
  static Map<String, List<PlanCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanCollection>>(
          key, PlanCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
