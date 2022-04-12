//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationPaginationAllOf {
  /// Returns a new [OperationPaginationAllOf] instance.
  OperationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OperationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationPaginationAllOf(
      embedded: OperationCollection.fromJson(json[r'_embedded']),
    );
  }

  OperationCollection? embedded;

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

  static List<OperationPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationPaginationAllOf>[];
    }
    return json
        .map((value) {
          return OperationPaginationAllOf.fromJson(value);
        })
        .whereType<OperationPaginationAllOf>()
        .toList();
  }

  static Map<String, OperationPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationPaginationAllOf?>(
            key, OperationPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationPaginationAllOf>;
  }

  // maps a json object with a list of OperationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OperationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
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
