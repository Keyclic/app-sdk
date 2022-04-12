//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryLinksSelf {
  /// Returns a new [CategoryLinksSelf] instance.
  CategoryLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CategoryLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelf(
      href: json[r'href'],
      iriTemplate: CategoryLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given category.
  String href;

  CategoryLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CategoryLinksSelf> listFromJson(List<dynamic> json) {
    return <CategoryLinksSelf>[
      if (json is List)
        for (dynamic value in json) CategoryLinksSelf.fromJson(value),
    ];
  }

  static Map<String, CategoryLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, CategoryLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryLinksSelf-objects as value to a dart map
  static Map<String, List<CategoryLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CategoryLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CategoryLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
