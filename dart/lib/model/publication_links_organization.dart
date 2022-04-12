//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksOrganization {
  /// Returns a new [PublicationLinksOrganization] instance.
  PublicationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksOrganization(
      href: json[r'href'],
      iriTemplate: PublicationLinksOrganizationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given publication.
  String? href;

  PublicationLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksOrganization> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksOrganization>[];
    }
    return json
        .map((value) {
          return PublicationLinksOrganization.fromJson(value);
        })
        .whereType<PublicationLinksOrganization>()
        .toList();
  }

  static Map<String, PublicationLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksOrganization>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksOrganization?>(
            key, PublicationLinksOrganization.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksOrganization>;
  }

  // maps a json object with a list of PublicationLinksOrganization-objects as value to a dart map
  static Map<String, List<PublicationLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinksOrganization>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
