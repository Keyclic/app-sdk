//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplatePaginationAllOf {
  /// Returns a new [TemplatePaginationAllOf] instance.
  TemplatePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [TemplatePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplatePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemplatePaginationAllOf(
      embedded: TemplateCollection.fromJson(json[r'_embedded']),
    );
  }

  TemplateCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplatePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<TemplatePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TemplatePaginationAllOf>[];
    }
    return json
        .map((value) {
          return TemplatePaginationAllOf.fromJson(value);
        })
        .whereType<TemplatePaginationAllOf>()
        .toList();
  }

  static Map<String, TemplatePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplatePaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, TemplatePaginationAllOf?>(
            key, TemplatePaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, TemplatePaginationAllOf>;
  }

  // maps a json object with a list of TemplatePaginationAllOf-objects as value to a dart map
  static Map<String, List<TemplatePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<TemplatePaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: TemplatePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'TemplatePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
