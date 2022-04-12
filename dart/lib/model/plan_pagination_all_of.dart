//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanPaginationAllOf {
  /// Returns a new [PlanPaginationAllOf] instance.
  PlanPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PlanPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanPaginationAllOf(
      embedded: PlanCollection.fromJson(json[r'_embedded']),
    );
  }

  PlanCollection? embedded;

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

  static List<PlanPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanPaginationAllOf>[];
    }
    return json
        .map((value) {
          return PlanPaginationAllOf.fromJson(value);
        })
        .whereType<PlanPaginationAllOf>()
        .toList();
  }

  static Map<String, PlanPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanPaginationAllOf>{};
    }

    final map = json.map((key, value) => MapEntry<String, PlanPaginationAllOf?>(
        key, PlanPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanPaginationAllOf>;
  }

  // maps a json object with a list of PlanPaginationAllOf-objects as value to a dart map
  static Map<String, List<PlanPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
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
