//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantPaginationAllOf {
  /// Returns a new [OccupantPaginationAllOf] instance.
  OccupantPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OccupantPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantPaginationAllOf(
      embedded: OccupantCollection.fromJson(json[r'_embedded']),
    );
  }

  OccupantCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OccupantPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantPaginationAllOf>[];
    }
    return json
        .map((value) {
          return OccupantPaginationAllOf.fromJson(value);
        })
        .whereType<OccupantPaginationAllOf>()
        .toList();
  }

  static Map<String, OccupantPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OccupantPaginationAllOf?>(
            key, OccupantPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantPaginationAllOf>;
  }

  // maps a json object with a list of OccupantPaginationAllOf-objects as value to a dart map
  static Map<String, List<OccupantPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OccupantPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
