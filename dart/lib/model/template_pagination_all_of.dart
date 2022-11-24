//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class TemplatePaginationAllOf {
  /// Returns a new [TemplatePaginationAllOf] instance.
  TemplatePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [TemplatePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory TemplatePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplatePaginationAllOf(
      embedded: TemplateCollection.fromJson(json[r'_embedded']),
    );
  }

  TemplateCollection embedded;

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

  static List<TemplatePaginationAllOf> listFromJson(List<dynamic> json) {
    return <TemplatePaginationAllOf>[
      if (json is List)
        for (dynamic value in json) TemplatePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, TemplatePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, TemplatePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: TemplatePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of TemplatePaginationAllOf-objects as value to a dart map
  static Map<String, List<TemplatePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<TemplatePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
