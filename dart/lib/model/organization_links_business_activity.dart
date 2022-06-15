//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksBusinessActivity {
  /// Returns a new [OrganizationLinksBusinessActivity] instance.
  OrganizationLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksBusinessActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksBusinessActivity? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksBusinessActivity(
      href: json[r'href'],
      iriTemplate: OrganizationLinksBusinessActivityIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the businessActivity associated to the given organization.
  String? href;

  OrganizationLinksBusinessActivityIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivity &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksBusinessActivity> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksBusinessActivity>[];
    }
    return json
        .map((value) {
          return OrganizationLinksBusinessActivity.fromJson(value);
        })
        .whereType<OrganizationLinksBusinessActivity>()
        .toList();
  }

  static Map<String, OrganizationLinksBusinessActivity> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksBusinessActivity>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationLinksBusinessActivity?>(
            key, OrganizationLinksBusinessActivity.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationLinksBusinessActivity>;
  }

  // maps a json object with a list of OrganizationLinksBusinessActivity-objects as value to a dart map
  static Map<String, List<OrganizationLinksBusinessActivity>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationLinksBusinessActivity>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OrganizationLinksBusinessActivity.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
