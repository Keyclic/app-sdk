//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksApplicationIriTemplate {
  /// Returns a new [OrganizationLinksApplicationIriTemplate] instance.
  OrganizationLinksApplicationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksApplicationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksApplicationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksApplicationIriTemplate(
      mapping:
          ApplicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplicationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksApplicationIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OrganizationLinksApplicationIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OrganizationLinksApplicationIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksApplicationIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OrganizationLinksApplicationIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksApplicationIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksApplicationIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<OrganizationLinksApplicationIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OrganizationLinksApplicationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksApplicationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
