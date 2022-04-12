//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationPaginationAllOf {
  /// Returns a new [OperationPaginationAllOf] instance.
  OperationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OperationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationPaginationAllOf(
      embedded: OperationCollection.fromJson(json[r'_embedded']),
    );
  }

  OperationCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OperationPaginationAllOf> listFromJson(List<dynamic> json) {
    return <OperationPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) OperationPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, OperationPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OperationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
