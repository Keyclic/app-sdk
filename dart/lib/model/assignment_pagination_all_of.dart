//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentPaginationAllOf {
  /// Returns a new [AssignmentPaginationAllOf] instance.
  AssignmentPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [AssignmentPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentPaginationAllOf(
      embedded: AssignmentCollection.fromJson(json[r'_embedded']),
    );
  }

  AssignmentCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<AssignmentPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentPaginationAllOf>[];
    }
    return json
        .map((value) {
          return AssignmentPaginationAllOf.fromJson(value);
        })
        .whereType<AssignmentPaginationAllOf>()
        .toList();
  }

  static Map<String, AssignmentPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentPaginationAllOf?>(
            key, AssignmentPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentPaginationAllOf>;
  }

  // maps a json object with a list of AssignmentPaginationAllOf-objects as value to a dart map
  static Map<String, List<AssignmentPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}