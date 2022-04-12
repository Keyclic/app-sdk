//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServicePaginationAllOf {
  /// Returns a new [ServicePaginationAllOf] instance.
  ServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServicePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServicePaginationAllOf(
      embedded: ServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  ServiceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServicePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ServicePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServicePaginationAllOf>[];
    }
    return json
        .map((value) {
          return ServicePaginationAllOf.fromJson(value);
        })
        .whereType<ServicePaginationAllOf>()
        .toList();
  }

  static Map<String, ServicePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServicePaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ServicePaginationAllOf?>(
            key, ServicePaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ServicePaginationAllOf>;
  }

  // maps a json object with a list of ServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ServicePaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ServicePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
