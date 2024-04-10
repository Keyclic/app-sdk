//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinks {
  /// Returns a new [CategoryLinks] instance.
  CategoryLinks({
    this.organization,
    this.self,
    this.type,
  });

  /// Returns a new [CategoryLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryLinks(
      organization: CategoryLinksOrganization.fromJson(json[r'organization']),
      self: CategoryLinksSelf.fromJson(json[r'self']),
      type: CategoryLinksType.fromJson(json[r'type']),
    );
  }

  CategoryLinksOrganization? organization;

  CategoryLinksSelf? self;

  CategoryLinksType? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinks &&
        other.organization == organization &&
        other.self == self &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (type == null ? 0 : type.hashCode);

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
  String toString() =>
      'CategoryLinks[organization=$organization, self=$self, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
