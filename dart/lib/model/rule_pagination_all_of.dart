//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RulePaginationAllOf {
  /// Returns a new [RulePaginationAllOf] instance.
  RulePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [RulePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RulePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RulePaginationAllOf(
      embedded: RuleCollection.fromJson(json[r'_embedded']),
    );
  }

  RuleCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<RulePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RulePaginationAllOf>[];
    }
    return json
        .map((value) {
          return RulePaginationAllOf.fromJson(value);
        })
        .whereType<RulePaginationAllOf>()
        .toList();
  }

  static Map<String, RulePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RulePaginationAllOf>{};
    }

    final map = json.map((key, value) => MapEntry<String, RulePaginationAllOf?>(
        key, RulePaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RulePaginationAllOf>;
  }

  // maps a json object with a list of RulePaginationAllOf-objects as value to a dart map
  static Map<String, List<RulePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RulePaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RulePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RulePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
