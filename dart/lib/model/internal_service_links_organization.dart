//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceLinksOrganization {
  /// Returns a new [InternalServiceLinksOrganization] instance.
  InternalServiceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InternalServiceLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksOrganization(
      href: json[r'href'],
      iriTemplate: InternalServiceLinksOrganizationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given internalservice.
  String href;

  InternalServiceLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InternalServiceLinksOrganization> listFromJson(
      List<dynamic> json) {
    return <InternalServiceLinksOrganization>[
      if (json is List)
        for (dynamic value in json)
          InternalServiceLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, InternalServiceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceLinksOrganization-objects as value to a dart map
  static Map<String, List<InternalServiceLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
