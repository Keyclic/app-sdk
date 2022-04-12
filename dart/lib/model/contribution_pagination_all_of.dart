//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionPaginationAllOf {
  /// Returns a new [ContributionPaginationAllOf] instance.
  ContributionPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ContributionPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionPaginationAllOf(
      embedded: ContributionCollection.fromJson(json[r'_embedded']),
    );
  }

  ContributionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ContributionPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionPaginationAllOf>[];
    }
    return json
        .map((value) {
          return ContributionPaginationAllOf.fromJson(value);
        })
        .whereType<ContributionPaginationAllOf>()
        .toList();
  }

  static Map<String, ContributionPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionPaginationAllOf?>(
            key, ContributionPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionPaginationAllOf>;
  }

  // maps a json object with a list of ContributionPaginationAllOf-objects as value to a dart map
  static Map<String, List<ContributionPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ContributionPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ContributionPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
