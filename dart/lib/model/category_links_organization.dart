//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksOrganization {
  /// Returns a new [CategoryLinksOrganization] instance.
  CategoryLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CategoryLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          CategoryLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given category.
  String? href;

  CategoryLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CategoryLinksOrganization> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksOrganization>[];
    }
    return json
        .map((value) {
          return CategoryLinksOrganization.fromJson(value);
        })
        .whereType<CategoryLinksOrganization>()
        .toList();
  }

  static Map<String, CategoryLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganization>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryLinksOrganization?>(
            key, CategoryLinksOrganization.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryLinksOrganization>;
  }

  // maps a json object with a list of CategoryLinksOrganization-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryLinksOrganization>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CategoryLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
