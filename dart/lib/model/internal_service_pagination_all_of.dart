//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServicePaginationAllOf {
  /// Returns a new [InternalServicePaginationAllOf] instance.
  InternalServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [InternalServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServicePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServicePaginationAllOf(
      embedded: InternalServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  InternalServiceCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServicePaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<InternalServicePaginationAllOf> listFromJson(List<dynamic> json) {
    return <InternalServicePaginationAllOf>[
      if (json is List)
        for (dynamic value in json)
          InternalServicePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, InternalServicePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServicePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServicePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<InternalServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServicePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServicePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InternalServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
