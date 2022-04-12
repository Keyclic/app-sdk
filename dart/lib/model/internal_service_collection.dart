//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceCollection {
  /// Returns a new [InternalServiceCollection] instance.
  InternalServiceCollection({
    this.items = const [],
  });

  /// Returns a new [InternalServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceCollection(
      items: InternalService.listFromJson(json[r'items']),
    );
  }

  List<InternalService>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<InternalServiceCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceCollection>[];
    }
    return json
        .map((value) {
          return InternalServiceCollection.fromJson(value);
        })
        .whereType<InternalServiceCollection>()
        .toList();
  }

  static Map<String, InternalServiceCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServiceCollection?>(
            key, InternalServiceCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServiceCollection>;
  }

  // maps a json object with a list of InternalServiceCollection-objects as value to a dart map
  static Map<String, List<InternalServiceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InternalServiceCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServiceCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InternalServiceCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
