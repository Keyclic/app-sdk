//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BusinessActivityPaginationAllOf {
  /// Returns a new [BusinessActivityPaginationAllOf] instance.
  BusinessActivityPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BusinessActivityPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BusinessActivityPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityPaginationAllOf(
      embedded: BusinessActivityCollection.fromJson(json[r'_embedded']),
    );
  }

  BusinessActivityCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityPaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<BusinessActivityPaginationAllOf> listFromJson(
      List<dynamic> json) {
    return <BusinessActivityPaginationAllOf>[
      if (json is List)
        for (dynamic value in json)
          BusinessActivityPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, BusinessActivityPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BusinessActivityPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BusinessActivityPaginationAllOf-objects as value to a dart map
  static Map<String, List<BusinessActivityPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BusinessActivityPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BusinessActivityPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
