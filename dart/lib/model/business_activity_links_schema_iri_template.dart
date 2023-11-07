//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSchemaIriTemplate {
  /// Returns a new [BusinessActivityLinksSchemaIriTemplate] instance.
  BusinessActivityLinksSchemaIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksSchemaIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSchemaIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSchemaIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : BusinessActivityLinksImageIriTemplateMapping.fromJson(
              json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSchemaIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksSchemaIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSchemaIriTemplate>[];
    }

    return json.fold(<BusinessActivityLinksSchemaIriTemplate>[],
        (List<BusinessActivityLinksSchemaIriTemplate> previousValue, element) {
      final BusinessActivityLinksSchemaIriTemplate? object =
          BusinessActivityLinksSchemaIriTemplate.fromJson(element);
      if (object is BusinessActivityLinksSchemaIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksSchemaIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSchemaIriTemplate>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksSchemaIriTemplate>{},
        (Map<String, BusinessActivityLinksSchemaIriTemplate> previousValue,
            element) {
      final BusinessActivityLinksSchemaIriTemplate? object =
          BusinessActivityLinksSchemaIriTemplate.fromJson(element.value);
      if (object is BusinessActivityLinksSchemaIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksSchemaIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSchemaIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksSchemaIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksSchemaIriTemplate>>(
          key, BusinessActivityLinksSchemaIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksSchemaIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
