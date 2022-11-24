//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksLogo {
  /// Returns a new [OrganizationLinksLogo] instance.
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksLogo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksLogo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksLogo(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksLogoIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the logo associated to the given organization.
  String href;

  OrganizationLinksLogoIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksLogo &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksLogo> listFromJson(List<dynamic> json) {
    return <OrganizationLinksLogo>[
      if (json is List)
        for (dynamic value in json) OrganizationLinksLogo.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksLogo>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksLogo.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksLogo-objects as value to a dart map
  static Map<String, List<OrganizationLinksLogo>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinksLogo>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksLogo.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksLogo[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
