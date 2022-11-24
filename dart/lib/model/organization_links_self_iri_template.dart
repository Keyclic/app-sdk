//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksSelfIriTemplate {
  /// Returns a new [OrganizationLinksSelfIriTemplate] instance.
  OrganizationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksSelfIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <OrganizationLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OrganizationLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
