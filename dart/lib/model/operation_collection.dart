//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationCollection {
  /// Returns a new [OperationCollection] instance.
  OperationCollection({
    this.items,
  });

  /// Returns a new [OperationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<OperationCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationCollection>[];
    }

    return json.fold(<OperationCollection>[],
        (List<OperationCollection> previousValue, element) {
      final OperationCollection? object = OperationCollection.fromJson(element);
      if (object is OperationCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationCollection>{};
    }

    return json.entries.fold(<String, OperationCollection>{},
        (Map<String, OperationCollection> previousValue, element) {
      final OperationCollection? object =
          OperationCollection.fromJson(element.value);
      if (object is OperationCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationCollection-objects as value to a dart map
  static Map<String, List<OperationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationCollection>>(
          key, OperationCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
