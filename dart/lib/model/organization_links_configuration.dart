//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksConfiguration {
  /// Returns a new [OrganizationLinksConfiguration] instance.
  OrganizationLinksConfiguration({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksConfiguration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksConfiguration(
      href: json[r'href'],
      iriTemplate: OrganizationLinksConfigurationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the configuration associated to the given organization.
  String href;

  OrganizationLinksConfigurationIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksConfiguration &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksConfiguration> listFromJson(List<dynamic> json) {
    return <OrganizationLinksConfiguration>[
      if (json is List)
        for (dynamic value in json)
          OrganizationLinksConfiguration.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksConfiguration> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksConfiguration>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksConfiguration.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksConfiguration-objects as value to a dart map
  static Map<String, List<OrganizationLinksConfiguration>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinksConfiguration>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksConfiguration.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksConfiguration[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
