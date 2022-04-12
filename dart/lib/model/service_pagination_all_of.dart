//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ServicePaginationAllOf {
  /// Returns a new [ServicePaginationAllOf] instance.
  ServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ServicePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServicePaginationAllOf(
      embedded: ServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  ServiceCollection embedded;

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

  static List<ServicePaginationAllOf> listFromJson(List<dynamic> json) {
    return <ServicePaginationAllOf>[
      if (json is List)
        for (dynamic value in json) ServicePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, ServicePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ServicePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ServicePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ServicePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
