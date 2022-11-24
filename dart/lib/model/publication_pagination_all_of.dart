//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationPaginationAllOf {
  /// Returns a new [PublicationPaginationAllOf] instance.
  PublicationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PublicationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationPaginationAllOf(
      embedded: PublicationCollection.fromJson(json[r'_embedded']),
    );
  }

  PublicationCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<PublicationPaginationAllOf> listFromJson(List<dynamic> json) {
    return <PublicationPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) PublicationPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, PublicationPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationPaginationAllOf-objects as value to a dart map
  static Map<String, List<PublicationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
