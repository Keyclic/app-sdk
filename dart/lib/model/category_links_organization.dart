//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryLinksOrganization {
  /// Returns a new [CategoryLinksOrganization] instance.
  CategoryLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CategoryLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryLinksOrganization.fromJson(Map<String, dynamic> json) {
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
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

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

  static List<CategoryLinksOrganization> listFromJson(List<dynamic> json) {
    return <CategoryLinksOrganization>[
      if (json is List)
        for (dynamic value in json) CategoryLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, CategoryLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, CategoryLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryLinksOrganization-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CategoryLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
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
