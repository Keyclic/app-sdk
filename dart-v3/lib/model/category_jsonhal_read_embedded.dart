//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryJsonhalReadEmbedded {
  /// Returns a new [CategoryJsonhalReadEmbedded] instance.
  CategoryJsonhalReadEmbedded({
    this.type,
    this.children,
  });

  /// Returns a new [CategoryJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryJsonhalReadEmbedded(
      type: CategoryTypeJsonhalRead.fromJson(json[r'type']),
      children: CategoryJsonhalRead.listFromJson(json[r'children']),
    );
  }

  CategoryTypeJsonhalRead? type;

  final List<CategoryJsonhalRead>? children;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryJsonhalReadEmbedded &&
        other.type == type &&
        DeepCollectionEquality.unordered().equals(children, other.children);
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (children == null ? 0 : children.hashCode);

  static List<CategoryJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryJsonhalReadEmbedded>[];
    }

    return json.fold(<CategoryJsonhalReadEmbedded>[],
        (List<CategoryJsonhalReadEmbedded> previousValue, element) {
      final CategoryJsonhalReadEmbedded? object =
          CategoryJsonhalReadEmbedded.fromJson(element);
      if (object is CategoryJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, CategoryJsonhalReadEmbedded>{},
        (Map<String, CategoryJsonhalReadEmbedded> previousValue, element) {
      final CategoryJsonhalReadEmbedded? object =
          CategoryJsonhalReadEmbedded.fromJson(element.value);
      if (object is CategoryJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<CategoryJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryJsonhalReadEmbedded>>(
          key, CategoryJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryJsonhalReadEmbedded[type=$type, children=$children]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'children')) r'children': children,
    };
  }
}
