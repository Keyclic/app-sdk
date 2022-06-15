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
    return json
        .map((value) {
          return CategoryLinks.fromJson(value);
        })
        .whereType<CategoryLinks>()
        .toList();
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryLinks?>(key, CategoryLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryLinks>;
  }

  // maps a json object with a list of CategoryLinks-objects as value to a dart map
  static Map<String, List<CategoryLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryLinks.listFromJson(entry.value),
    };
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
