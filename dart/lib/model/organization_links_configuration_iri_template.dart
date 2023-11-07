//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksConfigurationIriTemplate {
  /// Returns a new [OrganizationLinksConfigurationIriTemplate] instance.
  OrganizationLinksConfigurationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksConfigurationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksConfigurationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksConfigurationIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : CategoryLinksOrganizationIriTemplateMapping.fromJson(
              json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksConfigurationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksConfigurationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksConfigurationIriTemplate>[];
    }

    return json.fold(<OrganizationLinksConfigurationIriTemplate>[],
        (List<OrganizationLinksConfigurationIriTemplate> previousValue,
            element) {
      final OrganizationLinksConfigurationIriTemplate? object =
          OrganizationLinksConfigurationIriTemplate.fromJson(element);
      if (object is OrganizationLinksConfigurationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksConfigurationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksConfigurationIriTemplate>{};
    }

    return json.entries.fold(
        <String, OrganizationLinksConfigurationIriTemplate>{},
        (Map<String, OrganizationLinksConfigurationIriTemplate> previousValue,
            element) {
      final OrganizationLinksConfigurationIriTemplate? object =
          OrganizationLinksConfigurationIriTemplate.fromJson(element.value);
      if (object is OrganizationLinksConfigurationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksConfigurationIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksConfigurationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksConfigurationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksConfigurationIriTemplate>>(
          key, OrganizationLinksConfigurationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksConfigurationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
