//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServicePaginationAllOf {
  /// Returns a new [ExternalServicePaginationAllOf] instance.
  ExternalServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ExternalServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServicePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePaginationAllOf(
      embedded: ExternalServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  ExternalServiceCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ExternalServicePaginationAllOf> listFromJson(List<dynamic> json) {
    return <ExternalServicePaginationAllOf>[
      if (json is List)
        for (dynamic value in json)
          ExternalServicePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, ExternalServicePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServicePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServicePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ExternalServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServicePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServicePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
