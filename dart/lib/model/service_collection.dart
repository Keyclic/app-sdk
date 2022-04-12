//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServiceCollection {
  /// Returns a new [ServiceCollection] instance.
  ServiceCollection({
    this.items = const [],
  });

  /// Returns a new [ServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceCollection(
      items: Service.listFromJson(json[r'items']),
    );
  }

  List<Service>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ServiceCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceCollection>[];
    }
    return json
        .map((value) {
          return ServiceCollection.fromJson(value);
        })
        .whereType<ServiceCollection>()
        .toList();
  }

  static Map<String, ServiceCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, ServiceCollection?>(
        key, ServiceCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ServiceCollection>;
  }

  // maps a json object with a list of ServiceCollection-objects as value to a dart map
  static Map<String, List<ServiceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ServiceCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ServiceCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ServiceCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
