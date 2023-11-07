//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksCategoryIriTemplate {
  /// Returns a new [RuleLinksCategoryIriTemplate] instance.
  RuleLinksCategoryIriTemplate({
    this.mapping,
  });

  /// Returns a new [RuleLinksCategoryIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksCategoryIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksCategoryIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksCategoryIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<RuleLinksCategoryIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <RuleLinksCategoryIriTemplate>[];
    }

    return json.fold(<RuleLinksCategoryIriTemplate>[],
        (List<RuleLinksCategoryIriTemplate> previousValue, element) {
      final RuleLinksCategoryIriTemplate? object =
          RuleLinksCategoryIriTemplate.fromJson(element);
      if (object is RuleLinksCategoryIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksCategoryIriTemplate>{};
    }

    return json.entries.fold(<String, RuleLinksCategoryIriTemplate>{},
        (Map<String, RuleLinksCategoryIriTemplate> previousValue, element) {
      final RuleLinksCategoryIriTemplate? object =
          RuleLinksCategoryIriTemplate.fromJson(element.value);
      if (object is RuleLinksCategoryIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksCategoryIriTemplate-objects as value to a dart map
  static Map<String, List<RuleLinksCategoryIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksCategoryIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksCategoryIriTemplate>>(
          key, RuleLinksCategoryIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksCategoryIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
