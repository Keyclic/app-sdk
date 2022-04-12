//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPaginationAllOf {
  /// Returns a new [MemberPaginationAllOf] instance.
  MemberPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [MemberPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberPaginationAllOf(
      embedded: MemberCollection.fromJson(json[r'_embedded']),
    );
  }

  MemberCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<MemberPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberPaginationAllOf>[];
    }
    return json
        .map((value) {
          return MemberPaginationAllOf.fromJson(value);
        })
        .whereType<MemberPaginationAllOf>()
        .toList();
  }

  static Map<String, MemberPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberPaginationAllOf?>(
            key, MemberPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberPaginationAllOf>;
  }

  // maps a json object with a list of MemberPaginationAllOf-objects as value to a dart map
  static Map<String, List<MemberPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
