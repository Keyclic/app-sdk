//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantPaginationAllOf {
  /// Returns a new [OccupantPaginationAllOf] instance.
  OccupantPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OccupantPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantPaginationAllOf(
      embedded: OccupantCollection.fromJson(json[r'_embedded']),
    );
  }

  OccupantCollection embedded;

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

  static List<OccupantPaginationAllOf> listFromJson(List<dynamic> json) {
    return <OccupantPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) OccupantPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, OccupantPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantPaginationAllOf-objects as value to a dart map
  static Map<String, List<OccupantPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
