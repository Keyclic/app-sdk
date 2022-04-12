//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BinaryPaginationAllOf {
  /// Returns a new [BinaryPaginationAllOf] instance.
  BinaryPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BinaryPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BinaryPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BinaryPaginationAllOf(
      embedded: BinaryCollection.fromJson(json[r'_embedded']),
    );
  }

  BinaryCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BinaryPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<BinaryPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BinaryPaginationAllOf>[];
    }
    return json
        .map((value) {
          return BinaryPaginationAllOf.fromJson(value);
        })
        .whereType<BinaryPaginationAllOf>()
        .toList();
  }

  static Map<String, BinaryPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BinaryPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BinaryPaginationAllOf?>(
            key, BinaryPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BinaryPaginationAllOf>;
  }

  // maps a json object with a list of BinaryPaginationAllOf-objects as value to a dart map
  static Map<String, List<BinaryPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BinaryPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BinaryPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BinaryPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
