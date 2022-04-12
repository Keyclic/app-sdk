//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationCollection {
  /// Returns a new [OperationCollection] instance.
  OperationCollection({
    this.items = const [],
  });

  /// Returns a new [OperationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationCollection(
      items: Operation.listFromJson(json[r'items']),
    );
  }

  List<Operation>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<OperationCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationCollection>[];
    }
    return json
        .map((value) {
          return OperationCollection.fromJson(value);
        })
        .whereType<OperationCollection>()
        .toList();
  }

  static Map<String, OperationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, OperationCollection?>(
        key, OperationCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationCollection>;
  }

  // maps a json object with a list of OperationCollection-objects as value to a dart map
  static Map<String, List<OperationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
