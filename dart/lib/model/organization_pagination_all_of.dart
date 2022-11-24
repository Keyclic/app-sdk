//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationPaginationAllOf {
  /// Returns a new [OrganizationPaginationAllOf] instance.
  OrganizationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OrganizationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPaginationAllOf(
      embedded: OrganizationCollection.fromJson(json[r'_embedded']),
    );
  }

  OrganizationCollection embedded;

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

  static List<OrganizationPaginationAllOf> listFromJson(List<dynamic> json) {
    return <OrganizationPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) OrganizationPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, OrganizationPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OrganizationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
