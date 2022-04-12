//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanPaginationAllOf {
  /// Returns a new [PlanPaginationAllOf] instance.
  PlanPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PlanPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanPaginationAllOf(
      embedded: PlanCollection.fromJson(json[r'_embedded']),
    );
  }

  PlanCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<PlanPaginationAllOf> listFromJson(List<dynamic> json) {
    return <PlanPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) PlanPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, PlanPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlanPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanPaginationAllOf-objects as value to a dart map
  static Map<String, List<PlanPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
