//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksLogo {
  /// Returns a new [OrganizationLinksLogo] instance.
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksLogo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksLogo? fromJson(Map<String, dynamic>? json) {
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
  String? href;

  OrganizationLinksLogoIriTemplate? iriTemplate;

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

  static List<OrganizationLinksLogo> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksLogo>[];
    }
    return json
        .map((value) {
          return OrganizationLinksLogo.fromJson(value);
        })
        .whereType<OrganizationLinksLogo>()
        .toList();
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksLogo>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksLogo?>(
            key, OrganizationLinksLogo.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksLogo>;
  }

  // maps a json object with a list of OrganizationLinksLogo-objects as value to a dart map
  static Map<String, List<OrganizationLinksLogo>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksLogo>>{
      if (json is Map)
        for (final entry in json!.entries)
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
