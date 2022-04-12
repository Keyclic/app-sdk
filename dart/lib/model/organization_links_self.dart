//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksSelf {
  /// Returns a new [OrganizationLinksSelf] instance.
  OrganizationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given organization.
  String href;

  OrganizationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksSelf> listFromJson(List<dynamic> json) {
    return <OrganizationLinksSelf>[
      if (json is List)
        for (dynamic value in json) OrganizationLinksSelf.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksSelf-objects as value to a dart map
  static Map<String, List<OrganizationLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
