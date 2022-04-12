//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPaginationAllOf {
  /// Returns a new [OrganizationPaginationAllOf] instance.
  OrganizationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OrganizationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPaginationAllOf(
      embedded: OrganizationCollection.fromJson(json[r'_embedded']),
    );
  }

  OrganizationCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OrganizationPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPaginationAllOf>[];
    }
    return json
        .map((value) {
          return OrganizationPaginationAllOf.fromJson(value);
        })
        .whereType<OrganizationPaginationAllOf>()
        .toList();
  }

  static Map<String, OrganizationPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationPaginationAllOf?>(
            key, OrganizationPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationPaginationAllOf>;
  }

  // maps a json object with a list of OrganizationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OrganizationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
