//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksSelfIriTemplate {
  /// Returns a new [CategoryLinksSelfIriTemplate] instance.
  CategoryLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [CategoryLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CategoryLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return CategoryLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<CategoryLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, CategoryLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryLinksSelfIriTemplate?>(
            key, CategoryLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryLinksSelfIriTemplate>;
  }

  // maps a json object with a list of CategoryLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CategoryLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
