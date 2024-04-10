//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksTypeIriTemplate {
  /// Returns a new [CategoryLinksTypeIriTemplate] instance.
  CategoryLinksTypeIriTemplate({
    this.mapping,
  });

  /// Returns a new [CategoryLinksTypeIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksTypeIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryLinksTypeIriTemplate(
      mapping:
          AssignmentLinksContractIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksContractIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksTypeIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CategoryLinksTypeIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksTypeIriTemplate>[];
    }

    return json.fold(<CategoryLinksTypeIriTemplate>[],
        (List<CategoryLinksTypeIriTemplate> previousValue, element) {
      final CategoryLinksTypeIriTemplate? object =
          CategoryLinksTypeIriTemplate.fromJson(element);
      if (object is CategoryLinksTypeIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksTypeIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksTypeIriTemplate>{};
    }

    return json.entries.fold(<String, CategoryLinksTypeIriTemplate>{},
        (Map<String, CategoryLinksTypeIriTemplate> previousValue, element) {
      final CategoryLinksTypeIriTemplate? object =
          CategoryLinksTypeIriTemplate.fromJson(element.value);
      if (object is CategoryLinksTypeIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksTypeIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksTypeIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksTypeIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksTypeIriTemplate>>(
          key, CategoryLinksTypeIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryLinksTypeIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
