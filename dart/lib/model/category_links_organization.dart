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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : CategoryLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<CategoryLinksOrganization> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksOrganization>[];
    }

    return json.fold(<CategoryLinksOrganization>[],
        (List<CategoryLinksOrganization> previousValue, element) {
      final CategoryLinksOrganization? object =
          CategoryLinksOrganization.fromJson(element);
      if (object is CategoryLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganization>{};
    }

    return json.entries.fold(<String, CategoryLinksOrganization>{},
        (Map<String, CategoryLinksOrganization> previousValue, element) {
      final CategoryLinksOrganization? object =
          CategoryLinksOrganization.fromJson(element.value);
      if (object is CategoryLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksOrganization-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksOrganization>>(
          key, CategoryLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
