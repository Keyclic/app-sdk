//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryJsonhalReadLinks {
  /// Returns a new [CategoryJsonhalReadLinks] instance.
  CategoryJsonhalReadLinks({
    required this.self,
    required this.organization,
    this.children,
  });

  /// Returns a new [CategoryJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self'])!,
      organization: GetPlaceCollection200ResponseLinksSelf.fromJson(
          json[r'organization'])!,
      children: GetPlaceCollection200ResponseLinksSelf.listFromJson(
          json[r'children']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf self;

  GetPlaceCollection200ResponseLinksSelf organization;

  List<GetPlaceCollection200ResponseLinksSelf>? children;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryJsonhalReadLinks &&
        other.self == self &&
        other.organization == organization &&
        DeepCollectionEquality.unordered().equals(children, other.children);
  }

  @override
  int get hashCode =>
      self.hashCode +
      organization.hashCode +
      (children == null ? 0 : children.hashCode);

  static List<CategoryJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryJsonhalReadLinks>[];
    }

    return json.fold(<CategoryJsonhalReadLinks>[],
        (List<CategoryJsonhalReadLinks> previousValue, element) {
      final CategoryJsonhalReadLinks? object =
          CategoryJsonhalReadLinks.fromJson(element);
      if (object is CategoryJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, CategoryJsonhalReadLinks>{},
        (Map<String, CategoryJsonhalReadLinks> previousValue, element) {
      final CategoryJsonhalReadLinks? object =
          CategoryJsonhalReadLinks.fromJson(element.value);
      if (object is CategoryJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<CategoryJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryJsonhalReadLinks>>(
          key, CategoryJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryJsonhalReadLinks[self=$self, organization=$organization, children=$children]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'self': self.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^self\.'))) {
          previousValue.add(element.split(RegExp(r'^self\.')).last);
        }

        return previousValue;
      })),
      r'organization': organization.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^organization\.'))) {
          previousValue.add(element.split(RegExp(r'^organization\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'children')) r'children': children,
    };
  }
}
