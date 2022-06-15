//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentCollection {
  /// Returns a new [AssignmentCollection] instance.
  AssignmentCollection({
    this.items = const [],
  });

  /// Returns a new [AssignmentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentCollection(
      items: Assignment.listFromJson(json[r'items']),
    );
  }

  List<Assignment>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<AssignmentCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentCollection>[];
    }
    return json
        .map((value) {
          return AssignmentCollection.fromJson(value);
        })
        .whereType<AssignmentCollection>()
        .toList();
  }

  static Map<String, AssignmentCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentCollection?>(
            key, AssignmentCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentCollection>;
  }

  // maps a json object with a list of AssignmentCollection-objects as value to a dart map
  static Map<String, List<AssignmentCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
