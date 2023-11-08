//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSelfIriTemplate {
  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance.
  BusinessActivityLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSelfIriTemplate(
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

    return other is BusinessActivityLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksSelfIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSelfIriTemplate>[];
    }

    return json.fold(<BusinessActivityLinksSelfIriTemplate>[],
        (List<BusinessActivityLinksSelfIriTemplate> previousValue, element) {
      final BusinessActivityLinksSelfIriTemplate? object =
          BusinessActivityLinksSelfIriTemplate.fromJson(element);
      if (object is BusinessActivityLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksSelfIriTemplate>{},
        (Map<String, BusinessActivityLinksSelfIriTemplate> previousValue,
            element) {
      final BusinessActivityLinksSelfIriTemplate? object =
          BusinessActivityLinksSelfIriTemplate.fromJson(element.value);
      if (object is BusinessActivityLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSelfIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksSelfIriTemplate>>(
          key, BusinessActivityLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'BusinessActivityLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
