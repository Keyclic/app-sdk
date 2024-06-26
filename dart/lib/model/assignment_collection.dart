//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentCollection {
  /// Returns a new [AssignmentCollection] instance.
  AssignmentCollection({
    this.items,
  });

  /// Returns a new [AssignmentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<AssignmentCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignmentCollection>[];
    }

    return json.fold(<AssignmentCollection>[],
        (List<AssignmentCollection> previousValue, element) {
      final AssignmentCollection? object =
          AssignmentCollection.fromJson(element);
      if (object is AssignmentCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentCollection>{};
    }

    return json.entries.fold(<String, AssignmentCollection>{},
        (Map<String, AssignmentCollection> previousValue, element) {
      final AssignmentCollection? object =
          AssignmentCollection.fromJson(element.value);
      if (object is AssignmentCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentCollection-objects as value to a dart map
  static Map<String, List<AssignmentCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentCollection>>(
          key, AssignmentCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
