//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BinaryPaginationAllOf {
  /// Returns a new [BinaryPaginationAllOf] instance.
  BinaryPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BinaryPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BinaryPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BinaryPaginationAllOf(
      embedded: BinaryCollection.fromJson(json[r'_embedded']),
    );
  }

  BinaryCollection embedded;

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

  static List<BinaryPaginationAllOf> listFromJson(List<dynamic> json) {
    return <BinaryPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) BinaryPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, BinaryPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BinaryPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BinaryPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BinaryPaginationAllOf-objects as value to a dart map
  static Map<String, List<BinaryPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BinaryPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
