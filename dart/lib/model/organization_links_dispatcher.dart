//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksDispatcher {
  /// Returns a new [OrganizationLinksDispatcher] instance.
  OrganizationLinksDispatcher({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksDispatcher] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksDispatcher.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcher(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksDispatcherIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the dispatcher associated to the given organization.
  String href;

  OrganizationLinksDispatcherIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcher &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksDispatcher> listFromJson(List<dynamic> json) {
    return <OrganizationLinksDispatcher>[
      if (json is List)
        for (dynamic value in json) OrganizationLinksDispatcher.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksDispatcher> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksDispatcher>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksDispatcher.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksDispatcher-objects as value to a dart map
  static Map<String, List<OrganizationLinksDispatcher>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinksDispatcher>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksDispatcher.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksDispatcher[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
