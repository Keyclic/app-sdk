//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinks {
  /// Returns a new [CategoryLinks] instance.
  CategoryLinks({
    this.organization,
    this.self,
  });

  /// Returns a new [CategoryLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinks(
      organization: CategoryLinksOrganization.fromJson(json[r'organization']),
      self: CategoryLinksSelf.fromJson(json[r'self']),
    );
  }

  CategoryLinksOrganization? organization;

  CategoryLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinks &&
        other.organization == organization &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<CategoryLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinks>[];
    }

    return json.fold(<CategoryLinks>[],
        (List<CategoryLinks> previousValue, element) {
      final CategoryLinks? object = CategoryLinks.fromJson(element);
      if (object is CategoryLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinks>{};
    }

    return json.entries.fold(<String, CategoryLinks>{},
        (Map<String, CategoryLinks> previousValue, element) {
      final CategoryLinks? object = CategoryLinks.fromJson(element.value);
      if (object is CategoryLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinks-objects as value to a dart map
  static Map<String, List<CategoryLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinks>>(
          key, CategoryLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryLinks[organization=$organization, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
      if (self != null) r'self': self,
    };
  }
}
