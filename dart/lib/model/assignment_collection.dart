//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentCollection {
  /// Returns a new [AssignmentCollection] instance.
  AssignmentCollection({
    this.items = const [],
  });

  /// Returns a new [AssignmentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentCollection(
      items: Assignment.listFromJson(json[r'items']),
    );
  }

  List<Assignment> items;

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

  static List<AssignmentCollection> listFromJson(List<dynamic> json) {
    return <AssignmentCollection>[
      if (json is List)
        for (dynamic value in json) AssignmentCollection.fromJson(value),
    ];
  }

  static Map<String, AssignmentCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentCollection-objects as value to a dart map
  static Map<String, List<AssignmentCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
