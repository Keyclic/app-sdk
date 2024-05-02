//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryJsonhalReadLinks {
  /// Returns a new [CategoryJsonhalReadLinks] instance.
  CategoryJsonhalReadLinks({
    this.self,
    this.type,
  });

  /// Returns a new [CategoryJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'self']),
      type: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'type']),
    );
  }

  GetPlaceCollection200ResponseLinksFirst? self;

  GetPlaceCollection200ResponseLinksFirst? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryJsonhalReadLinks &&
        other.self == self &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) + (type == null ? 0 : type.hashCode);

  static List<CategoryJsonhalReadLinks> listFromJson(List<dynamic>? json) {
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
  String toString() => 'CategoryJsonhalReadLinks[self=$self, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
