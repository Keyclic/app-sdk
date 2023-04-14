//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksSelfIriTemplate {
  /// Returns a new [OrganizationLinksSelfIriTemplate] instance.
  OrganizationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksSelfIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
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

    return other is OrganizationLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksSelfIriTemplate>[];
    }

    return json.fold(<OrganizationLinksSelfIriTemplate>[],
        (List<OrganizationLinksSelfIriTemplate> previousValue, element) {
      final OrganizationLinksSelfIriTemplate? object =
          OrganizationLinksSelfIriTemplate.fromJson(element);
      if (object is OrganizationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, OrganizationLinksSelfIriTemplate>{},
        (Map<String, OrganizationLinksSelfIriTemplate> previousValue, element) {
      final OrganizationLinksSelfIriTemplate? object =
          OrganizationLinksSelfIriTemplate.fromJson(element.value);
      if (object is OrganizationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksSelfIriTemplate>>(
          key, OrganizationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
