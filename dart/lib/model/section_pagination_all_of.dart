//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionPaginationAllOf {
  /// Returns a new [SectionPaginationAllOf] instance.
  SectionPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [SectionPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionPaginationAllOf(
      embedded: SectionCollection.fromJson(json[r'_embedded']),
    );
  }

  SectionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<SectionPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionPaginationAllOf>[];
    }
    return json
        .map((value) {
          return SectionPaginationAllOf.fromJson(value);
        })
        .whereType<SectionPaginationAllOf>()
        .toList();
  }

  static Map<String, SectionPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SectionPaginationAllOf?>(
            key, SectionPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SectionPaginationAllOf>;
  }

  // maps a json object with a list of SectionPaginationAllOf-objects as value to a dart map
  static Map<String, List<SectionPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SectionPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SectionPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SectionPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
